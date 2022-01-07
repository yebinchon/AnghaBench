; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.mt9m111 = type { i32, i32 }
%struct.v4l2_queryctrl = type { i32 }

@mt9m111_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MT9M111_RMB_MIRROR_ROWS = common dso_local global i32 0, align 4
@MT9M111_RMB_MIRROR_COLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @mt9m111_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.mt9m111*, align 8
  %8 = alloca %struct.v4l2_queryctrl*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = call %struct.mt9m111* @to_mt9m111(%struct.i2c_client* %12)
  store %struct.mt9m111* %13, %struct.mt9m111** %7, align 8
  %14 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.v4l2_queryctrl* @soc_camera_find_qctrl(i32* @mt9m111_ops, i32 %16)
  store %struct.v4l2_queryctrl* %17, %struct.v4l2_queryctrl** %8, align 8
  %18 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %19 = icmp ne %struct.v4l2_queryctrl* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %74

23:                                               ; preds = %2
  %24 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %69 [
    i32 128, label %27
    i32 129, label %39
    i32 130, label %51
    i32 131, label %57
    i32 132, label %63
  ]

27:                                               ; preds = %23
  %28 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mt9m111*, %struct.mt9m111** %7, align 8
  %32 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %34 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MT9M111_RMB_MIRROR_ROWS, align 4
  %38 = call i32 @mt9m111_set_flip(%struct.i2c_client* %33, i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  br label %72

39:                                               ; preds = %23
  %40 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mt9m111*, %struct.mt9m111** %7, align 8
  %44 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %46 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MT9M111_RMB_MIRROR_COLS, align 4
  %50 = call i32 @mt9m111_set_flip(%struct.i2c_client* %45, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  br label %72

51:                                               ; preds = %23
  %52 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %53 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mt9m111_set_global_gain(%struct.i2c_client* %52, i32 %55)
  store i32 %56, i32* %9, align 4
  br label %72

57:                                               ; preds = %23
  %58 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %59 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mt9m111_set_autoexposure(%struct.i2c_client* %58, i32 %61)
  store i32 %62, i32* %9, align 4
  br label %72

63:                                               ; preds = %23
  %64 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %65 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mt9m111_set_autowhitebalance(%struct.i2c_client* %64, i32 %67)
  store i32 %68, i32* %9, align 4
  br label %72

69:                                               ; preds = %23
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %63, %57, %51, %39, %27
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %20
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9m111* @to_mt9m111(%struct.i2c_client*) #1

declare dso_local %struct.v4l2_queryctrl* @soc_camera_find_qctrl(i32*, i32) #1

declare dso_local i32 @mt9m111_set_flip(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mt9m111_set_global_gain(%struct.i2c_client*, i32) #1

declare dso_local i32 @mt9m111_set_autoexposure(%struct.i2c_client*, i32) #1

declare dso_local i32 @mt9m111_set_autowhitebalance(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
