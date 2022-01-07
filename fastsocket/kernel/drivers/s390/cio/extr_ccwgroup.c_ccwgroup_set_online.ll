; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_set_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_set_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ccwgroup_driver = type { i32 (%struct.ccwgroup_device.0*)* }
%struct.ccwgroup_device.0 = type opaque

@EAGAIN = common dso_local global i32 0, align 4
@CCWGROUP_ONLINE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccwgroup_set_online(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.ccwgroup_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %6 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %6, i32 0, i32 1
  %8 = call i64 @atomic_cmpxchg(i32* %7, i32 0, i32 1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %60

13:                                               ; preds = %1
  %14 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %15 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CCWGROUP_ONLINE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %55

20:                                               ; preds = %13
  %21 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %22 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %55

29:                                               ; preds = %20
  %30 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %31 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.ccwgroup_driver* @to_ccwgroupdrv(i32 %33)
  store %struct.ccwgroup_driver* %34, %struct.ccwgroup_driver** %4, align 8
  %35 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %4, align 8
  %36 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %35, i32 0, i32 0
  %37 = load i32 (%struct.ccwgroup_device.0*)*, i32 (%struct.ccwgroup_device.0*)** %36, align 8
  %38 = icmp ne i32 (%struct.ccwgroup_device.0*)* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %4, align 8
  %41 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %40, i32 0, i32 0
  %42 = load i32 (%struct.ccwgroup_device.0*)*, i32 (%struct.ccwgroup_device.0*)** %41, align 8
  %43 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %44 = bitcast %struct.ccwgroup_device* %43 to %struct.ccwgroup_device.0*
  %45 = call i32 %42(%struct.ccwgroup_device.0* %44)
  br label %47

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46, %39
  %48 = phi i32 [ %45, %39 ], [ 0, %46 ]
  store i32 %48, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %55

51:                                               ; preds = %47
  %52 = load i64, i64* @CCWGROUP_ONLINE, align 8
  %53 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %54 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %50, %26, %19
  %56 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %57 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %56, i32 0, i32 1
  %58 = call i32 @atomic_set(i32* %57, i32 0)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %10
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local %struct.ccwgroup_driver* @to_ccwgroupdrv(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
