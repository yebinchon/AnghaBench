; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_g_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7134_fh = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }
%struct.TYPE_2__ = type { i32*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SAA7134_INPUT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Television\00", align 1
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_NORM = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG2 = common dso_local global i32 0, align 4
@SAA7134_STATUS_VIDEO1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @saa7134_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.saa7134_fh*, align 8
  %9 = alloca %struct.saa7134_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__, align 8
  %12 = alloca %struct.TYPE_2__, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.saa7134_fh*
  store %struct.saa7134_fh* %14, %struct.saa7134_fh** %8, align 8
  %15 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %16 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %15, i32 0, i32 0
  %17 = load %struct.saa7134_dev*, %struct.saa7134_dev** %16, align 8
  store %struct.saa7134_dev* %17, %struct.saa7134_dev** %9, align 8
  %18 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 0, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %106

25:                                               ; preds = %3
  %26 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %27 = call i32 @memset(%struct.v4l2_tuner* %26, i32 0, i32 40)
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %46, %25
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @SAA7134_INPUT_MAX, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call { i32*, i64 } @card_in(%struct.saa7134_dev* %33, i32 %34)
  %36 = bitcast %struct.TYPE_2__* %11 to { i32*, i64 }*
  %37 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %36, i32 0, i32 0
  %38 = extractvalue { i32*, i64 } %35, 0
  store i32* %38, i32** %37, align 8
  %39 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %36, i32 0, i32 1
  %40 = extractvalue { i32*, i64 } %35, 1
  store i64 %40, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %49

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %28

49:                                               ; preds = %44, %28
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @SAA7134_INPUT_MAX, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %106

56:                                               ; preds = %49
  %57 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call { i32*, i64 } @card_in(%struct.saa7134_dev* %57, i32 %58)
  %60 = bitcast %struct.TYPE_2__* %12 to { i32*, i64 }*
  %61 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %60, i32 0, i32 0
  %62 = extractvalue { i32*, i64 } %59, 0
  store i32* %62, i32** %61, align 8
  %63 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %60, i32 0, i32 1
  %64 = extractvalue { i32*, i64 } %59, 1
  store i64 %64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* null, %66
  br i1 %67, label %68, label %97

68:                                               ; preds = %56
  %69 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @strcpy(i32 %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %74 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @V4L2_TUNER_CAP_NORM, align 4
  %77 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @V4L2_TUNER_CAP_LANG1, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @V4L2_TUNER_CAP_LANG2, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %85, i32 0, i32 2
  store i32 -1, i32* %86, align 4
  %87 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %88 = call i32 @saa7134_tvaudio_getstereo(%struct.saa7134_dev* %87)
  %89 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @saa7134_tvaudio_rx2mode(i32 %93)
  %95 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %68, %56
  %98 = load i32, i32* @SAA7134_STATUS_VIDEO1, align 4
  %99 = call i32 @saa_readb(i32 %98)
  %100 = and i32 %99, 3
  %101 = icmp ne i32 0, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %103, i32 0, i32 3
  store i32 65535, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %97
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %53, %22
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @memset(%struct.v4l2_tuner*, i32, i32) #1

declare dso_local { i32*, i64 } @card_in(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @saa7134_tvaudio_getstereo(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_tvaudio_rx2mode(i32) #1

declare dso_local i32 @saa_readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
