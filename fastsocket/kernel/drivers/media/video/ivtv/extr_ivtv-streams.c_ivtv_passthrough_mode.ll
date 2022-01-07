; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_passthrough_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_passthrough_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i64, i32, i32, i32, %struct.ivtv_stream* }
%struct.ivtv_stream = type { i32, i32* }

@IVTV_ENC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@IVTV_DEC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ivtv ioctl: Select passthrough mode\0A\00", align 1
@OUT_PASSTHROUGH = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@IVTV_F_S_PASSTHROUGH = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMING = common dso_local global i32 0, align 4
@CX2341X_DEC_START_PLAYBACK = common dso_local global i32 0, align 4
@CX2341X_ENC_START_CAPTURE = common dso_local global i32 0, align 4
@CX2341X_ENC_STOP_CAPTURE = common dso_local global i32 0, align 4
@CX2341X_DEC_STOP_PLAYBACK = common dso_local global i32 0, align 4
@OUT_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_passthrough_mode(%struct.ivtv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ivtv_stream*, align 8
  %7 = alloca %struct.ivtv_stream*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %9 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %8, i32 0, i32 4
  %10 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %11 = load i64, i64* @IVTV_ENC_STREAM_TYPE_YUV, align 8
  %12 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %10, i64 %11
  store %struct.ivtv_stream* %12, %struct.ivtv_stream** %6, align 8
  %13 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %14 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %13, i32 0, i32 4
  %15 = load %struct.ivtv_stream*, %struct.ivtv_stream** %14, align 8
  %16 = load i64, i64* @IVTV_DEC_STREAM_TYPE_YUV, align 8
  %17 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %15, i64 %16
  store %struct.ivtv_stream* %17, %struct.ivtv_stream** %7, align 8
  %18 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %19 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %24 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %125

30:                                               ; preds = %22
  %31 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %85

34:                                               ; preds = %30
  %35 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %36 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @OUT_PASSTHROUGH, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %125

41:                                               ; preds = %34
  %42 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %43 = load i64, i64* @OUT_PASSTHROUGH, align 8
  %44 = call i64 @ivtv_set_output_mode(%struct.ivtv* %42, i64 %43)
  %45 = load i64, i64* @OUT_PASSTHROUGH, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %125

50:                                               ; preds = %41
  %51 = load i32, i32* @IVTV_F_S_PASSTHROUGH, align 4
  %52 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %53 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %52, i32 0, i32 0
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  %55 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %56 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %57 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %56, i32 0, i32 0
  %58 = call i32 @set_bit(i32 %55, i32* %57)
  %59 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %60 = call i32 @ivtv_setup_v4l2_decode_stream(%struct.ivtv_stream* %59)
  %61 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %62 = load i32, i32* @CX2341X_DEC_START_PLAYBACK, align 4
  %63 = call i32 (%struct.ivtv*, i32, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %61, i32 %62, i32 2, i32 0, i32 1)
  %64 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %65 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %64, i32 0, i32 3
  %66 = call i32 @atomic_inc(i32* %65)
  %67 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %68 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %67, i32 0, i32 2
  %69 = call i64 @atomic_read(i32* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %50
  %72 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %73 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %72, i32 0, i32 1
  %74 = call i32 @cx2341x_handler_setup(i32* %73)
  %75 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %76 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %75, i32 0, i32 1
  %77 = call i32 @cx2341x_handler_set_busy(i32* %76, i32 1)
  br label %78

78:                                               ; preds = %71, %50
  %79 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %80 = load i32, i32* @CX2341X_ENC_START_CAPTURE, align 4
  %81 = call i32 (%struct.ivtv*, i32, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %79, i32 %80, i32 2, i32 2, i32 11)
  %82 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %83 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %82, i32 0, i32 2
  %84 = call i32 @atomic_inc(i32* %83)
  store i32 0, i32* %3, align 4
  br label %125

85:                                               ; preds = %30
  %86 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %87 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @OUT_PASSTHROUGH, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %125

92:                                               ; preds = %85
  %93 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %94 = load i32, i32* @CX2341X_ENC_STOP_CAPTURE, align 4
  %95 = call i32 (%struct.ivtv*, i32, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %93, i32 %94, i32 3, i32 1, i32 2, i32 11)
  %96 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %97 = load i32, i32* @CX2341X_DEC_STOP_PLAYBACK, align 4
  %98 = call i32 (%struct.ivtv*, i32, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %96, i32 %97, i32 3, i32 1, i32 0, i32 0)
  %99 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %100 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %99, i32 0, i32 2
  %101 = call i32 @atomic_dec(i32* %100)
  %102 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %103 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %102, i32 0, i32 3
  %104 = call i32 @atomic_dec(i32* %103)
  %105 = load i32, i32* @IVTV_F_S_PASSTHROUGH, align 4
  %106 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %107 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %106, i32 0, i32 0
  %108 = call i32 @clear_bit(i32 %105, i32* %107)
  %109 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %110 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %111 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %110, i32 0, i32 0
  %112 = call i32 @clear_bit(i32 %109, i32* %111)
  %113 = load i64, i64* @OUT_NONE, align 8
  %114 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %115 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %117 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %116, i32 0, i32 2
  %118 = call i64 @atomic_read(i32* %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %92
  %121 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %122 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %121, i32 0, i32 1
  %123 = call i32 @cx2341x_handler_set_busy(i32* %122, i32 0)
  br label %124

124:                                              ; preds = %120, %92
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %91, %78, %47, %40, %27
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @IVTV_DEBUG_INFO(i8*) #1

declare dso_local i64 @ivtv_set_output_mode(%struct.ivtv*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ivtv_setup_v4l2_decode_stream(%struct.ivtv_stream*) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cx2341x_handler_setup(i32*) #1

declare dso_local i32 @cx2341x_handler_set_busy(i32*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
