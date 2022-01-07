; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-fileops.c_ivtv_v4l2_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-fileops.c_ivtv_v4l2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.ivtv_open_id = type { i64, i64, i32, %struct.ivtv* }
%struct.ivtv = type { i32, i64, i32, %struct.ivtv_stream*, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.ivtv_stream = type { i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"close %s\0A\00", align 1
@IVTV_ENC_STREAM_TYPE_RAD = common dso_local global i64 0, align 8
@IVTV_F_I_RADIO_USER = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@IVTV_HW_SAA711X = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_crystal_freq = common dso_local global i32 0, align 4
@SAA7115_FREQ_32_11_MHZ = common dso_local global i32 0, align 4
@CX2341X_ENC_MUTE_VIDEO = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@IVTV_DEC_STREAM_TYPE_VOUT = common dso_local global i64 0, align 8
@VIDEO_CMD_STOP_TO_BLACK = common dso_local global i32 0, align 4
@VIDEO_CMD_STOP_IMMEDIATELY = common dso_local global i32 0, align 4
@OUT_NONE = common dso_local global i64 0, align 8
@IVTV_F_S_APPL_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_v4l2_close(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.v4l2_fh*, align 8
  %5 = alloca %struct.ivtv_open_id*, align 8
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca %struct.ivtv_stream*, align 8
  %8 = alloca %struct.ivtv_stream*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  store %struct.v4l2_fh* %11, %struct.v4l2_fh** %4, align 8
  %12 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %13 = call %struct.ivtv_open_id* @fh2id(%struct.v4l2_fh* %12)
  store %struct.ivtv_open_id* %13, %struct.ivtv_open_id** %5, align 8
  %14 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %15 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %14, i32 0, i32 3
  %16 = load %struct.ivtv*, %struct.ivtv** %15, align 8
  store %struct.ivtv* %16, %struct.ivtv** %6, align 8
  %17 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %18 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %17, i32 0, i32 3
  %19 = load %struct.ivtv_stream*, %struct.ivtv_stream** %18, align 8
  %20 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %21 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %19, i64 %22
  store %struct.ivtv_stream* %23, %struct.ivtv_stream** %7, align 8
  %24 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %25 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IVTV_DEBUG_FILE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %29 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %28, i32 0, i32 8
  %30 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %31 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @v4l2_prio_close(i32* %29, i32 %32)
  %34 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %35 = call i32 @v4l2_fh_del(%struct.v4l2_fh* %34)
  %36 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %37 = call i32 @v4l2_fh_exit(%struct.v4l2_fh* %36)
  %38 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %39 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %42 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %1
  %46 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %47 = call i32 @kfree(%struct.ivtv_open_id* %46)
  store i32 0, i32* %2, align 4
  br label %154

48:                                               ; preds = %1
  %49 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %50 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %49, i32 0, i32 2
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %53 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IVTV_ENC_STREAM_TYPE_RAD, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %112

57:                                               ; preds = %48
  %58 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %59 = call i32 @ivtv_mute(%struct.ivtv* %58)
  %60 = load i32, i32* @IVTV_F_I_RADIO_USER, align 4
  %61 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %62 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %61, i32 0, i32 7
  %63 = call i32 @clear_bit(i32 %60, i32* %62)
  %64 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %65 = load i32, i32* @core, align 4
  %66 = load i32, i32* @s_std, align 4
  %67 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %68 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ivtv_call_all(%struct.ivtv* %64, i32 %65, i32 %66, i32 %69)
  %71 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %72 = call i32 @ivtv_audio_set_io(%struct.ivtv* %71)
  %73 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %74 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IVTV_HW_SAA711X, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %57
  %80 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %81 = load i32, i32* @IVTV_HW_SAA711X, align 4
  %82 = load i32, i32* @video, align 4
  %83 = load i32, i32* @s_crystal_freq, align 4
  %84 = load i32, i32* @SAA7115_FREQ_32_11_MHZ, align 4
  %85 = call i32 @ivtv_call_hw(%struct.ivtv* %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 0)
  br label %86

86:                                               ; preds = %79, %57
  %87 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %88 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %87, i32 0, i32 5
  %89 = call i64 @atomic_read(i32* %88)
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %93 = load i32, i32* @CX2341X_ENC_MUTE_VIDEO, align 4
  %94 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %95 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @v4l2_ctrl_g_ctrl(i32 %97)
  %99 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %100 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @v4l2_ctrl_g_ctrl(i32 %102)
  %104 = shl i32 %103, 8
  %105 = or i32 %98, %104
  %106 = call i32 @ivtv_vapi(%struct.ivtv* %92, i32 %93, i32 1, i32 %105)
  br label %107

107:                                              ; preds = %91, %86
  %108 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %109 = call i32 @ivtv_unmute(%struct.ivtv* %108)
  %110 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %111 = call i32 @ivtv_release_stream(%struct.ivtv_stream* %110)
  br label %148

112:                                              ; preds = %48
  %113 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %114 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @IVTV_DEC_STREAM_TYPE_MPG, align 8
  %117 = icmp sge i64 %115, %116
  br i1 %117, label %118, label %144

118:                                              ; preds = %112
  %119 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %120 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %119, i32 0, i32 3
  %121 = load %struct.ivtv_stream*, %struct.ivtv_stream** %120, align 8
  %122 = load i64, i64* @IVTV_DEC_STREAM_TYPE_VOUT, align 8
  %123 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %121, i64 %122
  store %struct.ivtv_stream* %123, %struct.ivtv_stream** %8, align 8
  %124 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %125 = load i32, i32* @VIDEO_CMD_STOP_TO_BLACK, align 4
  %126 = load i32, i32* @VIDEO_CMD_STOP_IMMEDIATELY, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @ivtv_stop_decoding(%struct.ivtv_open_id* %124, i32 %127, i32 0)
  %129 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %130 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @OUT_NONE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %118
  %135 = load i32, i32* @IVTV_F_S_APPL_IO, align 4
  %136 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %137 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %136, i32 0, i32 2
  %138 = call i32 @test_bit(i32 %135, i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %134
  %141 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %142 = call i32 @ivtv_disable_cc(%struct.ivtv* %141)
  br label %143

143:                                              ; preds = %140, %134, %118
  br label %147

144:                                              ; preds = %112
  %145 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %146 = call i32 @ivtv_stop_capture(%struct.ivtv_open_id* %145, i32 0)
  br label %147

147:                                              ; preds = %144, %143
  br label %148

148:                                              ; preds = %147, %107
  %149 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %150 = call i32 @kfree(%struct.ivtv_open_id* %149)
  %151 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %152 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %151, i32 0, i32 2
  %153 = call i32 @mutex_unlock(i32* %152)
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %148, %45
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.ivtv_open_id* @fh2id(%struct.v4l2_fh*) #1

declare dso_local i32 @IVTV_DEBUG_FILE(i8*, i32) #1

declare dso_local i32 @v4l2_prio_close(i32*, i32) #1

declare dso_local i32 @v4l2_fh_del(%struct.v4l2_fh*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.v4l2_fh*) #1

declare dso_local i32 @kfree(%struct.ivtv_open_id*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ivtv_mute(%struct.ivtv*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ivtv_call_all(%struct.ivtv*, i32, i32, i32) #1

declare dso_local i32 @ivtv_audio_set_io(%struct.ivtv*) #1

declare dso_local i32 @ivtv_call_hw(%struct.ivtv*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @ivtv_unmute(%struct.ivtv*) #1

declare dso_local i32 @ivtv_release_stream(%struct.ivtv_stream*) #1

declare dso_local i32 @ivtv_stop_decoding(%struct.ivtv_open_id*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ivtv_disable_cc(%struct.ivtv*) #1

declare dso_local i32 @ivtv_stop_capture(%struct.ivtv_open_id*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
