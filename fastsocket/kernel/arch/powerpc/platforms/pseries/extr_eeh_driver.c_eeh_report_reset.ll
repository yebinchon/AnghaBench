; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh_driver.c_eeh_report_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh_driver.c_eeh_report_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.pci_driver* }
%struct.pci_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.pci_dev*)* }

@pci_channel_io_normal = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NONE = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*)* @eeh_report_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeh_report_reset(%struct.pci_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pci_driver*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 1
  %13 = load %struct.pci_driver*, %struct.pci_driver** %12, align 8
  store %struct.pci_driver* %13, %struct.pci_driver** %8, align 8
  %14 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %15 = icmp ne %struct.pci_driver* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

17:                                               ; preds = %2
  %18 = load i32, i32* @pci_channel_io_normal, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i32 @eeh_enable_irq(%struct.pci_dev* %21)
  %23 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %24 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %29 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %31, align 8
  %33 = icmp ne i32 (%struct.pci_dev*)* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27, %17
  store i32 0, i32* %3, align 4
  br label %68

35:                                               ; preds = %27
  %36 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %37 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %39, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = call i32 %40(%struct.pci_dev* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PCI_ERS_RESULT_NONE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %35
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47, %35
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %60, %55
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %34, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @eeh_enable_irq(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
