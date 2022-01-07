; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_set_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.ivtv_stream* }
%struct.TYPE_2__ = type { i32 }
%struct.ivtv_stream = type { i32 }

@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@CX2341X_DEC_STEP_VIDEO = common dso_local global i32 0, align 4
@CX2341X_DEC_PAUSE_PLAYBACK = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@IVTV_F_I_DMA = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@CX2341X_DEC_SET_PLAYBACK_SPEED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Setting Speed to 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_set_speed(%struct.ivtv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ivtv_stream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, -1
  br label %21

21:                                               ; preds = %18, %2
  %22 = phi i1 [ true, %2 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @wait, align 4
  %25 = call i32 @DEFINE_WAIT(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1000, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %32 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %241

39:                                               ; preds = %35, %29
  %40 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %41 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %40, i32 0, i32 6
  %42 = load %struct.ivtv_stream*, %struct.ivtv_stream** %41, align 8
  %43 = load i64, i64* @IVTV_DEC_STREAM_TYPE_MPG, align 8
  %44 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %42, i64 %43
  store %struct.ivtv_stream* %44, %struct.ivtv_stream** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %52 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = icmp eq i32 %50, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %47
  %58 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %59 = load i32, i32* @CX2341X_DEC_STEP_VIDEO, align 4
  %60 = call i32 @ivtv_vapi(%struct.ivtv* %58, i32 %59, i32 1, i32 0)
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %63 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %241

64:                                               ; preds = %47, %39
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 -1000, i32 1000
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %67, %64
  %73 = load i32, i32* %5, align 4
  %74 = icmp sgt i32 %73, 1000
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, -1000
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i1 [ true, %72 ], [ %77, %75 ]
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 -2147483648, i32 0
  %82 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %81, i32* %82, align 16
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %83, 1000
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, -1500
  br label %88

88:                                               ; preds = %85, %78
  %89 = phi i1 [ true, %78 ], [ %87, %85 ]
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1073741824, i32 0
  %92 = getelementptr inbounds i32, i32* %15, i64 0
  %93 = load i32, i32* %92, align 16
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 16
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 3, i32 7
  %103 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 %102, i32* %103, align 8
  %104 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %105 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @v4l2_ctrl_g_ctrl(i32 %107)
  %109 = getelementptr inbounds i32, i32* %15, i64 3
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %110, 1500
  br i1 %111, label %115, label %112

112:                                              ; preds = %88
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %113, 500
  br i1 %114, label %115, label %119

115:                                              ; preds = %112, %88
  %116 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %117 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  br label %120

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %115
  %121 = phi i32 [ %118, %115 ], [ 0, %119 ]
  %122 = getelementptr inbounds i32, i32* %15, i64 4
  store i32 %121, i32* %122, align 16
  %123 = getelementptr inbounds i32, i32* %15, i64 5
  store i32 0, i32* %123, align 4
  %124 = getelementptr inbounds i32, i32* %15, i64 6
  store i32 0, i32* %124, align 8
  %125 = load i32, i32* %5, align 4
  %126 = icmp eq i32 %125, 1500
  br i1 %126, label %130, label %127

127:                                              ; preds = %120
  %128 = load i32, i32* %5, align 4
  %129 = icmp eq i32 %128, -1500
  br i1 %129, label %130, label %134

130:                                              ; preds = %127, %120
  %131 = getelementptr inbounds i32, i32* %15, i64 0
  %132 = load i32, i32* %131, align 16
  %133 = or i32 %132, 1
  store i32 %133, i32* %131, align 16
  br label %171

134:                                              ; preds = %127
  %135 = load i32, i32* %5, align 4
  %136 = icmp eq i32 %135, 2000
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %5, align 4
  %139 = icmp eq i32 %138, -2000
  br i1 %139, label %140, label %144

140:                                              ; preds = %137, %134
  %141 = getelementptr inbounds i32, i32* %15, i64 0
  %142 = load i32, i32* %141, align 16
  %143 = or i32 %142, 2
  store i32 %143, i32* %141, align 16
  br label %170

144:                                              ; preds = %137
  %145 = load i32, i32* %5, align 4
  %146 = icmp sgt i32 %145, -1000
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = load i32, i32* %5, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i32, i32* %5, align 4
  %152 = sdiv i32 -1000, %151
  %153 = getelementptr inbounds i32, i32* %15, i64 0
  %154 = load i32, i32* %153, align 16
  %155 = or i32 %154, %152
  store i32 %155, i32* %153, align 16
  br label %169

156:                                              ; preds = %147, %144
  %157 = load i32, i32* %5, align 4
  %158 = icmp slt i32 %157, 1000
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load i32, i32* %5, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i32, i32* %5, align 4
  %164 = sdiv i32 1000, %163
  %165 = getelementptr inbounds i32, i32* %15, i64 0
  %166 = load i32, i32* %165, align 16
  %167 = or i32 %166, %164
  store i32 %167, i32* %165, align 16
  br label %168

168:                                              ; preds = %162, %159, %156
  br label %169

169:                                              ; preds = %168, %150
  br label %170

170:                                              ; preds = %169, %140
  br label %171

171:                                              ; preds = %170, %130
  %172 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %173 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %172, i32 0, i32 4
  %174 = call i64 @atomic_read(i32* %173)
  %175 = icmp sgt i64 %174, 0
  br i1 %175, label %176, label %226

176:                                              ; preds = %171
  store i32 0, i32* %11, align 4
  %177 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %178 = load i32, i32* @CX2341X_DEC_PAUSE_PLAYBACK, align 4
  %179 = call i32 @ivtv_vapi(%struct.ivtv* %177, i32 %178, i32 1, i32 0)
  %180 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %181 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %180, i32 0, i32 2
  %182 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %183 = call i32 @prepare_to_wait(i32* %181, i32* @wait, i32 %182)
  br label %184

184:                                              ; preds = %196, %176
  %185 = load i32, i32* @IVTV_F_I_DMA, align 4
  %186 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %187 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %186, i32 0, i32 3
  %188 = call i64 @test_bit(i32 %185, i32* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %184
  %191 = load i32, i32* @current, align 4
  %192 = call i32 @signal_pending(i32 %191)
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %198

196:                                              ; preds = %190
  store i32 0, i32* %11, align 4
  %197 = call i32 (...) @schedule()
  br label %184

198:                                              ; preds = %195, %184
  %199 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %200 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %199, i32 0, i32 2
  %201 = call i32 @finish_wait(i32* %200, i32* @wait)
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = load i32, i32* @EINTR, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %241

207:                                              ; preds = %198
  %208 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %209 = load i32, i32* @CX2341X_DEC_SET_PLAYBACK_SPEED, align 4
  %210 = call i32 @ivtv_api(%struct.ivtv* %208, i32 %209, i32 7, i32* %15)
  %211 = getelementptr inbounds i32, i32* %15, i64 0
  %212 = load i32, i32* %211, align 16
  %213 = getelementptr inbounds i32, i32* %15, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds i32, i32* %15, i64 2
  %216 = load i32, i32* %215, align 8
  %217 = getelementptr inbounds i32, i32* %15, i64 3
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds i32, i32* %15, i64 4
  %220 = load i32, i32* %219, align 16
  %221 = getelementptr inbounds i32, i32* %15, i64 5
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds i32, i32* %15, i64 6
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %212, i32 %214, i32 %216, i32 %218, i32 %220, i32 %222, i32 %224)
  br label %226

226:                                              ; preds = %207, %171
  %227 = load i32, i32* %9, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %226
  %230 = load i32, i32* %5, align 4
  %231 = icmp slt i32 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 -1, i32 1
  store i32 %233, i32* %5, align 4
  %234 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %235 = load i32, i32* @CX2341X_DEC_STEP_VIDEO, align 4
  %236 = call i32 @ivtv_vapi(%struct.ivtv* %234, i32 %235, i32 1, i32 0)
  br label %237

237:                                              ; preds = %229, %226
  %238 = load i32, i32* %5, align 4
  %239 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %240 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %241

241:                                              ; preds = %237, %204, %57, %38
  %242 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %242)
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DEFINE_WAIT(i32) #2

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32) #2

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @signal_pending(i32) #2

declare dso_local i32 @schedule(...) #2

declare dso_local i32 @finish_wait(i32*, i32*) #2

declare dso_local i32 @ivtv_api(%struct.ivtv*, i32, i32, i32*) #2

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
