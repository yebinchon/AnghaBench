; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_snbep_pci2phy_map_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_snbep_pci2phy_map_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_JAKETOWN_UBOX = common dso_local global i32 0, align 4
@pcibus_to_physid = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @snbep_pci2phy_map_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snbep_pci2phy_map_init() #0 {
  %1 = alloca %struct.pci_dev*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* null, %struct.pci_dev** %1, align 8
  br label %6

6:                                                ; preds = %0, %46
  %7 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %8 = load i32, i32* @PCI_DEVICE_ID_INTEL_JAKETOWN_UBOX, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %10 = call %struct.pci_dev* @pci_get_device(i32 %7, i32 %8, %struct.pci_dev* %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %1, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %12 = icmp ne %struct.pci_dev* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  br label %47

14:                                               ; preds = %6
  %15 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %21 = call i32 @pci_read_config_dword(%struct.pci_dev* %20, i32 64, i32* %5)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %24 = call i32 @pci_read_config_dword(%struct.pci_dev* %23, i32 84, i32* %5)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %43, %14
  %26 = load i32, i32* %2, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %2, align 4
  %32 = mul nsw i32 3, %31
  %33 = ashr i32 %30, %32
  %34 = and i32 %33, 7
  %35 = icmp eq i32 %29, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i32, i32* %2, align 4
  %38 = load i32*, i32** @pcibus_to_physid, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %46

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %25

46:                                               ; preds = %36, %25
  br label %6

47:                                               ; preds = %13
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
