; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_generic_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_generic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32, i32* }
%struct.dasd_discipline = type { i32 }

@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"dasd_generic_probe: could not add sysfs entries\00", align 1
@dasd_int_handler = common dso_local global i32 0, align 4
@DASD_FEATURE_INITIAL_ONLINE = common dso_local global i32 0, align 4
@dasd_autodetect = common dso_local global i64 0, align 8
@dasd_generic_auto_online = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_generic_probe(%struct.ccw_device* %0, %struct.dasd_discipline* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca %struct.dasd_discipline*, align 8
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store %struct.dasd_discipline* %1, %struct.dasd_discipline** %5, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %8 = call i32 @dasd_add_sysfs_files(%struct.ccw_device* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @DBF_WARNING, align 4
  %13 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %14 = call i32 @DBF_EVENT_DEVID(i32 %12, %struct.ccw_device* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %18 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %17, i32 0, i32 1
  store i32* @dasd_int_handler, i32** %18, align 8
  %19 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %20 = load i32, i32* @DASD_FEATURE_INITIAL_ONLINE, align 4
  %21 = call i64 @dasd_get_feature(%struct.ccw_device* %19, i32 %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* @dasd_autodetect, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %28 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %27, i32 0, i32 0
  %29 = call i32 @dev_name(i32* %28)
  %30 = call i64 @dasd_busid_known(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26, %16
  %33 = load i32, i32* @dasd_generic_auto_online, align 4
  %34 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %35 = call i32 @async_schedule(i32 %33, %struct.ccw_device* %34)
  br label %36

36:                                               ; preds = %32, %26, %23
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @dasd_add_sysfs_files(%struct.ccw_device*) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, %struct.ccw_device*, i8*, i8*) #1

declare dso_local i64 @dasd_get_feature(%struct.ccw_device*, i32) #1

declare dso_local i64 @dasd_busid_known(i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @async_schedule(i32, %struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
