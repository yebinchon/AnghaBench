; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, i32 }
%struct.v4l2_queryctrl = type { i32 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@EINVAL = common dso_local global i32 0, align 4
@BCS_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"V4L2_CID_BRIGHTNESS: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"V4L2_CID_CONTRAST: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"V4L2_CID_SATURATION: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"V4L2_CID_VFLIP: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"V4L2_CID_HFLIP: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.saa7146_vv*, align 8
  %10 = alloca %struct.v4l2_queryctrl*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.saa7146_fh*
  %14 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %13, i32 0, i32 0
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  store %struct.saa7146_dev* %15, %struct.saa7146_dev** %8, align 8
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %17 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %16, i32 0, i32 0
  %18 = load %struct.saa7146_vv*, %struct.saa7146_vv** %17, align 8
  store %struct.saa7146_vv* %18, %struct.saa7146_vv** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.v4l2_queryctrl* @ctrl_by_id(i32 %21)
  store %struct.v4l2_queryctrl* %22, %struct.v4l2_queryctrl** %10, align 8
  %23 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %24 = icmp eq %struct.v4l2_queryctrl* null, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %105

28:                                               ; preds = %3
  %29 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %101 [
    i32 132, label %32
    i32 131, label %47
    i32 129, label %62
    i32 128, label %77
    i32 130, label %89
  ]

32:                                               ; preds = %28
  %33 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %34 = load i32, i32* @BCS_CTRL, align 4
  %35 = call i32 @saa7146_read(%struct.saa7146_dev* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = ashr i32 %36, 24
  %38 = and i32 255, %37
  %39 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @DEB_D(i8* %45)
  br label %104

47:                                               ; preds = %28
  %48 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %49 = load i32, i32* @BCS_CTRL, align 4
  %50 = call i32 @saa7146_read(%struct.saa7146_dev* %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = ashr i32 %51, 16
  %53 = and i32 127, %52
  %54 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @DEB_D(i8* %60)
  br label %104

62:                                               ; preds = %28
  %63 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %64 = load i32, i32* @BCS_CTRL, align 4
  %65 = call i32 @saa7146_read(%struct.saa7146_dev* %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = ashr i32 %66, 0
  %68 = and i32 127, %67
  %69 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @DEB_D(i8* %75)
  br label %104

77:                                               ; preds = %28
  %78 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %79 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @DEB_D(i8* %87)
  br label %104

89:                                               ; preds = %28
  %90 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %91 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @DEB_D(i8* %99)
  br label %104

101:                                              ; preds = %28
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %105

104:                                              ; preds = %89, %77, %62, %47, %32
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %101, %25
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.v4l2_queryctrl* @ctrl_by_id(i32) #1

declare dso_local i32 @saa7146_read(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @DEB_D(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
