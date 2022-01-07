; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_cx18_av_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_cx18_av_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.TYPE_2__, %struct.cx18_av_state }
%struct.TYPE_2__ = type { i8* }
%struct.cx18_av_state = type { i32, i32, %struct.v4l2_subdev, i64, i64, i32, i32, i32, i32 }
%struct.v4l2_subdev = type { i32, i32 }

@CXADEC_CHIP_CTRL = common dso_local global i32 0, align 4
@CXADEC_CHIP_TYPE_MAKO = common dso_local global i32 0, align 4
@V4L2_IDENT_CX23418_843 = common dso_local global i32 0, align 4
@V4L2_IDENT_UNKNOWN = common dso_local global i32 0, align 4
@CX18_AV_COMPOSITE7 = common dso_local global i32 0, align 4
@CX18_AV_AUDIO8 = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG1 = common dso_local global i32 0, align 4
@cx18_av_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s %03x\00", align 1
@CX18_HW_418_AV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_av_probe(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca %struct.cx18_av_state*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %6 = load %struct.cx18*, %struct.cx18** %2, align 8
  %7 = getelementptr inbounds %struct.cx18, %struct.cx18* %6, i32 0, i32 1
  store %struct.cx18_av_state* %7, %struct.cx18_av_state** %3, align 8
  %8 = load %struct.cx18*, %struct.cx18** %2, align 8
  %9 = load i32, i32* @CXADEC_CHIP_CTRL, align 4
  %10 = call i32 @cx18_av_read4(%struct.cx18* %8, i32 %9)
  %11 = and i32 %10, 65535
  %12 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %13 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %15 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 4
  %18 = load i32, i32* @CXADEC_CHIP_TYPE_MAKO, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @V4L2_IDENT_CX23418_843, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @V4L2_IDENT_UNKNOWN, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %27 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @CX18_AV_COMPOSITE7, align 4
  %29 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %30 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @CX18_AV_AUDIO8, align 4
  %32 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %33 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %35 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %34, i32 0, i32 1
  store i32 48000, i32* %35, align 4
  %36 = load i32, i32* @V4L2_TUNER_MODE_LANG1, align 4
  %37 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %38 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %40 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %42 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 10, %43
  %45 = sub nsw i64 %44, 2
  %46 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %47 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %46, i32 0, i32 4
  store i64 %45, i64* %47, align 8
  %48 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %49 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %48, i32 0, i32 2
  store %struct.v4l2_subdev* %49, %struct.v4l2_subdev** %4, align 8
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %51 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %50, i32* @cx18_av_ops)
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %53 = load %struct.cx18*, %struct.cx18** %2, align 8
  %54 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %52, %struct.cx18* %53)
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %56 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cx18*, %struct.cx18** %2, align 8
  %59 = getelementptr inbounds %struct.cx18, %struct.cx18* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %63 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = ashr i32 %64, 4
  %66 = call i32 @snprintf(i32 %57, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %61, i32 %65)
  %67 = load i32, i32* @CX18_HW_418_AV, align 4
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.cx18*, %struct.cx18** %2, align 8
  %71 = getelementptr inbounds %struct.cx18, %struct.cx18* %70, i32 0, i32 0
  %72 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %73 = call i32 @v4l2_device_register_subdev(%struct.TYPE_2__* %71, %struct.v4l2_subdev* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %24
  %77 = load %struct.cx18*, %struct.cx18** %2, align 8
  %78 = call i32 @cx18_av_init(%struct.cx18* %77)
  br label %79

79:                                               ; preds = %76, %24
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @cx18_av_read4(%struct.cx18*, i32) #1

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.cx18*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @v4l2_device_register_subdev(%struct.TYPE_2__*, %struct.v4l2_subdev*) #1

declare dso_local i32 @cx18_av_init(%struct.cx18*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
