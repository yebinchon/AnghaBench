; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_irq_enc_pio_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_irq_enc_pio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, %struct.ivtv_stream*, i32 }
%struct.ivtv_stream = type { i64, i32, i32 }

@IVTV_MAX_STREAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ENC PIO COMPLETE %s\0A\00", align 1
@IVTV_F_I_PIO = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@CX2341X_ENC_SCHED_DMA_TO_HOST = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@IVTV_ENC_STREAM_TYPE_PCM = common dso_local global i64 0, align 8
@IVTV_F_S_DMA_HAS_VBI = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*)* @ivtv_irq_enc_pio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_irq_enc_pio_complete(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca %struct.ivtv_stream*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %4 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %5 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %10 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IVTV_MAX_STREAMS, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8, %1
  %15 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %16 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  br label %91

17:                                               ; preds = %8
  %18 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %19 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %18, i32 0, i32 2
  %20 = load %struct.ivtv_stream*, %struct.ivtv_stream** %19, align 8
  %21 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %22 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %20, i64 %24
  store %struct.ivtv_stream* %25, %struct.ivtv_stream** %3, align 8
  %26 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %27 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IVTV_DEBUG_HI_IRQ(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @IVTV_F_I_PIO, align 4
  %31 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %32 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %31, i32 0, i32 3
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  %34 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %35 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %37 = call i32 @dma_post(%struct.ivtv_stream* %36)
  %38 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %39 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IVTV_ENC_STREAM_TYPE_MPG, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %17
  %44 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %45 = load i32, i32* @CX2341X_ENC_SCHED_DMA_TO_HOST, align 4
  %46 = call i32 @ivtv_vapi(%struct.ivtv* %44, i32 %45, i32 3, i32 0, i32 0, i32 0)
  br label %69

47:                                               ; preds = %17
  %48 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %49 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IVTV_ENC_STREAM_TYPE_YUV, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %55 = load i32, i32* @CX2341X_ENC_SCHED_DMA_TO_HOST, align 4
  %56 = call i32 @ivtv_vapi(%struct.ivtv* %54, i32 %55, i32 3, i32 0, i32 0, i32 1)
  br label %68

57:                                               ; preds = %47
  %58 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %59 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IVTV_ENC_STREAM_TYPE_PCM, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %65 = load i32, i32* @CX2341X_ENC_SCHED_DMA_TO_HOST, align 4
  %66 = call i32 @ivtv_vapi(%struct.ivtv* %64, i32 %65, i32 3, i32 0, i32 0, i32 2)
  br label %67

67:                                               ; preds = %63, %57
  br label %68

68:                                               ; preds = %67, %53
  br label %69

69:                                               ; preds = %68, %43
  %70 = load i32, i32* @IVTV_F_I_PIO, align 4
  %71 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %72 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %71, i32 0, i32 3
  %73 = call i32 @clear_bit(i32 %70, i32* %72)
  %74 = load i32, i32* @IVTV_F_S_DMA_HAS_VBI, align 4
  %75 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %76 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %75, i32 0, i32 1
  %77 = call i64 @test_and_clear_bit(i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %69
  %80 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %81 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %80, i32 0, i32 2
  %82 = load %struct.ivtv_stream*, %struct.ivtv_stream** %81, align 8
  %83 = load i64, i64* @IVTV_ENC_STREAM_TYPE_VBI, align 8
  %84 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %82, i64 %83
  store %struct.ivtv_stream* %84, %struct.ivtv_stream** %3, align 8
  %85 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %86 = call i32 @dma_post(%struct.ivtv_stream* %85)
  br label %87

87:                                               ; preds = %79, %69
  %88 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %89 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %88, i32 0, i32 1
  %90 = call i32 @wake_up(i32* %89)
  br label %91

91:                                               ; preds = %87, %14
  ret void
}

declare dso_local i32 @IVTV_DEBUG_HI_IRQ(i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dma_post(%struct.ivtv_stream*) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
