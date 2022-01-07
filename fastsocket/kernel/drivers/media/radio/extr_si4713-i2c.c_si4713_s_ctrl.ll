; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.si4713_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@POWER_DOWN = common dso_local global i32 0, align 4
@POWER_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @si4713_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
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
  br label %60

15:                                               ; preds = %2
  %16 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %57 [
    i32 128, label %19
  ]

19:                                               ; preds = %15
  %20 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %26 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @si4713_set_mute(%struct.si4713_device* %25, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %58

33:                                               ; preds = %24
  %34 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %35 = load i32, i32* @POWER_DOWN, align 4
  %36 = call i32 @si4713_set_power_state(%struct.si4713_device* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %56

37:                                               ; preds = %19
  %38 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %39 = load i32, i32* @POWER_UP, align 4
  %40 = call i32 @si4713_set_power_state(%struct.si4713_device* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %58

44:                                               ; preds = %37
  %45 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %46 = call i32 @si4713_setup(%struct.si4713_device* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %58

50:                                               ; preds = %44
  %51 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %52 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @si4713_set_mute(%struct.si4713_device* %51, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %50, %33
  br label %57

57:                                               ; preds = %15, %56
  br label %58

58:                                               ; preds = %57, %49, %43, %32
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev*) #1

declare dso_local i32 @si4713_set_mute(%struct.si4713_device*, i32) #1

declare dso_local i32 @si4713_set_power_state(%struct.si4713_device*, i32) #1

declare dso_local i32 @si4713_setup(%struct.si4713_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
