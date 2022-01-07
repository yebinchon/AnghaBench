; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_mmconfig_32.c_get_base_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_mmconfig_32.c_get_base_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_mcfg_allocation = type { i32, i32, i32, i32 }

@pci_mmcfg_config_num = common dso_local global i32 0, align 4
@pci_mmcfg_config = common dso_local global %struct.acpi_mcfg_allocation* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @get_base_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_base_addr(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_mcfg_allocation*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %41, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @pci_mmcfg_config_num, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load %struct.acpi_mcfg_allocation*, %struct.acpi_mcfg_allocation** @pci_mmcfg_config, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.acpi_mcfg_allocation, %struct.acpi_mcfg_allocation* %15, i64 %17
  store %struct.acpi_mcfg_allocation* %18, %struct.acpi_mcfg_allocation** %8, align 8
  %19 = load %struct.acpi_mcfg_allocation*, %struct.acpi_mcfg_allocation** %8, align 8
  %20 = getelementptr inbounds %struct.acpi_mcfg_allocation, %struct.acpi_mcfg_allocation* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %14
  %25 = load %struct.acpi_mcfg_allocation*, %struct.acpi_mcfg_allocation** %8, align 8
  %26 = getelementptr inbounds %struct.acpi_mcfg_allocation, %struct.acpi_mcfg_allocation* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.acpi_mcfg_allocation*, %struct.acpi_mcfg_allocation** %8, align 8
  %32 = getelementptr inbounds %struct.acpi_mcfg_allocation, %struct.acpi_mcfg_allocation* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.acpi_mcfg_allocation*, %struct.acpi_mcfg_allocation** %8, align 8
  %38 = getelementptr inbounds %struct.acpi_mcfg_allocation, %struct.acpi_mcfg_allocation* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %4, align 4
  br label %45

40:                                               ; preds = %30, %24, %14
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %10

44:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %36
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
