; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-queue.h_ivtv_use_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-queue.h_ivtv_use_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i64, i64, %struct.ivtv* }
%struct.ivtv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@PCI_DMA_NONE = common dso_local global i64 0, align 8
@SLICED_VBI_PIO = common dso_local global i64 0, align 8
@IVTV_ENC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv_stream*)* @ivtv_use_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_use_pio(%struct.ivtv_stream* %0) #0 {
  %2 = alloca %struct.ivtv_stream*, align 8
  %3 = alloca %struct.ivtv*, align 8
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %2, align 8
  %4 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %5 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %4, i32 0, i32 2
  %6 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  store %struct.ivtv* %6, %struct.ivtv** %3, align 8
  %7 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %8 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PCI_DMA_NONE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %31, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @SLICED_VBI_PIO, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %17 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IVTV_ENC_STREAM_TYPE_VBI, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %23 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %21, %15, %12
  %30 = phi i1 [ false, %15 ], [ false, %12 ], [ %28, %21 ]
  br label %31

31:                                               ; preds = %29, %1
  %32 = phi i1 [ true, %1 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
