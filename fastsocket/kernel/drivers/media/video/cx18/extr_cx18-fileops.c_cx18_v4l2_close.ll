; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-fileops.c_cx18_v4l2_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-fileops.c_cx18_v4l2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx18_open_id* }
%struct.cx18_open_id = type { i64, i64, i32, %struct.cx18* }
%struct.cx18 = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, %struct.cx18_stream* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cx18_stream = type { i64, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"close() of %s\0A\00", align 1
@CX18_ENC_STREAM_TYPE_RAD = common dso_local global i64 0, align 8
@CX18_F_I_RADIO_USER = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@CX18_CPU_SET_VIDEO_MUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_v4l2_close(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.cx18_open_id*, align 8
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca %struct.cx18_stream*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  store %struct.cx18_open_id* %9, %struct.cx18_open_id** %4, align 8
  %10 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %11 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %10, i32 0, i32 3
  %12 = load %struct.cx18*, %struct.cx18** %11, align 8
  store %struct.cx18* %12, %struct.cx18** %5, align 8
  %13 = load %struct.cx18*, %struct.cx18** %5, align 8
  %14 = getelementptr inbounds %struct.cx18, %struct.cx18* %13, i32 0, i32 6
  %15 = load %struct.cx18_stream*, %struct.cx18_stream** %14, align 8
  %16 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %17 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %15, i64 %18
  store %struct.cx18_stream* %19, %struct.cx18_stream** %6, align 8
  %20 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %21 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CX18_DEBUG_IOCTL(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.cx18*, %struct.cx18** %5, align 8
  %25 = getelementptr inbounds %struct.cx18, %struct.cx18* %24, i32 0, i32 5
  %26 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %27 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @v4l2_prio_close(i32* %25, i32 %28)
  %30 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %31 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %34 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %39 = call i32 @kfree(%struct.cx18_open_id* %38)
  store i32 0, i32* %2, align 4
  br label %100

40:                                               ; preds = %1
  %41 = load %struct.cx18*, %struct.cx18** %5, align 8
  %42 = getelementptr inbounds %struct.cx18, %struct.cx18* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %45 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CX18_ENC_STREAM_TYPE_RAD, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %91

49:                                               ; preds = %40
  %50 = load %struct.cx18*, %struct.cx18** %5, align 8
  %51 = call i32 @cx18_mute(%struct.cx18* %50)
  %52 = load i32, i32* @CX18_F_I_RADIO_USER, align 4
  %53 = load %struct.cx18*, %struct.cx18** %5, align 8
  %54 = getelementptr inbounds %struct.cx18, %struct.cx18* %53, i32 0, i32 4
  %55 = call i32 @clear_bit(i32 %52, i32* %54)
  %56 = load %struct.cx18*, %struct.cx18** %5, align 8
  %57 = load i32, i32* @core, align 4
  %58 = load i32, i32* @s_std, align 4
  %59 = load %struct.cx18*, %struct.cx18** %5, align 8
  %60 = getelementptr inbounds %struct.cx18, %struct.cx18* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @cx18_call_all(%struct.cx18* %56, i32 %57, i32 %58, i32 %61)
  %63 = load %struct.cx18*, %struct.cx18** %5, align 8
  %64 = call i32 @cx18_audio_set_io(%struct.cx18* %63)
  %65 = load %struct.cx18*, %struct.cx18** %5, align 8
  %66 = getelementptr inbounds %struct.cx18, %struct.cx18* %65, i32 0, i32 2
  %67 = call i64 @atomic_read(i32* %66)
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %49
  %70 = load %struct.cx18*, %struct.cx18** %5, align 8
  %71 = load i32, i32* @CX18_CPU_SET_VIDEO_MUTE, align 4
  %72 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %73 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.cx18*, %struct.cx18** %5, align 8
  %76 = getelementptr inbounds %struct.cx18, %struct.cx18* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.cx18*, %struct.cx18** %5, align 8
  %80 = getelementptr inbounds %struct.cx18, %struct.cx18* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = or i32 %78, %83
  %85 = call i32 @cx18_vapi(%struct.cx18* %70, i32 %71, i32 2, i32 %74, i32 %84)
  br label %86

86:                                               ; preds = %69, %49
  %87 = load %struct.cx18*, %struct.cx18** %5, align 8
  %88 = call i32 @cx18_unmute(%struct.cx18* %87)
  %89 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %90 = call i32 @cx18_release_stream(%struct.cx18_stream* %89)
  br label %94

91:                                               ; preds = %40
  %92 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %93 = call i32 @cx18_stop_capture(%struct.cx18_open_id* %92, i32 0)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %96 = call i32 @kfree(%struct.cx18_open_id* %95)
  %97 = load %struct.cx18*, %struct.cx18** %5, align 8
  %98 = getelementptr inbounds %struct.cx18, %struct.cx18* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %94, %37
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @CX18_DEBUG_IOCTL(i8*, i32) #1

declare dso_local i32 @v4l2_prio_close(i32*, i32) #1

declare dso_local i32 @kfree(%struct.cx18_open_id*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx18_mute(%struct.cx18*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cx18_call_all(%struct.cx18*, i32, i32, i32) #1

declare dso_local i32 @cx18_audio_set_io(%struct.cx18*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cx18_vapi(%struct.cx18*, i32, i32, i32, i32) #1

declare dso_local i32 @cx18_unmute(%struct.cx18*) #1

declare dso_local i32 @cx18_release_stream(%struct.cx18_stream*) #1

declare dso_local i32 @cx18_stop_capture(%struct.cx18_open_id*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
