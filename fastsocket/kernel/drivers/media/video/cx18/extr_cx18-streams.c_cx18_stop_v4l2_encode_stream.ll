; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c_cx18_stop_v4l2_encode_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c_cx18_stop_v4l2_encode_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { i64, i32, i32, i32, %struct.cx18* }
%struct.cx18 = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Stop Capture\0A\00", align 1
@CX18_F_S_STOPPING = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@CX18_CPU_CAPTURE_STOP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"ignoring gop_end: not (yet?) supported by the firmware\0A\00", align 1
@CX18_ENC_STREAM_TYPE_TS = common dso_local global i64 0, align 8
@CX18_F_S_STREAMING = common dso_local global i32 0, align 4
@CX18_CPU_DE_RELEASE_MDL = common dso_local global i32 0, align 4
@CX18_DESTROY_TASK = common dso_local global i32 0, align 4
@CX18_INVALID_TASK_HANDLE = common dso_local global i32 0, align 4
@CX18_DSP0_INTERRUPT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx18*, align 8
  %7 = alloca i64, align 8
  store %struct.cx18_stream* %0, %struct.cx18_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %9 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %8, i32 0, i32 4
  %10 = load %struct.cx18*, %struct.cx18** %9, align 8
  store %struct.cx18* %10, %struct.cx18** %6, align 8
  %11 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %12 = call i32 @cx18_stream_enabled(%struct.cx18_stream* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %113

17:                                               ; preds = %2
  %18 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.cx18*, %struct.cx18** %6, align 8
  %20 = getelementptr inbounds %struct.cx18, %struct.cx18* %19, i32 0, i32 0
  %21 = call i64 @atomic_read(i32* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %113

24:                                               ; preds = %17
  %25 = load i32, i32* @CX18_F_S_STOPPING, align 4
  %26 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %27 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %26, i32 0, i32 2
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  %29 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %30 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CX18_ENC_STREAM_TYPE_MPG, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %24
  %35 = load %struct.cx18*, %struct.cx18** %6, align 8
  %36 = load i32, i32* @CX18_CPU_CAPTURE_STOP, align 4
  %37 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %38 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 (%struct.cx18*, i32, i32, i32, ...) @cx18_vapi(%struct.cx18* %35, i32 %36, i32 2, i32 %39, i32 %43)
  br label %52

45:                                               ; preds = %24
  %46 = load %struct.cx18*, %struct.cx18** %6, align 8
  %47 = load i32, i32* @CX18_CPU_CAPTURE_STOP, align 4
  %48 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %49 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (%struct.cx18*, i32, i32, i32, ...) @cx18_vapi(%struct.cx18* %46, i32 %47, i32 1, i32 %50)
  br label %52

52:                                               ; preds = %45, %34
  %53 = load i64, i64* @jiffies, align 8
  store i64 %53, i64* %7, align 8
  %54 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %55 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CX18_ENC_STREAM_TYPE_MPG, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @CX18_INFO(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59, %52
  %65 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %66 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CX18_ENC_STREAM_TYPE_TS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.cx18*, %struct.cx18** %6, align 8
  %72 = getelementptr inbounds %struct.cx18, %struct.cx18* %71, i32 0, i32 1
  %73 = call i32 @atomic_dec(i32* %72)
  br label %74

74:                                               ; preds = %70, %64
  %75 = load %struct.cx18*, %struct.cx18** %6, align 8
  %76 = getelementptr inbounds %struct.cx18, %struct.cx18* %75, i32 0, i32 0
  %77 = call i32 @atomic_dec(i32* %76)
  %78 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %79 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %80 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %79, i32 0, i32 2
  %81 = call i32 @clear_bit(i32 %78, i32* %80)
  %82 = load %struct.cx18*, %struct.cx18** %6, align 8
  %83 = load i32, i32* @CX18_CPU_DE_RELEASE_MDL, align 4
  %84 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %85 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (%struct.cx18*, i32, i32, i32, ...) @cx18_vapi(%struct.cx18* %82, i32 %83, i32 1, i32 %86)
  %88 = load %struct.cx18*, %struct.cx18** %6, align 8
  %89 = load i32, i32* @CX18_DESTROY_TASK, align 4
  %90 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %91 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (%struct.cx18*, i32, i32, i32, ...) @cx18_vapi(%struct.cx18* %88, i32 %89, i32 1, i32 %92)
  %94 = load i32, i32* @CX18_INVALID_TASK_HANDLE, align 4
  %95 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %96 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @CX18_F_S_STOPPING, align 4
  %98 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %99 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %98, i32 0, i32 2
  %100 = call i32 @clear_bit(i32 %97, i32* %99)
  %101 = load %struct.cx18*, %struct.cx18** %6, align 8
  %102 = getelementptr inbounds %struct.cx18, %struct.cx18* %101, i32 0, i32 0
  %103 = call i64 @atomic_read(i32* %102)
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %74
  store i32 0, i32* %3, align 4
  br label %113

106:                                              ; preds = %74
  %107 = load %struct.cx18*, %struct.cx18** %6, align 8
  %108 = load i32, i32* @CX18_DSP0_INTERRUPT_MASK, align 4
  %109 = call i32 @cx18_write_reg(%struct.cx18* %107, i32 5, i32 %108)
  %110 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %111 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %110, i32 0, i32 1
  %112 = call i32 @wake_up(i32* %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %106, %105, %23, %14
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @cx18_stream_enabled(%struct.cx18_stream*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cx18_vapi(%struct.cx18*, i32, i32, i32, ...) #1

declare dso_local i32 @CX18_INFO(i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cx18_write_reg(%struct.cx18*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
