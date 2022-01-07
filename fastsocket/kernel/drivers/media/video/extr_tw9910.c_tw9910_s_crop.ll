; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tw9910.c_tw9910_s_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tw9910.c_tw9910_s_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_crop = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i64, i64, i32, i32 }
%struct.i2c_client = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { i32 }
%struct.tw9910_priv = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOCAM_DATAWIDTH_16 = common dso_local global i64 0, align 8
@LEN = common dso_local global i32 0, align 4
@OPFORM = common dso_local global i32 0, align 4
@RTSEL_VLOSS = common dso_local global i32 0, align 4
@RTSEL_HLOCK = common dso_local global i32 0, align 4
@RTSEL_SLOCK = common dso_local global i32 0, align 4
@RTSEL_VLOCK = common dso_local global i32 0, align 4
@RTSEL_MONO = common dso_local global i32 0, align 4
@RTSEL_DET50 = common dso_local global i32 0, align 4
@RTSEL_FIELD = common dso_local global i32 0, align 4
@RTSEL_RTCO = common dso_local global i32 0, align 4
@VBICNTL = common dso_local global i32 0, align 4
@RTSEL_MASK = common dso_local global i32 0, align 4
@tw9910_hsync_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_crop*)* @tw9910_s_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw9910_s_crop(%struct.v4l2_subdev* %0, %struct.v4l2_crop* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_crop*, align 8
  %6 = alloca %struct.v4l2_rect*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.tw9910_priv*, align 8
  %9 = alloca %struct.soc_camera_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_crop* %1, %struct.v4l2_crop** %5, align 8
  %12 = load %struct.v4l2_crop*, %struct.v4l2_crop** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %12, i32 0, i32 0
  store %struct.v4l2_rect* %13, %struct.v4l2_rect** %6, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %7, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %17 = call %struct.tw9910_priv* @to_tw9910(%struct.i2c_client* %16)
  store %struct.tw9910_priv* %17, %struct.tw9910_priv** %8, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.soc_camera_device*, %struct.soc_camera_device** %20, align 8
  store %struct.soc_camera_device* %21, %struct.soc_camera_device** %9, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.soc_camera_device*, %struct.soc_camera_device** %9, align 8
  %25 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_7__* @tw9910_select_norm(%struct.soc_camera_device* %24, i32 %27, i32 %30)
  %32 = load %struct.tw9910_priv*, %struct.tw9910_priv** %8, align 8
  %33 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %32, i32 0, i32 0
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %33, align 8
  %34 = load %struct.tw9910_priv*, %struct.tw9910_priv** %8, align 8
  %35 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = icmp ne %struct.TYPE_7__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  br label %127

39:                                               ; preds = %2
  %40 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %41 = call i32 @tw9910_reset(%struct.i2c_client* %40)
  store i32 0, i32* %11, align 4
  %42 = load i64, i64* @SOCAM_DATAWIDTH_16, align 8
  %43 = load %struct.tw9910_priv*, %struct.tw9910_priv** %8, align 8
  %44 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %42, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @LEN, align 4
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %49, %39
  %52 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %53 = load i32, i32* @OPFORM, align 4
  %54 = load i32, i32* @LEN, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @tw9910_mask_set(%struct.i2c_client* %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %127

60:                                               ; preds = %51
  %61 = load %struct.tw9910_priv*, %struct.tw9910_priv** %8, align 8
  %62 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %82 [
    i32 128, label %66
    i32 133, label %68
    i32 130, label %70
    i32 129, label %72
    i32 132, label %74
    i32 135, label %76
    i32 134, label %78
    i32 131, label %80
  ]

66:                                               ; preds = %60
  %67 = load i32, i32* @RTSEL_VLOSS, align 4
  store i32 %67, i32* %11, align 4
  br label %83

68:                                               ; preds = %60
  %69 = load i32, i32* @RTSEL_HLOCK, align 4
  store i32 %69, i32* %11, align 4
  br label %83

70:                                               ; preds = %60
  %71 = load i32, i32* @RTSEL_SLOCK, align 4
  store i32 %71, i32* %11, align 4
  br label %83

72:                                               ; preds = %60
  %73 = load i32, i32* @RTSEL_VLOCK, align 4
  store i32 %73, i32* %11, align 4
  br label %83

74:                                               ; preds = %60
  %75 = load i32, i32* @RTSEL_MONO, align 4
  store i32 %75, i32* %11, align 4
  br label %83

76:                                               ; preds = %60
  %77 = load i32, i32* @RTSEL_DET50, align 4
  store i32 %77, i32* %11, align 4
  br label %83

78:                                               ; preds = %60
  %79 = load i32, i32* @RTSEL_FIELD, align 4
  store i32 %79, i32* %11, align 4
  br label %83

80:                                               ; preds = %60
  %81 = load i32, i32* @RTSEL_RTCO, align 4
  store i32 %81, i32* %11, align 4
  br label %83

82:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %82, %80, %78, %76, %74, %72, %70, %68, %66
  %84 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %85 = load i32, i32* @VBICNTL, align 4
  %86 = load i32, i32* @RTSEL_MASK, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @tw9910_mask_set(%struct.i2c_client* %84, i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %127

92:                                               ; preds = %83
  %93 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %94 = load %struct.tw9910_priv*, %struct.tw9910_priv** %8, align 8
  %95 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = call i32 @tw9910_set_scale(%struct.i2c_client* %93, %struct.TYPE_7__* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %127

101:                                              ; preds = %92
  %102 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %103 = call i32 @tw9910_set_hsync(%struct.i2c_client* %102, i32* @tw9910_hsync_ctrl)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %127

107:                                              ; preds = %101
  %108 = load %struct.tw9910_priv*, %struct.tw9910_priv** %8, align 8
  %109 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %114 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.tw9910_priv*, %struct.tw9910_priv** %8, align 8
  %116 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %121 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %123 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %125 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %3, align 4
  br label %133

127:                                              ; preds = %106, %100, %91, %59, %38
  %128 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %129 = call i32 @tw9910_reset(%struct.i2c_client* %128)
  %130 = load %struct.tw9910_priv*, %struct.tw9910_priv** %8, align 8
  %131 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %130, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %131, align 8
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %127, %107
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.tw9910_priv* @to_tw9910(%struct.i2c_client*) #1

declare dso_local %struct.TYPE_7__* @tw9910_select_norm(%struct.soc_camera_device*, i32, i32) #1

declare dso_local i32 @tw9910_reset(%struct.i2c_client*) #1

declare dso_local i32 @tw9910_mask_set(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @tw9910_set_scale(%struct.i2c_client*, %struct.TYPE_7__*) #1

declare dso_local i32 @tw9910_set_hsync(%struct.i2c_client*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
