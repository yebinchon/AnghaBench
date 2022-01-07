; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_video_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_video_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32, i32, i32, %struct.ivtv_stream* }
%struct.ivtv_stream = type { i32 }
%struct.ivtv_open_id = type { i32 }
%struct.video_command = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VIDEO_PLAY_FMT_GOP = common dso_local global i32 0, align 4
@OUT_MPG = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IVTV_F_I_DEC_PAUSED = common dso_local global i32 0, align 4
@VIDEO_CMD_STOP_IMMEDIATELY = common dso_local global i32 0, align 4
@VIDEO_CMD_STOP_TO_BLACK = common dso_local global i32 0, align 4
@OUT_NONE = common dso_local global i32 0, align 4
@VIDEO_CMD_FREEZE_TO_BLACK = common dso_local global i32 0, align 4
@CX2341X_DEC_PAUSE_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, %struct.ivtv_open_id*, %struct.video_command*, i32)* @ivtv_video_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_video_command(%struct.ivtv* %0, %struct.ivtv_open_id* %1, %struct.video_command* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca %struct.ivtv_open_id*, align 8
  %8 = alloca %struct.video_command*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ivtv_stream*, align 8
  %11 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %6, align 8
  store %struct.ivtv_open_id* %1, %struct.ivtv_open_id** %7, align 8
  store %struct.video_command* %2, %struct.video_command** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %13 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %12, i32 0, i32 5
  %14 = load %struct.ivtv_stream*, %struct.ivtv_stream** %13, align 8
  %15 = load i64, i64* @IVTV_DEC_STREAM_TYPE_MPG, align 8
  %16 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %14, i64 %15
  store %struct.ivtv_stream* %16, %struct.ivtv_stream** %10, align 8
  %17 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %18 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %208

26:                                               ; preds = %4
  %27 = load %struct.video_command*, %struct.video_command** %8, align 8
  %28 = getelementptr inbounds %struct.video_command, %struct.video_command* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %204 [
    i32 129, label %30
    i32 128, label %83
    i32 130, label %133
    i32 131, label %173
  ]

30:                                               ; preds = %26
  %31 = load %struct.video_command*, %struct.video_command** %8, align 8
  %32 = getelementptr inbounds %struct.video_command, %struct.video_command* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %34 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.video_command*, %struct.video_command** %8, align 8
  %37 = getelementptr inbounds %struct.video_command, %struct.video_command* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ivtv_validate_speed(i32 %35, i32 %39)
  %41 = load %struct.video_command*, %struct.video_command** %8, align 8
  %42 = getelementptr inbounds %struct.video_command, %struct.video_command* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.video_command*, %struct.video_command** %8, align 8
  %45 = getelementptr inbounds %struct.video_command, %struct.video_command* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load i32, i32* @VIDEO_PLAY_FMT_GOP, align 4
  %51 = load %struct.video_command*, %struct.video_command** %8, align 8
  %52 = getelementptr inbounds %struct.video_command, %struct.video_command* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %30
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %207

58:                                               ; preds = %54
  %59 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %60 = load i32, i32* @OUT_MPG, align 4
  %61 = call i32 @ivtv_set_output_mode(%struct.ivtv* %59, i32 %60)
  %62 = load i32, i32* @OUT_MPG, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %208

67:                                               ; preds = %58
  %68 = load i32, i32* @IVTV_F_I_DEC_PAUSED, align 4
  %69 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %70 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %69, i32 0, i32 2
  %71 = call i32 @test_and_clear_bit(i32 %68, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %75 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %67
  %77 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %7, align 8
  %78 = load %struct.video_command*, %struct.video_command** %8, align 8
  %79 = getelementptr inbounds %struct.video_command, %struct.video_command* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ivtv_start_decoding(%struct.ivtv_open_id* %77, i32 %81)
  store i32 %82, i32* %5, align 4
  br label %208

83:                                               ; preds = %26
  %84 = load i32, i32* @VIDEO_CMD_STOP_IMMEDIATELY, align 4
  %85 = load i32, i32* @VIDEO_CMD_STOP_TO_BLACK, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.video_command*, %struct.video_command** %8, align 8
  %88 = getelementptr inbounds %struct.video_command, %struct.video_command* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.video_command*, %struct.video_command** %8, align 8
  %92 = getelementptr inbounds %struct.video_command, %struct.video_command* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @VIDEO_CMD_STOP_IMMEDIATELY, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %83
  %98 = load %struct.video_command*, %struct.video_command** %8, align 8
  %99 = getelementptr inbounds %struct.video_command, %struct.video_command* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %83
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %207

105:                                              ; preds = %101
  %106 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %107 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %106, i32 0, i32 4
  %108 = call i32 @atomic_read(i32* %107)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %208

111:                                              ; preds = %105
  %112 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %113 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @OUT_MPG, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i32, i32* @EBUSY, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %5, align 4
  br label %208

120:                                              ; preds = %111
  %121 = load i32, i32* @OUT_NONE, align 4
  %122 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %123 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load %struct.ivtv_stream*, %struct.ivtv_stream** %10, align 8
  %125 = load %struct.video_command*, %struct.video_command** %8, align 8
  %126 = getelementptr inbounds %struct.video_command, %struct.video_command* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.video_command*, %struct.video_command** %8, align 8
  %129 = getelementptr inbounds %struct.video_command, %struct.video_command* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ivtv_stop_v4l2_decode_stream(%struct.ivtv_stream* %124, i32 %127, i32 %131)
  store i32 %132, i32* %5, align 4
  br label %208

133:                                              ; preds = %26
  %134 = load i32, i32* @VIDEO_CMD_FREEZE_TO_BLACK, align 4
  %135 = load %struct.video_command*, %struct.video_command** %8, align 8
  %136 = getelementptr inbounds %struct.video_command, %struct.video_command* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %207

142:                                              ; preds = %133
  %143 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %144 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @OUT_MPG, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i32, i32* @EBUSY, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %5, align 4
  br label %208

151:                                              ; preds = %142
  %152 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %153 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %152, i32 0, i32 4
  %154 = call i32 @atomic_read(i32* %153)
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %151
  %157 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %158 = load i32, i32* @CX2341X_DEC_PAUSE_PLAYBACK, align 4
  %159 = load %struct.video_command*, %struct.video_command** %8, align 8
  %160 = getelementptr inbounds %struct.video_command, %struct.video_command* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @VIDEO_CMD_FREEZE_TO_BLACK, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 1, i32 0
  %167 = call i32 @ivtv_vapi(%struct.ivtv* %157, i32 %158, i32 1, i32 %166)
  %168 = load i32, i32* @IVTV_F_I_DEC_PAUSED, align 4
  %169 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %170 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %169, i32 0, i32 2
  %171 = call i32 @set_bit(i32 %168, i32* %170)
  br label %172

172:                                              ; preds = %156, %151
  br label %207

173:                                              ; preds = %26
  %174 = load %struct.video_command*, %struct.video_command** %8, align 8
  %175 = getelementptr inbounds %struct.video_command, %struct.video_command* %174, i32 0, i32 1
  store i32 0, i32* %175, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %207

179:                                              ; preds = %173
  %180 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %181 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @OUT_MPG, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load i32, i32* @EBUSY, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %5, align 4
  br label %208

188:                                              ; preds = %179
  %189 = load i32, i32* @IVTV_F_I_DEC_PAUSED, align 4
  %190 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %191 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %190, i32 0, i32 2
  %192 = call i32 @test_and_clear_bit(i32 %189, i32* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %188
  %195 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %196 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %11, align 4
  %198 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %199 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %198, i32 0, i32 1
  store i32 0, i32* %199, align 4
  %200 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %7, align 8
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @ivtv_start_decoding(%struct.ivtv_open_id* %200, i32 %201)
  store i32 %202, i32* %5, align 4
  br label %208

203:                                              ; preds = %188
  br label %207

204:                                              ; preds = %26
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %5, align 4
  br label %208

207:                                              ; preds = %203, %178, %172, %141, %104, %57
  store i32 0, i32* %5, align 4
  br label %208

208:                                              ; preds = %207, %204, %194, %185, %148, %120, %117, %110, %76, %64, %23
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i32 @ivtv_validate_speed(i32, i32) #1

declare dso_local i32 @ivtv_set_output_mode(%struct.ivtv*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ivtv_start_decoding(%struct.ivtv_open_id*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ivtv_stop_v4l2_decode_stream(%struct.ivtv_stream*, i32, i32) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
