; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_mt9v111.c_mt9v111_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_mt9v111.c_mt9v111_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.sn9c102_sensor = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_control*)* @mt9v111_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v111_set_ctrl(%struct.sn9c102_device* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sn9c102_device*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.sn9c102_sensor*, align 8
  %7 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %8 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %9 = call %struct.sn9c102_sensor* @sn9c102_get_sensor(%struct.sn9c102_device* %8)
  store %struct.sn9c102_sensor* %9, %struct.sn9c102_sensor** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %34 [
    i32 128, label %13
  ]

13:                                               ; preds = %2
  %14 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %15 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %16 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %17 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 128, i32 0
  %25 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 128, i32 0
  %31 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %14, %struct.sn9c102_sensor* %15, i32 4, i32 %18, i32 32, i32 %24, i32 %30, i32 0, i32 0)
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %46

37:                                               ; preds = %13
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  br label %44

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi i32 [ %42, %40 ], [ 0, %43 ]
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %34
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.sn9c102_sensor* @sn9c102_get_sensor(%struct.sn9c102_device*) #1

declare dso_local i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device*, %struct.sn9c102_sensor*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
