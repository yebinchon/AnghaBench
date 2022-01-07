; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_ops.c_ccw_device_set_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_ops.c_ccw_device_set_options.c"
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
define dso_local i32 @ccw_device_set_options(%struct.ccw_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i64, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CCWDEV_EARLY_NOTIFICATION, align 8
  %8 = and i64 %6, %7
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @CCWDEV_REPORT_ALL, align 8
  %13 = and i64 %11, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %10, %2
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @CCWDEV_EARLY_NOTIFICATION, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %22 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %20, %15
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @CCWDEV_REPORT_ALL, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %35 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33, %20, %10
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %105

44:                                               ; preds = %33, %28
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @CCWDEV_EARLY_NOTIFICATION, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %51 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %49
  store i32 %56, i32* %54, align 4
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @CCWDEV_REPORT_ALL, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %63 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %61
  store i32 %68, i32* %66, align 4
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @CCWDEV_DO_PATHGROUP, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %75 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %73
  store i32 %80, i32* %78, align 4
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* @CCWDEV_ALLOW_FORCE, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %87 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %85
  store i32 %92, i32* %90, align 4
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @CCWDEV_DO_MULTIPATH, align 8
  %95 = and i64 %93, %94
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %99 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %97
  store i32 %104, i32* %102, align 4
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %44, %41
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
