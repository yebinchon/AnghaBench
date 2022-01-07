; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_prep_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_prep_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32 }
%struct.ivtv_dma_frame = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_yuv_prep_frame(%struct.ivtv* %0, %struct.ivtv_dma_frame* %1) #0 {
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca %struct.ivtv_dma_frame*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store %struct.ivtv_dma_frame* %1, %struct.ivtv_dma_frame** %4, align 8
  %5 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %6 = call i32 @ivtv_yuv_next_free(%struct.ivtv* %5)
  %7 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %8 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %4, align 8
  %9 = call i32 @ivtv_yuv_setup_frame(%struct.ivtv* %7, %struct.ivtv_dma_frame* %8)
  %10 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %11 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %4, align 8
  %12 = call i32 @ivtv_yuv_udma_frame(%struct.ivtv* %10, %struct.ivtv_dma_frame* %11)
  ret i32 %12
}

declare dso_local i32 @ivtv_yuv_next_free(%struct.ivtv*) #1

declare dso_local i32 @ivtv_yuv_setup_frame(%struct.ivtv*, %struct.ivtv_dma_frame*) #1

declare dso_local i32 @ivtv_yuv_udma_frame(%struct.ivtv*, %struct.ivtv_dma_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
