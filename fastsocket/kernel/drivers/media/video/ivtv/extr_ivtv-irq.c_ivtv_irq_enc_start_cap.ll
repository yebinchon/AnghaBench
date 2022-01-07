; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_irq_enc_start_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_irq_enc_start_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.ivtv_stream*, i32 }
%struct.ivtv_stream = type { i32 }

@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@IVTV_MBOX_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ENC START CAP %d: %08x %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unknown input: %08x %08x %08x\0A\00", align 1
@ivtv_stream_map = common dso_local global i64* null, align 8
@IVTV_F_S_PIO_PENDING = common dso_local global i32 0, align 4
@IVTV_F_S_DMA_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*)* @ivtv_irq_enc_start_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_irq_enc_start_cap(%struct.ivtv* %0) #0 {
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
  %12 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %11, i32 0, i32 1
  %13 = load i32, i32* @IVTV_MBOX_DMA, align 4
  %14 = call i32 @ivtv_api_get_data(i32* %12, i32 %13, i32 7, i32* %10)
  %15 = getelementptr inbounds i32, i32* %10, i64 0
  %16 = load i32, i32* %15, align 16
  %17 = getelementptr inbounds i32, i32* %10, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %10, i64 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @IVTV_DEBUG_HI_IRQ(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18, i32 %20)
  %22 = getelementptr inbounds i32, i32* %10, i64 0
  %23 = load i32, i32* %22, align 16
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %33, label %25

25:                                               ; preds = %1
  %26 = getelementptr inbounds i32, i32* %10, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds i32, i32* %10, i64 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29, %25, %1
  %34 = getelementptr inbounds i32, i32* %10, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = getelementptr inbounds i32, i32* %10, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %10, i64 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %37, i32 %39)
  store i32 1, i32* %6, align 4
  br label %69

41:                                               ; preds = %29
  %42 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %43 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %42, i32 0, i32 0
  %44 = load %struct.ivtv_stream*, %struct.ivtv_stream** %43, align 8
  %45 = load i64*, i64** @ivtv_stream_map, align 8
  %46 = getelementptr inbounds i32, i32* %10, i64 0
  %47 = load i32, i32* %46, align 16
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %44, i64 %50
  store %struct.ivtv_stream* %51, %struct.ivtv_stream** %5, align 8
  %52 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %53 = call i32 @stream_enc_dma_append(%struct.ivtv_stream* %52, i32* %10)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %41
  %56 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %57 = call i64 @ivtv_use_pio(%struct.ivtv_stream* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @IVTV_F_S_PIO_PENDING, align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @IVTV_F_S_DMA_PENDING, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %66 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %65, i32 0, i32 0
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  br label %68

68:                                               ; preds = %63, %41
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %33
  %70 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %6, align 4
  switch i32 %71, label %73 [
    i32 0, label %72
    i32 1, label %72
  ]

72:                                               ; preds = %69, %69
  ret void

73:                                               ; preds = %69
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ivtv_api_get_data(i32*, i32, i32, i32*) #2

declare dso_local i32 @IVTV_DEBUG_HI_IRQ(i8*, i32, i32, i32) #2

declare dso_local i32 @IVTV_DEBUG_WARN(i8*, i32, i32, i32) #2

declare dso_local i32 @stream_enc_dma_append(%struct.ivtv_stream*, i32*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i64 @ivtv_use_pio(%struct.ivtv_stream*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
