; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_common.c_sun4v_read_pci_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_common.c_sun4v_read_pci_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, %struct.pci_pbm_info* }
%struct.pci_pbm_info = type { i64 }

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i64*)* @sun4v_read_pci_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4v_read_pci_cfg(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.pci_pbm_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %17 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %18 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 1
  %19 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %18, align 8
  store %struct.pci_pbm_info* %19, %struct.pci_pbm_info** %11, align 8
  %20 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %11, align 8
  %21 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  %23 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %24 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @PCI_SLOT(i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @PCI_FUNC(i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %11, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @config_out_of_range(%struct.pci_pbm_info* %30, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  store i64 -1, i64* %16, align 8
  br label %46

37:                                               ; preds = %5
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @HV_PCI_DEVICE_BUILD(i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @pci_sun4v_config_get(i64 %38, i32 %42, i32 %43, i32 %44)
  store i64 %45, i64* %16, align 8
  br label %46

46:                                               ; preds = %37, %36
  %47 = load i32, i32* %9, align 4
  switch i32 %47, label %60 [
    i32 1, label %48
    i32 2, label %52
    i32 4, label %56
  ]

48:                                               ; preds = %46
  %49 = load i64, i64* %16, align 8
  %50 = and i64 %49, 255
  %51 = load i64*, i64** %10, align 8
  store i64 %50, i64* %51, align 8
  br label %60

52:                                               ; preds = %46
  %53 = load i64, i64* %16, align 8
  %54 = and i64 %53, 65535
  %55 = load i64*, i64** %10, align 8
  store i64 %54, i64* %55, align 8
  br label %60

56:                                               ; preds = %46
  %57 = load i64, i64* %16, align 8
  %58 = and i64 %57, 4294967295
  %59 = load i64*, i64** %10, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %46, %56, %52, %48
  %61 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %61
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i64 @config_out_of_range(%struct.pci_pbm_info*, i32, i32, i32) #1

declare dso_local i64 @pci_sun4v_config_get(i64, i32, i32, i32) #1

declare dso_local i32 @HV_PCI_DEVICE_BUILD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
