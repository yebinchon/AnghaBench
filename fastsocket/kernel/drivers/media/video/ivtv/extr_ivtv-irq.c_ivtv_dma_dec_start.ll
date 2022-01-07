; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_dma_dec_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_dma_dec_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_2__, i32, %struct.ivtv* }
%struct.TYPE_2__ = type { i64 }
%struct.ivtv = type { i32, i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"start DMA for %s\0A\00", align 1
@IVTV_F_I_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv_stream*)* @ivtv_dma_dec_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_dma_dec_start(%struct.ivtv_stream* %0) #0 {
  %2 = alloca %struct.ivtv_stream*, align 8
  %3 = alloca %struct.ivtv*, align 8
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %2, align 8
  %4 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %5 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %4, i32 0, i32 10
  %6 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  store %struct.ivtv* %6, %struct.ivtv** %3, align 8
  %7 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %8 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %7, i32 0, i32 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %14 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %15 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %14, i32 0, i32 8
  %16 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %17 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %16, i32 0, i32 9
  %18 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %19 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ivtv_queue_move(%struct.ivtv_stream* %13, %struct.TYPE_2__* %15, i32* null, i32* %17, i64 %21)
  br label %23

23:                                               ; preds = %12, %1
  %24 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %25 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %29 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %32 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %35 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memcpy(i32 %30, i32 %33, i32 %39)
  %41 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %42 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %45 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %47 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %49 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %51 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @IVTV_DEBUG_HI_DMA(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %55 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %57 = call i32 @ivtv_dma_dec_start_xfer(%struct.ivtv_stream* %56)
  %58 = load i32, i32* @IVTV_F_I_DMA, align 4
  %59 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %60 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %59, i32 0, i32 1
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  %62 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %63 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %66 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  ret void
}

declare dso_local i32 @ivtv_queue_move(%struct.ivtv_stream*, %struct.TYPE_2__*, i32*, i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @IVTV_DEBUG_HI_DMA(i8*, i32) #1

declare dso_local i32 @ivtv_dma_dec_start_xfer(%struct.ivtv_stream*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
