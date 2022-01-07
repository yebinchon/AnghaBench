; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.si4713_device = type { i32, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@SI4713_TX_LINE_INPUT_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @si4713_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_g_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.si4713_device*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev* %8)
  store %struct.si4713_device* %9, %struct.si4713_device** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %11 = icmp ne %struct.si4713_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %17 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %20 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %25 = load i32, i32* @SI4713_TX_LINE_INPUT_MUTE, align 4
  %26 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %27 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %26, i32 0, i32 1
  %28 = call i32 @si4713_read_property(%struct.si4713_device* %24, i32 %25, i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %45

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %15
  %34 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %44 [
    i32 128, label %37
  ]

37:                                               ; preds = %33
  %38 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %39 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @get_mute(i32 %40)
  %42 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %33, %37
  br label %45

45:                                               ; preds = %44, %31
  %46 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %47 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @si4713_read_property(%struct.si4713_device*, i32, i32*) #1

declare dso_local i32 @get_mute(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
