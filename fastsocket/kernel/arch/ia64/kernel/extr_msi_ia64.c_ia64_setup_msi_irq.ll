; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_msi_ia64.c_ia64_setup_msi_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_msi_ia64.c_ia64_setup_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.msi_desc = type { i32 }
%struct.msi_msg = type { i32, i32, i64 }

@cpu_online_map = common dso_local global i32 0, align 4
@MSI_ADDR_HEADER = common dso_local global i32 0, align 4
@MSI_ADDR_DEST_MODE_PHYS = common dso_local global i32 0, align 4
@MSI_ADDR_REDIRECTION_CPU = common dso_local global i32 0, align 4
@MSI_DATA_TRIGGER_EDGE = common dso_local global i32 0, align 4
@MSI_DATA_LEVEL_ASSERT = common dso_local global i32 0, align 4
@MSI_DATA_DELIVERY_FIXED = common dso_local global i32 0, align 4
@ia64_msi_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_setup_msi_irq(%struct.pci_dev* %0, %struct.msi_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.msi_desc*, align 8
  %6 = alloca %struct.msi_msg, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.msi_desc* %1, %struct.msi_desc** %5, align 8
  %11 = call i32 (...) @create_irq()
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %54

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.msi_desc*, %struct.msi_desc** %5, align 8
  %19 = call i32 @set_irq_msi(i32 %17, %struct.msi_desc* %18)
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @irq_to_domain(i32 %21)
  %23 = load i32, i32* @cpu_online_map, align 4
  %24 = call i32 @cpus_and(i32 %20, i32 %22, i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @first_cpu(i32 %25)
  %27 = call i64 @cpu_physical_id(i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @irq_to_vector(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %6, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @MSI_ADDR_HEADER, align 4
  %32 = load i32, i32* @MSI_ADDR_DEST_MODE_PHYS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MSI_ADDR_REDIRECTION_CPU, align 4
  %35 = or i32 %33, %34
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @MSI_ADDR_DEST_ID_CPU(i64 %36)
  %38 = or i32 %35, %37
  %39 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %6, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* @MSI_DATA_TRIGGER_EDGE, align 4
  %41 = load i32, i32* @MSI_DATA_LEVEL_ASSERT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MSI_DATA_DELIVERY_FIXED, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @MSI_DATA_VECTOR(i32 %45)
  %47 = or i32 %44, %46
  %48 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %6, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @write_msi_msg(i32 %49, %struct.msi_msg* %6)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @handle_edge_irq, align 4
  %53 = call i32 @set_irq_chip_and_handler(i32 %51, i32* @ia64_msi_chip, i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %16, %14
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @create_irq(...) #1

declare dso_local i32 @set_irq_msi(i32, %struct.msi_desc*) #1

declare dso_local i32 @cpus_and(i32, i32, i32) #1

declare dso_local i32 @irq_to_domain(i32) #1

declare dso_local i64 @cpu_physical_id(i32) #1

declare dso_local i32 @first_cpu(i32) #1

declare dso_local i32 @irq_to_vector(i32) #1

declare dso_local i32 @MSI_ADDR_DEST_ID_CPU(i64) #1

declare dso_local i32 @MSI_DATA_VECTOR(i32) #1

declare dso_local i32 @write_msi_msg(i32, %struct.msi_msg*) #1

declare dso_local i32 @set_irq_chip_and_handler(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
