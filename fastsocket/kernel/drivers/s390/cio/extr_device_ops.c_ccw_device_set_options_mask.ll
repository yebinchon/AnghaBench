; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_ops.c_ccw_device_set_options_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_ops.c_ccw_device_set_options_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@CCWDEV_EARLY_NOTIFICATION = common dso_local global i64 0, align 8
@CCWDEV_REPORT_ALL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CCWDEV_DO_PATHGROUP = common dso_local global i64 0, align 8
@CCWDEV_ALLOW_FORCE = common dso_local global i64 0, align 8
@CCWDEV_DO_MULTIPATH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccw_device_set_options_mask(%struct.ccw_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i64, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CCWDEV_EARLY_NOTIFICATION, align 8
  %8 = and i64 %6, %7
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @CCWDEV_REPORT_ALL, align 8
  %13 = and i64 %11, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %69

18:                                               ; preds = %10, %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @CCWDEV_EARLY_NOTIFICATION, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %25 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @CCWDEV_REPORT_ALL, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %35 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %33, i32* %38, align 4
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @CCWDEV_DO_PATHGROUP, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %45 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %43, i32* %48, align 4
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @CCWDEV_ALLOW_FORCE, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %55 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  store i32 %53, i32* %58, align 4
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @CCWDEV_DO_MULTIPATH, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %65 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  store i32 %63, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %18, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
