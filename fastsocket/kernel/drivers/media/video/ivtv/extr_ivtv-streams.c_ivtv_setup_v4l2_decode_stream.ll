; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_setup_v4l2_decode_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_setup_v4l2_decode_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i32, i32*, %struct.ivtv* }
%struct.ivtv = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Setting some initial decoder settings\0A\00", align 1
@CX2341X_DEC_SET_AUDIO_MODE = common dso_local global i32 0, align 4
@CX2341X_DEC_SET_DISPLAY_BUFFERS = common dso_local global i32 0, align 4
@CX2341X_DEC_SET_PREBUFFERING = common dso_local global i32 0, align 4
@CX2341X_DEC_EXTRACT_VBI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Decoder VBI RE-Insert start 0x%08x size 0x%08x\0A\00", align 1
@OUT_PASSTHROUGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Setup DEC YUV Stream data[0] = %d\0A\00", align 1
@CX2341X_DEC_SET_DECODER_SOURCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Couldn't initialize decoder source\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"ivtv_setup_v4l2_decode_stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv_stream*)* @ivtv_setup_v4l2_decode_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_setup_v4l2_decode_stream(%struct.ivtv_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv_stream*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %3, align 8
  %11 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %16 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %15, i32 0, i32 2
  %17 = load %struct.ivtv*, %struct.ivtv** %16, align 8
  store %struct.ivtv* %17, %struct.ivtv** %6, align 8
  %18 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %19 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %105

25:                                               ; preds = %1
  %26 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %28 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %32 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %36 = load i32, i32* @CX2341X_DEC_SET_AUDIO_MODE, align 4
  %37 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %38 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %41 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i64 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %35, i32 %36, i32 2, i32 %39, i32 %42)
  %44 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %45 = load i32, i32* @CX2341X_DEC_SET_DISPLAY_BUFFERS, align 4
  %46 = call i64 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %44, i32 %45, i32 1, i32 0)
  %47 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %48 = load i32, i32* @CX2341X_DEC_SET_PREBUFFERING, align 4
  %49 = call i64 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %47, i32 %48, i32 1, i32 1)
  %50 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %51 = load i32, i32* @CX2341X_DEC_EXTRACT_VBI, align 4
  %52 = call i32 @ivtv_vapi_result(%struct.ivtv* %50, i32* %14, i32 %51, i32 1, i32 1)
  %53 = getelementptr inbounds i32, i32* %14, i64 0
  %54 = load i32, i32* %53, align 16
  %55 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %56 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %59 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds i32, i32* %14, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %63)
  %65 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %66 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %86 [
    i32 128, label %68
    i32 129, label %85
  ]

68:                                               ; preds = %25
  %69 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %70 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @OUT_PASSTHROUGH, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 1, i32* %7, align 4
  br label %82

75:                                               ; preds = %68
  store i32 2, i32* %7, align 4
  store i32 720, i32* %8, align 4
  %76 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %77 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 576, i32 480
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %75, %74
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %87

85:                                               ; preds = %25
  br label %86

86:                                               ; preds = %25, %85
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %82
  %88 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %89 = load i32, i32* @CX2341X_DEC_SET_DECODER_SOURCE, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %94 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i64 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %88, i32 %89, i32 4, i32 %90, i32 %91, i32 %92, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %87
  %100 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %87
  %102 = call i32 @ivtv_msleep_timeout(i32 10, i32 0)
  %103 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %104 = call i32 @ivtv_firmware_check(%struct.ivtv* %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 %104, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %105

105:                                              ; preds = %101, %22
  %106 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, ...) #2

declare dso_local i64 @ivtv_vapi(%struct.ivtv*, i32, i32, i32, ...) #2

declare dso_local i32 @ivtv_vapi_result(%struct.ivtv*, i32*, i32, i32, i32) #2

declare dso_local i32 @IVTV_DEBUG_WARN(i8*) #2

declare dso_local i32 @ivtv_msleep_timeout(i32, i32) #2

declare dso_local i32 @ivtv_firmware_check(%struct.ivtv*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
