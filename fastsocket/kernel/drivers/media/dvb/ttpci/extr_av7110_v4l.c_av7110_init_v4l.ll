; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_v4l.c_av7110_init_v4l.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_v4l.c_av7110_init_v4l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_ext_vv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.av7110 = type { i32, i32, i64, %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@av7110_vv_data_c = common dso_local global %struct.saa7146_ext_vv zeroinitializer, align 4
@av7110_vv_data_st = common dso_local global %struct.saa7146_ext_vv zeroinitializer, align 4
@.str = private unnamed_addr constant [39 x i8] c"cannot init capture device. skipping.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@vidioc_enum_input = common dso_local global i32 0, align 4
@vidioc_g_input = common dso_local global i32 0, align 4
@vidioc_s_input = common dso_local global i32 0, align 4
@vidioc_g_tuner = common dso_local global i32 0, align 4
@vidioc_s_tuner = common dso_local global i32 0, align 4
@vidioc_g_frequency = common dso_local global i32 0, align 4
@vidioc_s_frequency = common dso_local global i32 0, align 4
@vidioc_g_audio = common dso_local global i32 0, align 4
@vidioc_s_audio = common dso_local global i32 0, align 4
@vidioc_g_sliced_vbi_cap = common dso_local global i32 0, align 4
@vidioc_g_fmt_sliced_vbi_out = common dso_local global i32 0, align 4
@vidioc_s_fmt_sliced_vbi_out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"av7110\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"cannot register capture device. skipping.\0A\00", align 1
@VFL_TYPE_VBI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"cannot register vbi v4l2 device. skipping.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av7110_init_v4l(%struct.av7110* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.av7110*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_ext_vv*, align 8
  %6 = alloca i32, align 4
  store %struct.av7110* %0, %struct.av7110** %3, align 8
  %7 = load %struct.av7110*, %struct.av7110** %3, align 8
  %8 = getelementptr inbounds %struct.av7110, %struct.av7110* %7, i32 0, i32 3
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  store %struct.saa7146_dev* %9, %struct.saa7146_dev** %4, align 8
  %10 = load %struct.av7110*, %struct.av7110** %3, align 8
  %11 = getelementptr inbounds %struct.av7110, %struct.av7110* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.saa7146_ext_vv* @av7110_vv_data_c, %struct.saa7146_ext_vv** %5, align 8
  br label %16

15:                                               ; preds = %1
  store %struct.saa7146_ext_vv* @av7110_vv_data_st, %struct.saa7146_ext_vv** %5, align 8
  br label %16

16:                                               ; preds = %15, %14
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %18 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %19 = call i32 @saa7146_vv_init(%struct.saa7146_dev* %17, %struct.saa7146_ext_vv* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %97

26:                                               ; preds = %16
  %27 = load i32, i32* @vidioc_enum_input, align 4
  %28 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %29 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 11
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @vidioc_g_input, align 4
  %32 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %33 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 10
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @vidioc_s_input, align 4
  %36 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %37 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 9
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @vidioc_g_tuner, align 4
  %40 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %41 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 8
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @vidioc_s_tuner, align 4
  %44 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %45 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 7
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @vidioc_g_frequency, align 4
  %48 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %49 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 6
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @vidioc_s_frequency, align 4
  %52 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %53 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @vidioc_g_audio, align 4
  %56 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %57 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @vidioc_s_audio, align 4
  %60 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %61 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @vidioc_g_sliced_vbi_cap, align 4
  %64 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %65 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @vidioc_g_fmt_sliced_vbi_out, align 4
  %68 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %69 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @vidioc_s_fmt_sliced_vbi_out, align 4
  %72 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %73 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load %struct.av7110*, %struct.av7110** %3, align 8
  %76 = getelementptr inbounds %struct.av7110, %struct.av7110* %75, i32 0, i32 1
  %77 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %78 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %79 = call i64 @saa7146_register_device(i32* %76, %struct.saa7146_dev* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %26
  %82 = call i32 @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %84 = call i32 @saa7146_vv_release(%struct.saa7146_dev* %83)
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %97

87:                                               ; preds = %26
  %88 = load %struct.av7110*, %struct.av7110** %3, align 8
  %89 = getelementptr inbounds %struct.av7110, %struct.av7110* %88, i32 0, i32 0
  %90 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %91 = load i32, i32* @VFL_TYPE_VBI, align 4
  %92 = call i64 @saa7146_register_device(i32* %89, %struct.saa7146_dev* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = call i32 @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %87
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %81, %22
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @saa7146_vv_init(%struct.saa7146_dev*, %struct.saa7146_ext_vv*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @saa7146_register_device(i32*, %struct.saa7146_dev*, i8*, i32) #1

declare dso_local i32 @saa7146_vv_release(%struct.saa7146_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
