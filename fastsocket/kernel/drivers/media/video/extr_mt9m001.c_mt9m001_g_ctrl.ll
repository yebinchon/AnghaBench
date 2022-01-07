; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m001.c_mt9m001_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m001.c_mt9m001_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.mt9m001 = type { i32, i32, i32 }

@MT9M001_READ_OPTIONS2 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @mt9m001_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m001_g_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.mt9m001*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %12 = call %struct.mt9m001* @to_mt9m001(%struct.i2c_client* %11)
  store %struct.mt9m001* %12, %struct.mt9m001** %7, align 8
  %13 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %52 [
    i32 128, label %16
    i32 130, label %34
    i32 129, label %40
    i32 131, label %46
  ]

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = load i32, i32* @MT9M001_READ_OPTIONS2, align 4
  %19 = call i32 @reg_read(%struct.i2c_client* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 32768
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %52

34:                                               ; preds = %2
  %35 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %36 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %52

40:                                               ; preds = %2
  %41 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %42 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %52

46:                                               ; preds = %2
  %47 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %48 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %51 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %2, %46, %40, %34, %25
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %22
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9m001* @to_mt9m001(%struct.i2c_client*) #1

declare dso_local i32 @reg_read(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
