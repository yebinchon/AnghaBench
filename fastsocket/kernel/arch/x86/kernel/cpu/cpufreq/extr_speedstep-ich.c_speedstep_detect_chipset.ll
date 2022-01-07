; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_speedstep-ich.c_speedstep_detect_chipset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_speedstep-ich.c_speedstep_detect_chipset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_82801DB_12 = common dso_local global i32 0, align 4
@PCI_ANY_ID = common dso_local global i32 0, align 4
@speedstep_chipset_dev = common dso_local global i32* null, align 8
@PCI_DEVICE_ID_INTEL_82801CA_12 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_82801BA_10 = common dso_local global i32 0, align 4
@speedstep_detect_chipset.hostbridge = internal global %struct.pci_dev* null, align 8
@PCI_DEVICE_ID_INTEL_82815_MC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"hostbridge does not support speedstep\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @speedstep_detect_chipset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speedstep_detect_chipset() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %3 = load i32, i32* @PCI_DEVICE_ID_INTEL_82801DB_12, align 4
  %4 = load i32, i32* @PCI_ANY_ID, align 4
  %5 = load i32, i32* @PCI_ANY_ID, align 4
  %6 = call i8* @pci_get_subsys(i32 %2, i32 %3, i32 %4, i32 %5, i32* null)
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** @speedstep_chipset_dev, align 8
  %8 = load i32*, i32** @speedstep_chipset_dev, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 4, i32* %1, align 4
  br label %53

11:                                               ; preds = %0
  %12 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %13 = load i32, i32* @PCI_DEVICE_ID_INTEL_82801CA_12, align 4
  %14 = load i32, i32* @PCI_ANY_ID, align 4
  %15 = load i32, i32* @PCI_ANY_ID, align 4
  %16 = call i8* @pci_get_subsys(i32 %12, i32 %13, i32 %14, i32 %15, i32* null)
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** @speedstep_chipset_dev, align 8
  %18 = load i32*, i32** @speedstep_chipset_dev, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 3, i32* %1, align 4
  br label %53

21:                                               ; preds = %11
  %22 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %23 = load i32, i32* @PCI_DEVICE_ID_INTEL_82801BA_10, align 4
  %24 = load i32, i32* @PCI_ANY_ID, align 4
  %25 = load i32, i32* @PCI_ANY_ID, align 4
  %26 = call i8* @pci_get_subsys(i32 %22, i32 %23, i32 %24, i32 %25, i32* null)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** @speedstep_chipset_dev, align 8
  %28 = load i32*, i32** @speedstep_chipset_dev, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %52

30:                                               ; preds = %21
  %31 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %32 = load i32, i32* @PCI_DEVICE_ID_INTEL_82815_MC, align 4
  %33 = load i32, i32* @PCI_ANY_ID, align 4
  %34 = load i32, i32* @PCI_ANY_ID, align 4
  %35 = call i8* @pci_get_subsys(i32 %31, i32 %32, i32 %33, i32 %34, i32* null)
  %36 = bitcast i8* %35 to %struct.pci_dev*
  store %struct.pci_dev* %36, %struct.pci_dev** @speedstep_detect_chipset.hostbridge, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** @speedstep_detect_chipset.hostbridge, align 8
  %38 = icmp ne %struct.pci_dev* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store i32 2, i32* %1, align 4
  br label %53

40:                                               ; preds = %30
  %41 = load %struct.pci_dev*, %struct.pci_dev** @speedstep_detect_chipset.hostbridge, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 5
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = call i32 @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** @speedstep_chipset_dev, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** @speedstep_detect_chipset.hostbridge, align 8
  %48 = call i32 @pci_dev_put(%struct.pci_dev* %47)
  store i32 0, i32* %1, align 4
  br label %53

49:                                               ; preds = %40
  %50 = load %struct.pci_dev*, %struct.pci_dev** @speedstep_detect_chipset.hostbridge, align 8
  %51 = call i32 @pci_dev_put(%struct.pci_dev* %50)
  store i32 2, i32* %1, align 4
  br label %53

52:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %53

53:                                               ; preds = %52, %49, %45, %39, %20, %10
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i8* @pci_get_subsys(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
