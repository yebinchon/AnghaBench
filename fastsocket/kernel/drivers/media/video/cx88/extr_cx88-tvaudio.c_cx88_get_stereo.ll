; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-tvaudio.c_cx88_get_stereo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-tvaudio.c_cx88_get_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, i32, i32 }
%struct.v4l2_tuner = type { i32, i64, i32 }

@cx88_get_stereo.m = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dual mono\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"sap\00", align 1
@cx88_get_stereo.p = internal global [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"no pilot\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pilot c1\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pilot c2\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@AUD_STATUS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"AUD_STATUS: 0x%x [%s/%s] ctl=%s\0A\00", align 1
@aud_ctl_names = common dso_local global i32* null, align 8
@AUD_CTL = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_SAP = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG2 = common dso_local global i32 0, align 4
@UNSET = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_MONO = common dso_local global i8* null, align 8
@V4L2_TUNER_MODE_STEREO = common dso_local global i64 0, align 8
@V4L2_TUNER_MODE_LANG2 = common dso_local global i64 0, align 8
@V4L2_TUNER_MODE_SAP = common dso_local global i64 0, align 8
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx88_get_stereo(%struct.cx88_core* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca %struct.v4l2_tuner*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %4, align 8
  %8 = load i32, i32* @AUD_STATUS, align 4
  %9 = call i32 @cx_read(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 3
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 2
  %14 = and i32 %13, 3
  store i32 %14, i32* %7, align 4
  %15 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %16 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8*], [4 x i8*]* @cx88_get_stereo.m, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* @cx88_get_stereo.p, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load i32*, i32** @aud_ctl_names, align 8
  %31 = load i32, i32* @AUD_CTL, align 4
  %32 = call i32 @cx_read(i32 %31)
  %33 = and i32 %32, 63
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %21, i8* %25, i8* %29, i32 %36)
  br label %38

38:                                               ; preds = %20, %2
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %41 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %43 = load i32, i32* @V4L2_TUNER_CAP_SAP, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @V4L2_TUNER_CAP_LANG1, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @V4L2_TUNER_CAP_LANG2, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %50 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @UNSET, align 4
  %52 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %53 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** @V4L2_TUNER_MODE_MONO, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %57 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %6, align 4
  switch i32 %58, label %76 [
    i32 0, label %59
    i32 1, label %63
    i32 2, label %67
    i32 3, label %72
  ]

59:                                               ; preds = %38
  %60 = load i64, i64* @V4L2_TUNER_MODE_STEREO, align 8
  %61 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %76

63:                                               ; preds = %38
  %64 = load i64, i64* @V4L2_TUNER_MODE_LANG2, align 8
  %65 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %66 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %76

67:                                               ; preds = %38
  %68 = load i8*, i8** @V4L2_TUNER_MODE_MONO, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %71 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %76

72:                                               ; preds = %38
  %73 = load i64, i64* @V4L2_TUNER_MODE_SAP, align 8
  %74 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %75 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %38, %72, %67, %63, %59
  %77 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %78 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %92 [
    i32 137, label %80
    i32 138, label %80
    i32 136, label %80
    i32 129, label %80
    i32 135, label %80
    i32 128, label %91
    i32 133, label %91
    i32 130, label %91
    i32 131, label %91
    i32 134, label %91
    i32 132, label %91
  ]

80:                                               ; preds = %76, %76, %76, %76, %76
  %81 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %82 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %87 = call i32 @cx88_dsp_detect_stereo_sap(%struct.cx88_core* %86)
  %88 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %89 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  br label %92

90:                                               ; preds = %80
  br label %92

91:                                               ; preds = %76, %76, %76, %76, %76, %76
  br label %92

92:                                               ; preds = %76, %91, %90, %85
  %93 = load i32, i32* @UNSET, align 4
  %94 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %95 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %92
  %99 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %100 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %101 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load i64, i64* @V4L2_TUNER_MODE_STEREO, align 8
  %103 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %104 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %102, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %98
  %108 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %109 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %110 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %98
  br label %114

114:                                              ; preds = %113, %92
  ret void
}

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @dprintk(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @cx88_dsp_detect_stereo_sap(%struct.cx88_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
