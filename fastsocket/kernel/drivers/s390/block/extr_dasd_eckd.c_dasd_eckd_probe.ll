; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }

@CCWDEV_ALLOW_FORCE = common dso_local global i32 0, align 4
@CCWDEV_DO_PATHGROUP = common dso_local global i32 0, align 4
@CCWDEV_DO_MULTIPATH = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"dasd_eckd_probe: could not set ccw-device options\00", align 1
@dasd_eckd_discipline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @dasd_eckd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_probe(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %6 = load i32, i32* @CCWDEV_ALLOW_FORCE, align 4
  %7 = load i32, i32* @CCWDEV_DO_PATHGROUP, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @CCWDEV_DO_MULTIPATH, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @ccw_device_set_options(%struct.ccw_device* %5, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @DBF_WARNING, align 4
  %16 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %17 = call i32 @DBF_EVENT_DEVID(i32 %15, %struct.ccw_device* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %21 = call i32 @dasd_generic_probe(%struct.ccw_device* %20, i32* @dasd_eckd_discipline)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @ccw_device_set_options(%struct.ccw_device*, i32) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, %struct.ccw_device*, i8*, i8*) #1

declare dso_local i32 @dasd_generic_probe(%struct.ccw_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
