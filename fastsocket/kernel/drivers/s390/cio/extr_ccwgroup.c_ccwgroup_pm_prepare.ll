; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_pm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_pm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ccwgroup_device = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ccwgroup_driver = type { i32 (%struct.ccwgroup_device.0*)* }
%struct.ccwgroup_device.0 = type opaque

@EAGAIN = common dso_local global i32 0, align 4
@CCWGROUP_ONLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ccwgroup_pm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccwgroup_pm_prepare(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ccwgroup_device*, align 8
  %5 = alloca %struct.ccwgroup_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.ccwgroup_device* @to_ccwgroupdev(%struct.device* %6)
  store %struct.ccwgroup_device* %7, %struct.ccwgroup_device** %4, align 8
  %8 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %4, align 8
  %9 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.ccwgroup_driver* @to_ccwgroupdrv(i32 %11)
  store %struct.ccwgroup_driver* %12, %struct.ccwgroup_driver** %5, align 8
  %13 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %4, align 8
  %14 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %13, i32 0, i32 2
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %48

20:                                               ; preds = %1
  %21 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %4, align 8
  %22 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %4, align 8
  %28 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CCWGROUP_ONLINE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20
  store i32 0, i32* %2, align 4
  br label %48

33:                                               ; preds = %26
  %34 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %5, align 8
  %35 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %34, i32 0, i32 0
  %36 = load i32 (%struct.ccwgroup_device.0*)*, i32 (%struct.ccwgroup_device.0*)** %35, align 8
  %37 = icmp ne i32 (%struct.ccwgroup_device.0*)* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %5, align 8
  %40 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %39, i32 0, i32 0
  %41 = load i32 (%struct.ccwgroup_device.0*)*, i32 (%struct.ccwgroup_device.0*)** %40, align 8
  %42 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %4, align 8
  %43 = bitcast %struct.ccwgroup_device* %42 to %struct.ccwgroup_device.0*
  %44 = call i32 %41(%struct.ccwgroup_device.0* %43)
  br label %46

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %38
  %47 = phi i32 [ %44, %38 ], [ 0, %45 ]
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %32, %17
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.ccwgroup_device* @to_ccwgroupdev(%struct.device*) #1

declare dso_local %struct.ccwgroup_driver* @to_ccwgroupdrv(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
