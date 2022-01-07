; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_start_v4l2_decode_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_start_v4l2_decode_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i32, i32, i32*, %struct.ivtv* }
%struct.ivtv = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Starting decode stream %s (gop_offset %d)\0A\00", align 1
@CX2341X_DEC_SET_DMA_BLOCK_SIZE = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMOFF = common dso_local global i32 0, align 4
@IVTV_MBOX_DMA_END = common dso_local global i64 0, align 8
@IVTV_MBOX_DMA = common dso_local global i64 0, align 8
@CX2341X_DEC_SET_EVENT_NOTIFICATION = common dso_local global i32 0, align 4
@IVTV_IRQ_DEC_AUD_MODE_CHG = common dso_local global i32 0, align 4
@CX2341X_DEC_START_PLAYBACK = common dso_local global i32 0, align 4
@IVTV_IRQ_MASK_DECODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"IRQ Mask is now: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_start_v4l2_decode_stream(%struct.ivtv_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca i32, align 4
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %9 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %8, i32 0, i32 3
  %10 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  store %struct.ivtv* %10, %struct.ivtv** %6, align 8
  %11 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %12 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %148

18:                                               ; preds = %2
  %19 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %20 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %21 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %20, i32 0, i32 0
  %22 = call i64 @test_and_set_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %148

25:                                               ; preds = %18
  %26 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %27 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %32 = call i32 @ivtv_setup_v4l2_decode_stream(%struct.ivtv_stream* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %37 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %38 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %37, i32 0, i32 0
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %148

41:                                               ; preds = %25
  %42 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %43 = load i32, i32* @CX2341X_DEC_SET_DMA_BLOCK_SIZE, align 4
  %44 = call i32 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %42, i32 %43, i32 1, i32 65536)
  %45 = load i32, i32* @IVTV_F_S_STREAMOFF, align 4
  %46 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %47 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %46, i32 0, i32 0
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  %49 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %50 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i64, i64* @IVTV_MBOX_DMA_END, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = call i32 @writel(i32 0, i32* %57)
  %59 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %60 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i64, i64* @IVTV_MBOX_DMA_END, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = call i32 @writel(i32 0, i32* %67)
  %69 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %70 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i64, i64* @IVTV_MBOX_DMA_END, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = call i32 @writel(i32 0, i32* %77)
  %79 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %80 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i64, i64* @IVTV_MBOX_DMA_END, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = call i32 @writel(i32 0, i32* %87)
  %89 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %90 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i64, i64* @IVTV_MBOX_DMA, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = call i32 @writel(i32 0, i32* %97)
  %99 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %100 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i64, i64* @IVTV_MBOX_DMA, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = call i32 @writel(i32 0, i32* %107)
  %109 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %110 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i64, i64* @IVTV_MBOX_DMA, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = call i32 @writel(i32 0, i32* %117)
  %119 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %120 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load i64, i64* @IVTV_MBOX_DMA, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = call i32 @writel(i32 0, i32* %127)
  %129 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %130 = load i32, i32* @CX2341X_DEC_SET_EVENT_NOTIFICATION, align 4
  %131 = load i32, i32* @IVTV_IRQ_DEC_AUD_MODE_CHG, align 4
  %132 = call i32 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %129, i32 %130, i32 4, i32 0, i32 1, i32 %131, i32 -1)
  %133 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %134 = load i32, i32* @CX2341X_DEC_START_PLAYBACK, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i32 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %133, i32 %134, i32 2, i32 %135, i32 0)
  %137 = call i32 @ivtv_msleep_timeout(i32 10, i32 0)
  %138 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %139 = load i32, i32* @IVTV_IRQ_MASK_DECODE, align 4
  %140 = call i32 @ivtv_clear_irq_mask(%struct.ivtv* %138, i32 %139)
  %141 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %142 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @IVTV_DEBUG_IRQ(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  %145 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %146 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %145, i32 0, i32 0
  %147 = call i32 @atomic_inc(i32* %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %41, %35, %24, %15
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, i32, i32) #1

declare dso_local i32 @ivtv_setup_v4l2_decode_stream(%struct.ivtv_stream*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32, ...) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @ivtv_msleep_timeout(i32, i32) #1

declare dso_local i32 @ivtv_clear_irq_mask(%struct.ivtv*, i32) #1

declare dso_local i32 @IVTV_DEBUG_IRQ(i8*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
