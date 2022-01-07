; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-encoder.c_vidioc_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-encoder.c_vidioc_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_queryctrl = type { i32 }
%struct.saa7164_encoder_fh = type { %struct.saa7164_port* }
%struct.saa7164_port = type { i32 }

@V4L2_CTRL_FLAG_NEXT_CTRL = common dso_local global i32 0, align 4
@saa7164_v4l2_ctrls = common dso_local global i64* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_queryctrl*)* @vidioc_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_queryctrl(%struct.file* %0, i8* %1, %struct.v4l2_queryctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  %8 = alloca %struct.saa7164_encoder_fh*, align 8
  %9 = alloca %struct.saa7164_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_queryctrl* %2, %struct.v4l2_queryctrl** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.saa7164_encoder_fh*
  store %struct.saa7164_encoder_fh* %14, %struct.saa7164_encoder_fh** %8, align 8
  %15 = load %struct.saa7164_encoder_fh*, %struct.saa7164_encoder_fh** %8, align 8
  %16 = getelementptr inbounds %struct.saa7164_encoder_fh, %struct.saa7164_encoder_fh* %15, i32 0, i32 0
  %17 = load %struct.saa7164_port*, %struct.saa7164_port** %16, align 8
  store %struct.saa7164_port* %17, %struct.saa7164_port** %9, align 8
  %18 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %22 = call i32 @memset(%struct.v4l2_queryctrl* %21, i32 0, i32 4)
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @V4L2_CTRL_FLAG_NEXT_CTRL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @V4L2_CTRL_FLAG_NEXT_CTRL, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %95, %3
  %37 = load i32, i32* %10, align 4
  %38 = load i64*, i64** @saa7164_v4l2_ctrls, align 8
  %39 = call i32 @ARRAY_SIZE(i64* %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %98

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64*, i64** @saa7164_v4l2_ctrls, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %48, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load i64*, i64** @saa7164_v4l2_ctrls, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %65

64:                                               ; preds = %44
  br label %95

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %41
  %67 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64*, i64** @saa7164_v4l2_ctrls, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %70, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load %struct.saa7164_port*, %struct.saa7164_port** %9, align 8
  %79 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %78, i32 0, i32 0
  %80 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %81 = call i32 @fill_queryctrl(i32* %79, %struct.v4l2_queryctrl* %80)
  store i32 %81, i32* %4, align 4
  br label %101

82:                                               ; preds = %66
  %83 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64*, i64** @saa7164_v4l2_ctrls, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %86, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %98

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94, %64
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %36

98:                                               ; preds = %93, %36
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %98, %77
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @memset(%struct.v4l2_queryctrl*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @fill_queryctrl(i32*, %struct.v4l2_queryctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
