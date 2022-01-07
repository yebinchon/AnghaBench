; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_main.c_have_wrcomb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_main.c_have_wrcomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }
%struct.pci_dev = type { i64, i64 }

@PCI_CLASS_BRIDGE_HOST = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_SERVERWORKS = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_SERVERWORKS_LE = common dso_local global i64 0, align 8
@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"mtrr: Serverworks LE rev < 6 detected. Write-combining disabled.\0A\00", align 1
@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_82451NX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"mtrr: Intel 450NX MMC detected. Write-combining disabled.\0A\00", align 1
@mtrr_if = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @have_wrcomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @have_wrcomb() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @PCI_CLASS_BRIDGE_HOST, align 4
  %5 = shl i32 %4, 8
  %6 = call %struct.pci_dev* @pci_get_class(i32 %5, i32* null)
  store %struct.pci_dev* %6, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = icmp ne %struct.pci_dev* %7, null
  br i1 %8, label %9, label %51

9:                                                ; preds = %0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCI_VENDOR_ID_SERVERWORKS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCI_DEVICE_ID_SERVERWORKS_LE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %24 = call i32 @pci_read_config_byte(%struct.pci_dev* %22, i32 %23, i32* %3)
  %25 = load i32, i32* %3, align 4
  %26 = icmp sle i32 %25, 5
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = call i32 @pr_info(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = call i32 @pci_dev_put(%struct.pci_dev* %29)
  store i32 0, i32* %1, align 4
  br label %64

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %15, %9
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PCI_DEVICE_ID_INTEL_82451NX, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = call i32 @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = call i32 @pci_dev_put(%struct.pci_dev* %46)
  store i32 0, i32* %1, align 4
  br label %64

48:                                               ; preds = %38, %32
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = call i32 @pci_dev_put(%struct.pci_dev* %49)
  br label %51

51:                                               ; preds = %48, %0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtrr_if, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (...)*, i32 (...)** %53, align 8
  %55 = icmp ne i32 (...)* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtrr_if, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (...)*, i32 (...)** %58, align 8
  %60 = call i32 (...) %59()
  br label %62

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %56
  %63 = phi i32 [ %60, %56 ], [ 0, %61 ]
  store i32 %63, i32* %1, align 4
  br label %64

64:                                               ; preds = %62, %44, %27
  %65 = load i32, i32* %1, align 4
  ret i32 %65
}

declare dso_local %struct.pci_dev* @pci_get_class(i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
