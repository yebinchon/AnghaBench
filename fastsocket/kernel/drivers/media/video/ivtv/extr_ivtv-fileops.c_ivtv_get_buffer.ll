; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-fileops.c_ivtv_get_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-fileops.c_ivtv_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_buffer = type { i64, i64, i32 }
%struct.ivtv_stream = type { i64, i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_4__, i32, %struct.ivtv* }
%struct.TYPE_4__ = type { i32 }
%struct.ivtv = type { %struct.TYPE_3__, i64, %struct.ivtv_stream* }
%struct.TYPE_3__ = type { %struct.ivtv_buffer }

@IVTV_ENC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@wait = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@IVTV_F_S_INTERNAL_USE = common dso_local global i32 0, align 4
@IVTV_F_S_APPL_IO = common dso_local global i32 0, align 4
@IVTV_F_B_NEED_BUF_SWAP = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@IVTV_F_S_STREAMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"EOS %s\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"User stopped %s\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ivtv_buffer* (%struct.ivtv_stream*, i32, i32*)* @ivtv_get_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ivtv_buffer* @ivtv_get_buffer(%struct.ivtv_stream* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ivtv_buffer*, align 8
  %5 = alloca %struct.ivtv_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ivtv*, align 8
  %9 = alloca %struct.ivtv_stream*, align 8
  %10 = alloca %struct.ivtv_buffer*, align 8
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %12 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %11, i32 0, i32 8
  %13 = load %struct.ivtv*, %struct.ivtv** %12, align 8
  store %struct.ivtv* %13, %struct.ivtv** %8, align 8
  %14 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %15 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %14, i32 0, i32 2
  %16 = load %struct.ivtv_stream*, %struct.ivtv_stream** %15, align 8
  %17 = load i64, i64* @IVTV_ENC_STREAM_TYPE_VBI, align 8
  %18 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %16, i64 %17
  store %struct.ivtv_stream* %18, %struct.ivtv_stream** %9, align 8
  %19 = load i32, i32* @wait, align 4
  %20 = call i32 @DEFINE_WAIT(i32 %19)
  %21 = load i32*, i32** %7, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %3, %204
  %23 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %24 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IVTV_ENC_STREAM_TYPE_MPG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %94

28:                                               ; preds = %22
  %29 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %30 = call i32 @ivtv_update_pgm_info(%struct.ivtv* %29)
  %31 = load i64, i64* @jiffies, align 8
  %32 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %33 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @msecs_to_jiffies(i32 1000)
  %36 = add nsw i64 %34, %35
  %37 = call i64 @time_after(i64 %31, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load i64, i64* @jiffies, align 8
  %41 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %42 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %44 = call i32 @ivtv_dualwatch(%struct.ivtv* %43)
  br label %45

45:                                               ; preds = %39, %28
  %46 = load i32, i32* @IVTV_F_S_INTERNAL_USE, align 4
  %47 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %48 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %47, i32 0, i32 4
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %45
  %52 = load i32, i32* @IVTV_F_S_APPL_IO, align 4
  %53 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %54 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %53, i32 0, i32 4
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %80, label %57

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %64, %57
  %59 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %60 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %61 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %60, i32 0, i32 3
  %62 = call %struct.ivtv_buffer* @ivtv_dequeue(%struct.ivtv_stream* %59, %struct.TYPE_4__* %61)
  store %struct.ivtv_buffer* %62, %struct.ivtv_buffer** %10, align 8
  %63 = icmp ne %struct.ivtv_buffer* %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %66 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %10, align 8
  %67 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %68 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %71 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ivtv_process_vbi_data(%struct.ivtv* %65, %struct.ivtv_buffer* %66, i32 %69, i64 %72)
  %74 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %75 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %10, align 8
  %76 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %77 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %76, i32 0, i32 7
  %78 = call i32 @ivtv_enqueue(%struct.ivtv_stream* %74, %struct.ivtv_buffer* %75, i32* %77)
  br label %58

79:                                               ; preds = %58
  br label %80

80:                                               ; preds = %79, %51, %45
  %81 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %82 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store %struct.ivtv_buffer* %83, %struct.ivtv_buffer** %10, align 8
  %84 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %10, align 8
  %85 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %10, align 8
  %88 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %10, align 8
  store %struct.ivtv_buffer* %92, %struct.ivtv_buffer** %4, align 8
  br label %205

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93, %22
  %95 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %96 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %97 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %96, i32 0, i32 6
  %98 = call %struct.ivtv_buffer* @ivtv_dequeue(%struct.ivtv_stream* %95, %struct.TYPE_4__* %97)
  store %struct.ivtv_buffer* %98, %struct.ivtv_buffer** %10, align 8
  %99 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %10, align 8
  %100 = icmp ne %struct.ivtv_buffer* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %10, align 8
  store %struct.ivtv_buffer* %102, %struct.ivtv_buffer** %4, align 8
  br label %205

103:                                              ; preds = %94
  %104 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %105 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %106 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %105, i32 0, i32 3
  %107 = call %struct.ivtv_buffer* @ivtv_dequeue(%struct.ivtv_stream* %104, %struct.TYPE_4__* %106)
  store %struct.ivtv_buffer* %107, %struct.ivtv_buffer** %10, align 8
  %108 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %10, align 8
  %109 = icmp ne %struct.ivtv_buffer* %108, null
  br i1 %109, label %110, label %153

110:                                              ; preds = %103
  %111 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %10, align 8
  %112 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @IVTV_F_B_NEED_BUF_SWAP, align 4
  %115 = and i32 %113, %114
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %10, align 8
  store %struct.ivtv_buffer* %118, %struct.ivtv_buffer** %4, align 8
  br label %205

119:                                              ; preds = %110
  %120 = load i32, i32* @IVTV_F_B_NEED_BUF_SWAP, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %10, align 8
  %123 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %127 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @IVTV_ENC_STREAM_TYPE_MPG, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %119
  %132 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %10, align 8
  %133 = call i32 @ivtv_buf_swap(%struct.ivtv_buffer* %132)
  br label %151

134:                                              ; preds = %119
  %135 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %136 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @IVTV_DEC_STREAM_TYPE_VBI, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %134
  %141 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %142 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %10, align 8
  %143 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %144 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %147 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @ivtv_process_vbi_data(%struct.ivtv* %141, %struct.ivtv_buffer* %142, i32 %145, i64 %148)
  br label %150

150:                                              ; preds = %140, %134
  br label %151

151:                                              ; preds = %150, %131
  %152 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %10, align 8
  store %struct.ivtv_buffer* %152, %struct.ivtv_buffer** %4, align 8
  br label %205

153:                                              ; preds = %103
  %154 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %155 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @IVTV_DEC_STREAM_TYPE_VBI, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %153
  %160 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %161 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %162 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %161, i32 0, i32 4
  %163 = call i64 @test_bit(i32 %160, i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %159
  %166 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %167 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %168)
  store %struct.ivtv_buffer* null, %struct.ivtv_buffer** %4, align 8
  br label %205

170:                                              ; preds = %159, %153
  %171 = load i32, i32* %6, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load i32, i32* @EAGAIN, align 4
  %175 = sub nsw i32 0, %174
  %176 = load i32*, i32** %7, align 8
  store i32 %175, i32* %176, align 4
  store %struct.ivtv_buffer* null, %struct.ivtv_buffer** %4, align 8
  br label %205

177:                                              ; preds = %170
  %178 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %179 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %178, i32 0, i32 2
  %180 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %181 = call i32 @prepare_to_wait(i32* %179, i32* @wait, i32 %180)
  %182 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %183 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %177
  %188 = call i32 (...) @schedule()
  br label %189

189:                                              ; preds = %187, %177
  %190 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %191 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %190, i32 0, i32 2
  %192 = call i32 @finish_wait(i32* %191, i32* @wait)
  %193 = load i32, i32* @current, align 4
  %194 = call i64 @signal_pending(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %189
  %197 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %198 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* @EINTR, align 4
  %202 = sub nsw i32 0, %201
  %203 = load i32*, i32** %7, align 8
  store i32 %202, i32* %203, align 4
  store %struct.ivtv_buffer* null, %struct.ivtv_buffer** %4, align 8
  br label %205

204:                                              ; preds = %189
  br label %22

205:                                              ; preds = %196, %173, %165, %151, %117, %101, %91
  %206 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %4, align 8
  ret %struct.ivtv_buffer* %206
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @ivtv_update_pgm_info(%struct.ivtv*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ivtv_dualwatch(%struct.ivtv*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.ivtv_buffer* @ivtv_dequeue(%struct.ivtv_stream*, %struct.TYPE_4__*) #1

declare dso_local i32 @ivtv_process_vbi_data(%struct.ivtv*, %struct.ivtv_buffer*, i32, i64) #1

declare dso_local i32 @ivtv_enqueue(%struct.ivtv_stream*, %struct.ivtv_buffer*, i32*) #1

declare dso_local i32 @ivtv_buf_swap(%struct.ivtv_buffer*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
