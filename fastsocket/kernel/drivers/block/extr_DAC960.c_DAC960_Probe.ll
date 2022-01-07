; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_Probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_Probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.TYPE_7__ = type { i32* }

@DAC960_ControllerCount = common dso_local global i64 0, align 8
@DAC960_MaxControllers = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"More than %d DAC960 Controllers detected - ignoring from Controller at\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DAC960_MaxLogicalDrives = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @DAC960_Probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DAC960_Probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i64, i64* @DAC960_ControllerCount, align 8
  %9 = load i64, i64* @DAC960_MaxControllers, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i64, i64* @DAC960_MaxControllers, align 8
  %13 = call i32 @DAC960_Error(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32* null, i64 %12)
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %65

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %19 = call %struct.TYPE_7__* @DAC960_DetectController(%struct.pci_dev* %17, %struct.pci_device_id* %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %7, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %65

25:                                               ; preds = %16
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = call i32 @DAC960_InitializeController(%struct.TYPE_7__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = call i32 @DAC960_FinalizeController(%struct.TYPE_7__* %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %65

34:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %59, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @DAC960_MaxLogicalDrives, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @disk_size(%struct.TYPE_7__* %47, i32 %48)
  %50 = call i32 @set_capacity(i32 %46, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @add_disk(i32 %57)
  br label %59

59:                                               ; preds = %39
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %35

62:                                               ; preds = %35
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = call i32 @DAC960_CreateProcEntries(%struct.TYPE_7__* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %29, %22, %11
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @DAC960_Error(i8*, i32*, i64) #1

declare dso_local %struct.TYPE_7__* @DAC960_DetectController(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i32 @DAC960_InitializeController(%struct.TYPE_7__*) #1

declare dso_local i32 @DAC960_FinalizeController(%struct.TYPE_7__*) #1

declare dso_local i32 @set_capacity(i32, i32) #1

declare dso_local i32 @disk_size(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @add_disk(i32) #1

declare dso_local i32 @DAC960_CreateProcEntries(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
