; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_msi.c_arch_setup_msi_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_msi.c_arch_setup_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.msi_desc = type { i32 }
%struct.msi_msg = type { i32, i32, i32 }

@IOP13XX_MU_MIMR_PCI = common dso_local global i32 0, align 4
@IOP13XX_MU_MIMR_CORE_SELECT = common dso_local global i32 0, align 4
@iop13xx_msi_chip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_setup_msi_irq(%struct.pci_dev* %0, %struct.msi_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.msi_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msi_msg, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.msi_desc* %1, %struct.msi_desc** %5, align 8
  %9 = call i32 (...) @create_irq()
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.msi_desc*, %struct.msi_desc** %5, align 8
  %17 = call i32 @set_irq_msi(i32 %15, %struct.msi_desc* %16)
  %18 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %8, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* @IOP13XX_MU_MIMR_PCI, align 4
  %20 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %8, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = call i32 (...) @iop13xx_cpu_id()
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @IOP13XX_MU_MIMR_CORE_SELECT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 127
  %27 = or i32 %24, %26
  %28 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %8, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @write_msi_msg(i32 %29, %struct.msi_msg* %8)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @handle_simple_irq, align 4
  %33 = call i32 @set_irq_chip_and_handler(i32 %31, i32* @iop13xx_msi_chip, i32 %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %14, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @create_irq(...) #1

declare dso_local i32 @set_irq_msi(i32, %struct.msi_desc*) #1

declare dso_local i32 @iop13xx_cpu_id(...) #1

declare dso_local i32 @write_msi_msg(i32, %struct.msi_msg*) #1

declare dso_local i32 @set_irq_chip_and_handler(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
