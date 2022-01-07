; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_InitializeController.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_InitializeController.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@DAC960_MonitoringTimerInterval = common dso_local global i64 0, align 8
@DAC960_MonitoringTimerFunction = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @DAC960_InitializeController to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DAC960_InitializeController(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %5 = call i64 @DAC960_ReadControllerConfiguration(%struct.TYPE_11__* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %51

7:                                                ; preds = %1
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = call i64 @DAC960_ReportControllerConfiguration(%struct.TYPE_11__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %7
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = call i64 @DAC960_CreateAuxiliaryStructures(%struct.TYPE_11__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %11
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = call i64 @DAC960_ReadDeviceConfiguration(%struct.TYPE_11__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = call i64 @DAC960_ReportDeviceConfiguration(%struct.TYPE_11__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = call i64 @DAC960_RegisterBlockDevice(%struct.TYPE_11__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = call i32 @init_timer(%struct.TYPE_12__* %29)
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* @DAC960_MonitoringTimerInterval, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  store i64 %33, i64* %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = ptrtoint %struct.TYPE_11__* %37 to i64
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load i32, i32* @DAC960_MonitoringTimerFunction, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = call i32 @add_timer(%struct.TYPE_12__* %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  store i32 1, i32* %2, align 4
  br label %52

51:                                               ; preds = %23, %19, %15, %11, %7, %1
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %27
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @DAC960_ReadControllerConfiguration(%struct.TYPE_11__*) #1

declare dso_local i64 @DAC960_ReportControllerConfiguration(%struct.TYPE_11__*) #1

declare dso_local i64 @DAC960_CreateAuxiliaryStructures(%struct.TYPE_11__*) #1

declare dso_local i64 @DAC960_ReadDeviceConfiguration(%struct.TYPE_11__*) #1

declare dso_local i64 @DAC960_ReportDeviceConfiguration(%struct.TYPE_11__*) #1

declare dso_local i64 @DAC960_RegisterBlockDevice(%struct.TYPE_11__*) #1

declare dso_local i32 @init_timer(%struct.TYPE_12__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
