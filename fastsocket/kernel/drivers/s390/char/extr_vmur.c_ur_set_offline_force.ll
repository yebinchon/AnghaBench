; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmur.c_ur_set_offline_force.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmur.c_ur_set_offline_force.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.urdev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"ur_set_offline: cdev=%p\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ur_set_offline: BUSY\0A\00", align 1
@vmur_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, i32)* @ur_set_offline_force to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ur_set_offline_force(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.urdev*, align 8
  %7 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %9 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.ccw_device* %8)
  %10 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %11 = call %struct.urdev* @urdev_get_from_cdev(%struct.ccw_device* %10)
  store %struct.urdev* %11, %struct.urdev** %6, align 8
  %12 = load %struct.urdev*, %struct.urdev** %6, align 8
  %13 = icmp ne %struct.urdev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  %18 = load %struct.urdev*, %struct.urdev** %6, align 8
  %19 = getelementptr inbounds %struct.urdev, %struct.urdev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %51

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load %struct.urdev*, %struct.urdev** %6, align 8
  %30 = getelementptr inbounds %struct.urdev, %struct.urdev* %29, i32 0, i32 1
  %31 = call i32 @atomic_read(i32* %30)
  %32 = icmp sgt i32 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %51

37:                                               ; preds = %28, %25
  %38 = load i32, i32* @vmur_class, align 4
  %39 = load %struct.urdev*, %struct.urdev** %6, align 8
  %40 = getelementptr inbounds %struct.urdev, %struct.urdev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_destroy(i32 %38, i32 %43)
  %45 = load %struct.urdev*, %struct.urdev** %6, align 8
  %46 = getelementptr inbounds %struct.urdev, %struct.urdev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = call i32 @cdev_del(%struct.TYPE_2__* %47)
  %49 = load %struct.urdev*, %struct.urdev** %6, align 8
  %50 = getelementptr inbounds %struct.urdev, %struct.urdev* %49, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %50, align 8
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %37, %33, %22
  %52 = load %struct.urdev*, %struct.urdev** %6, align 8
  %53 = call i32 @urdev_put(%struct.urdev* %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.urdev* @urdev_get_from_cdev(%struct.ccw_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_2__*) #1

declare dso_local i32 @urdev_put(%struct.urdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
