; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_irq_enc_dma_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_irq_enc_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i64, i32, i32, %struct.ivtv_stream*, i32, i32, i32 }
%struct.ivtv_stream = type { i64, i64, i32, i32 }

@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@IVTV_MBOX_DMA_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ENC DMA COMPLETE %x %d (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"ENC DMA ERROR %x (offset %08x, xfer %d of %d, retry %d)\0A\00", align 1
@IVTV_REG_DMASTATUS = common dso_local global i32 0, align 4
@IVTV_F_I_DMA = common dso_local global i32 0, align 4
@IVTV_F_S_DMA_HAS_VBI = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*)* @ivtv_irq_enc_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_irq_enc_dma_complete(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ivtv_stream*, align 8
  %6 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %7 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %12 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %11, i32 0, i32 6
  %13 = load i32, i32* @IVTV_MBOX_DMA_END, align 4
  %14 = call i32 @ivtv_api_get_data(i32* %12, i32 %13, i32 2, i32* %10)
  %15 = getelementptr inbounds i32, i32* %10, i64 0
  %16 = load i32, i32* %15, align 16
  %17 = getelementptr inbounds i32, i32* %10, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %20 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @IVTV_DEBUG_HI_IRQ(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18, i64 %21)
  %23 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %24 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %23, i32 0, i32 5
  %25 = call i32 @del_timer(i32* %24)
  %26 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %27 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %127

31:                                               ; preds = %1
  %32 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %33 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %32, i32 0, i32 3
  %34 = load %struct.ivtv_stream*, %struct.ivtv_stream** %33, align 8
  %35 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %36 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %34, i64 %37
  store %struct.ivtv_stream* %38, %struct.ivtv_stream** %5, align 8
  %39 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %40 = call i32 @ivtv_stream_sync_for_cpu(%struct.ivtv_stream* %39)
  %41 = getelementptr inbounds i32, i32* %10, i64 0
  %42 = load i32, i32* %41, align 16
  %43 = and i32 %42, 24
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %86

45:                                               ; preds = %31
  %46 = getelementptr inbounds i32, i32* %10, i64 0
  %47 = load i32, i32* %46, align 16
  %48 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %49 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %52 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %55 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %58 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50, i64 %53, i64 %56, i32 %59)
  %61 = load i32, i32* @IVTV_REG_DMASTATUS, align 4
  %62 = call i32 @read_reg(i32 %61)
  %63 = and i32 %62, 3
  %64 = load i32, i32* @IVTV_REG_DMASTATUS, align 4
  %65 = call i32 @write_reg(i32 %63, i32 %64)
  %66 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %67 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %70, label %78

70:                                               ; preds = %45
  %71 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %72 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %71, i32 0, i32 1
  store i32 0, i32* %72, align 8
  %73 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %74 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %77 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %85

78:                                               ; preds = %45
  %79 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %80 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %82 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %78, %70
  br label %86

86:                                               ; preds = %85, %31
  %87 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %88 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %91 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %96 = call i32 @ivtv_dma_enc_start_xfer(%struct.ivtv_stream* %95)
  store i32 1, i32* %6, align 4
  br label %127

97:                                               ; preds = %86
  %98 = load i32, i32* @IVTV_F_I_DMA, align 4
  %99 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %100 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %99, i32 0, i32 4
  %101 = call i32 @clear_bit(i32 %98, i32* %100)
  %102 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %103 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %102, i32 0, i32 0
  store i64 -1, i64* %103, align 8
  %104 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %105 = call i32 @dma_post(%struct.ivtv_stream* %104)
  %106 = load i32, i32* @IVTV_F_S_DMA_HAS_VBI, align 4
  %107 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %108 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %107, i32 0, i32 2
  %109 = call i64 @test_and_clear_bit(i32 %106, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %97
  %112 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %113 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %112, i32 0, i32 3
  %114 = load %struct.ivtv_stream*, %struct.ivtv_stream** %113, align 8
  %115 = load i64, i64* @IVTV_ENC_STREAM_TYPE_VBI, align 8
  %116 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %114, i64 %115
  store %struct.ivtv_stream* %116, %struct.ivtv_stream** %5, align 8
  %117 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %118 = call i32 @dma_post(%struct.ivtv_stream* %117)
  br label %119

119:                                              ; preds = %111, %97
  %120 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %121 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %123 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  %124 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %125 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %124, i32 0, i32 2
  %126 = call i32 @wake_up(i32* %125)
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %119, %94, %30
  %128 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %6, align 4
  switch i32 %129, label %131 [
    i32 0, label %130
    i32 1, label %130
  ]

130:                                              ; preds = %127, %127
  ret void

131:                                              ; preds = %127
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ivtv_api_get_data(i32*, i32, i32, i32*) #2

declare dso_local i32 @IVTV_DEBUG_HI_IRQ(i8*, i32, i32, i64) #2

declare dso_local i32 @del_timer(i32*) #2

declare dso_local i32 @ivtv_stream_sync_for_cpu(%struct.ivtv_stream*) #2

declare dso_local i32 @IVTV_DEBUG_WARN(i8*, i32, i32, i64, i64, i32) #2

declare dso_local i32 @write_reg(i32, i32) #2

declare dso_local i32 @read_reg(i32) #2

declare dso_local i32 @ivtv_dma_enc_start_xfer(%struct.ivtv_stream*) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i32 @dma_post(%struct.ivtv_stream*) #2

declare dso_local i64 @test_and_clear_bit(i32, i32*) #2

declare dso_local i32 @wake_up(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
