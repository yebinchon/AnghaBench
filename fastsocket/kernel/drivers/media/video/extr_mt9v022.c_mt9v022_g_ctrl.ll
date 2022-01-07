; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v022.c_mt9v022_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v022.c_mt9v022_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.v4l2_queryctrl = type { i64, i64 }

@mt9v022_ops = common dso_local global i32 0, align 4
@MT9V022_READ_MODE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MT9V022_AEC_AGC_ENABLE = common dso_local global i32 0, align 4
@MT9V022_ANALOG_GAIN = common dso_local global i32 0, align 4
@MT9V022_TOTAL_SHUTTER_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @mt9v022_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v022_g_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.v4l2_queryctrl* @soc_camera_find_qctrl(i32* @mt9v022_ops, i32 %14)
  store %struct.v4l2_queryctrl* %15, %struct.v4l2_queryctrl** %7, align 8
  %16 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %153 [
    i32 128, label %19
    i32 129, label %37
    i32 131, label %55
    i32 133, label %73
    i32 130, label %91
    i32 132, label %122
  ]

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %21 = load i32, i32* @MT9V022_READ_MODE, align 4
  %22 = call i32 @reg_read(%struct.i2c_client* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %154

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, 16
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %153

37:                                               ; preds = %2
  %38 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %39 = load i32, i32* @MT9V022_READ_MODE, align 4
  %40 = call i32 @reg_read(%struct.i2c_client* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %154

46:                                               ; preds = %37
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 32
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %153

55:                                               ; preds = %2
  %56 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %57 = load i32, i32* @MT9V022_AEC_AGC_ENABLE, align 4
  %58 = call i32 @reg_read(%struct.i2c_client* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %154

64:                                               ; preds = %55
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %153

73:                                               ; preds = %2
  %74 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %75 = load i32, i32* @MT9V022_AEC_AGC_ENABLE, align 4
  %76 = call i32 @reg_read(%struct.i2c_client* %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %154

82:                                               ; preds = %73
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %83, 2
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %153

91:                                               ; preds = %2
  %92 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %93 = load i32, i32* @MT9V022_ANALOG_GAIN, align 4
  %94 = call i32 @reg_read(%struct.i2c_client* %92, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %154

100:                                              ; preds = %91
  %101 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = sub i64 %103, %106
  store i64 %107, i64* %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %108, 16
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %8, align 8
  %112 = mul i64 %110, %111
  %113 = add i64 %112, 24
  %114 = udiv i64 %113, 48
  %115 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %114, %117
  %119 = trunc i64 %118 to i32
  %120 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %121 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %153

122:                                              ; preds = %2
  %123 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %124 = load i32, i32* @MT9V022_TOTAL_SHUTTER_WIDTH, align 4
  %125 = call i32 @reg_read(%struct.i2c_client* %123, i32 %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %154

131:                                              ; preds = %122
  %132 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %133 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %136 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = sub i64 %134, %137
  store i64 %138, i64* %8, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* %8, align 8
  %143 = mul i64 %141, %142
  %144 = add i64 %143, 239
  %145 = udiv i64 %144, 479
  %146 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %147 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %145, %148
  %150 = trunc i64 %149 to i32
  %151 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %152 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %2, %131, %100, %82, %64, %46, %28
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %128, %97, %79, %61, %43, %25
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_queryctrl* @soc_camera_find_qctrl(i32*, i32) #1

declare dso_local i32 @reg_read(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
