; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_irq_dma_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_irq_dma_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i64, i32, i32, i32, %struct.ivtv_stream*, i32 }
%struct.ivtv_stream = type { i64, i64, i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ivtv_buffer = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"DEC DMA READ\0A\00", align 1
@IVTV_F_I_UDMA = common dso_local global i32 0, align 4
@IVTV_REG_DMASTATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"DEC DMA ERROR %x (xfer %d of %d, retry %d)\0A\00", align 1
@IVTV_DEC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"DEC DATA READ %s: %d\0A\00", align 1
@CX2341X_DEC_SCHED_DMA_FROM_HOST = common dso_local global i32 0, align 4
@IVTV_F_I_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*)* @ivtv_irq_dma_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_irq_dma_read(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca %struct.ivtv_stream*, align 8
  %4 = alloca %struct.ivtv_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  store %struct.ivtv_stream* null, %struct.ivtv_stream** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @IVTV_DEBUG_HI_IRQ(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %8 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %7, i32 0, i32 5
  %9 = call i32 @del_timer(i32* %8)
  %10 = load i32, i32* @IVTV_F_I_UDMA, align 4
  %11 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %12 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %11, i32 0, i32 3
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %147

21:                                               ; preds = %15, %1
  %22 = load i32, i32* @IVTV_F_I_UDMA, align 4
  %23 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %24 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %23, i32 0, i32 3
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %133, label %27

27:                                               ; preds = %21
  %28 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %29 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %28, i32 0, i32 4
  %30 = load %struct.ivtv_stream*, %struct.ivtv_stream** %29, align 8
  %31 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %32 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %30, i64 %33
  store %struct.ivtv_stream* %34, %struct.ivtv_stream** %3, align 8
  %35 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %36 = call i32 @ivtv_stream_sync_for_cpu(%struct.ivtv_stream* %35)
  %37 = load i32, i32* @IVTV_REG_DMASTATUS, align 4
  %38 = call i32 @read_reg(i32 %37)
  %39 = and i32 %38, 20
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %27
  %42 = load i32, i32* @IVTV_REG_DMASTATUS, align 4
  %43 = call i32 @read_reg(i32 %42)
  %44 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %45 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %48 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %51 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %43, i64 %46, i64 %49, i32 %52)
  %54 = load i32, i32* @IVTV_REG_DMASTATUS, align 4
  %55 = call i32 @read_reg(i32 %54)
  %56 = and i32 %55, 3
  %57 = load i32, i32* @IVTV_REG_DMASTATUS, align 4
  %58 = call i32 @write_reg(i32 %56, i32 %57)
  %59 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %60 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %71

63:                                               ; preds = %41
  %64 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %65 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %64, i32 0, i32 1
  store i32 0, i32* %65, align 8
  %66 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %67 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %70 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %78

71:                                               ; preds = %41
  %72 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %73 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %75 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %71, %63
  br label %79

79:                                               ; preds = %78, %27
  %80 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %81 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %84 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %89 = call i32 @ivtv_dma_dec_start_xfer(%struct.ivtv_stream* %88)
  br label %147

90:                                               ; preds = %79
  %91 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %92 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IVTV_DEC_STREAM_TYPE_YUV, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 2, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %90
  %98 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %99 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %102 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @IVTV_DEBUG_HI_DMA(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %104)
  %106 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %107 = load i32, i32* @CX2341X_DEC_SCHED_DMA_FROM_HOST, align 4
  %108 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %109 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @ivtv_vapi(%struct.ivtv* %106, i32 %107, i32 3, i32 0, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %120, %97
  %115 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %116 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %117 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %116, i32 0, i32 5
  %118 = call %struct.ivtv_buffer* @ivtv_dequeue(%struct.ivtv_stream* %115, %struct.TYPE_2__* %117)
  store %struct.ivtv_buffer* %118, %struct.ivtv_buffer** %4, align 8
  %119 = icmp ne %struct.ivtv_buffer* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %122 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %4, align 8
  %123 = call i32 @ivtv_buf_sync_for_cpu(%struct.ivtv_stream* %121, %struct.ivtv_buffer* %122)
  %124 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %125 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %4, align 8
  %126 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %127 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %126, i32 0, i32 4
  %128 = call i32 @ivtv_enqueue(%struct.ivtv_stream* %124, %struct.ivtv_buffer* %125, i32* %127)
  br label %114

129:                                              ; preds = %114
  %130 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %131 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %130, i32 0, i32 3
  %132 = call i32 @wake_up(i32* %131)
  br label %133

133:                                              ; preds = %129, %21
  %134 = load i32, i32* @IVTV_F_I_UDMA, align 4
  %135 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %136 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %135, i32 0, i32 3
  %137 = call i32 @clear_bit(i32 %134, i32* %136)
  %138 = load i32, i32* @IVTV_F_I_DMA, align 4
  %139 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %140 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %139, i32 0, i32 3
  %141 = call i32 @clear_bit(i32 %138, i32* %140)
  %142 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %143 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %142, i32 0, i32 0
  store i64 -1, i64* %143, align 8
  %144 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %145 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %144, i32 0, i32 2
  %146 = call i32 @wake_up(i32* %145)
  br label %147

147:                                              ; preds = %133, %87, %20
  ret void
}

declare dso_local i32 @IVTV_DEBUG_HI_IRQ(i8*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ivtv_stream_sync_for_cpu(%struct.ivtv_stream*) #1

declare dso_local i32 @read_reg(i32) #1

declare dso_local i32 @IVTV_DEBUG_WARN(i8*, i32, i64, i64, i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @ivtv_dma_dec_start_xfer(%struct.ivtv_stream*) #1

declare dso_local i32 @IVTV_DEBUG_HI_DMA(i8*, i32, i32) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ivtv_buffer* @ivtv_dequeue(%struct.ivtv_stream*, %struct.TYPE_2__*) #1

declare dso_local i32 @ivtv_buf_sync_for_cpu(%struct.ivtv_stream*, %struct.ivtv_buffer*) #1

declare dso_local i32 @ivtv_enqueue(%struct.ivtv_stream*, %struct.ivtv_buffer*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
