; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_vidioc_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_vidioc_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.hdpvr_fh* }
%struct.hdpvr_fh = type { %struct.hdpvr_device* }
%struct.hdpvr_device = type { i32, i32 }
%struct.v4l2_queryctrl = type { i32 }

@V4L2_CTRL_FLAG_NEXT_CTRL = common dso_local global i32 0, align 4
@supported_v4l2_ctrls = common dso_local global i64* null, align 8
@HDPVR_FLAG_AC3_CAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_queryctrl*)* @vidioc_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_queryctrl(%struct.file* %0, i8* %1, %struct.v4l2_queryctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  %8 = alloca %struct.hdpvr_fh*, align 8
  %9 = alloca %struct.hdpvr_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_queryctrl* %2, %struct.v4l2_queryctrl** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %14, align 8
  store %struct.hdpvr_fh* %15, %struct.hdpvr_fh** %8, align 8
  %16 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %8, align 8
  %17 = getelementptr inbounds %struct.hdpvr_fh, %struct.hdpvr_fh* %16, i32 0, i32 0
  %18 = load %struct.hdpvr_device*, %struct.hdpvr_device** %17, align 8
  store %struct.hdpvr_device* %18, %struct.hdpvr_device** %9, align 8
  %19 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %23 = call i32 @memset(%struct.v4l2_queryctrl* %22, i32 0, i32 4)
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @V4L2_CTRL_FLAG_NEXT_CTRL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @V4L2_CTRL_FLAG_NEXT_CTRL, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %101, %3
  %38 = load i32, i32* %10, align 4
  %39 = load i64*, i64** @supported_v4l2_ctrls, align 8
  %40 = call i32 @ARRAY_SIZE(i64* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %104

42:                                               ; preds = %37
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64*, i64** @supported_v4l2_ctrls, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %49, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %45
  %57 = load i64*, i64** @supported_v4l2_ctrls, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %66

65:                                               ; preds = %45
  br label %101

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %42
  %68 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64*, i64** @supported_v4l2_ctrls, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %71, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %67
  %79 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %80 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %79, i32 0, i32 1
  %81 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %82 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %83 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @HDPVR_FLAG_AC3_CAP, align 4
  %86 = and i32 %84, %85
  %87 = call i32 @fill_queryctrl(i32* %80, %struct.v4l2_queryctrl* %81, i32 %86)
  store i32 %87, i32* %4, align 4
  br label %107

88:                                               ; preds = %67
  %89 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64*, i64** @supported_v4l2_ctrls, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %92, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %104

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %65
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %37

104:                                              ; preds = %99, %37
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %104, %78
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @memset(%struct.v4l2_queryctrl*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @fill_queryctrl(i32*, %struct.v4l2_queryctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
