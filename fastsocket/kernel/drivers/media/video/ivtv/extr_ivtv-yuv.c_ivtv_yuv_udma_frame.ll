; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_udma_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_udma_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ivtv_dma_frame = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@IVTV_F_I_UDMA_PENDING = common dso_local global i32 0, align 4
@IVTV_F_I_UDMA = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"User stopped YUV UDMA\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, %struct.ivtv_dma_frame*)* @ivtv_yuv_udma_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_yuv_udma_frame(%struct.ivtv* %0, %struct.ivtv_dma_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca %struct.ivtv_dma_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store %struct.ivtv_dma_frame* %1, %struct.ivtv_dma_frame** %5, align 8
  %8 = load i32, i32* @wait, align 4
  %9 = call i32 @DEFINE_WAIT(i32 %8)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %11 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %15 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %16 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %15, i32 0, i32 0
  %17 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %5, align 8
  %18 = call i32 @ivtv_yuv_prep_user_dma(%struct.ivtv* %14, %struct.TYPE_2__* %16, %struct.ivtv_dma_frame* %17)
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %22 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %85

26:                                               ; preds = %2
  %27 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %28 = call i32 @ivtv_udma_prepare(%struct.ivtv* %27)
  %29 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %30 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %29, i32 0, i32 1
  %31 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %32 = call i32 @prepare_to_wait(i32* %30, i32* @wait, i32 %31)
  br label %33

33:                                               ; preds = %59, %26
  %34 = load i32, i32* @IVTV_F_I_UDMA_PENDING, align 4
  %35 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %36 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %35, i32 0, i32 2
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @IVTV_F_I_UDMA, align 4
  %41 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %42 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %41, i32 0, i32 2
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %39, %33
  %46 = phi i1 [ true, %33 ], [ %44, %39 ]
  br i1 %46, label %47, label %61

47:                                               ; preds = %45
  %48 = load i32, i32* @current, align 4
  %49 = call i32 @signal_pending(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* @IVTV_F_I_UDMA_PENDING, align 4
  %54 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %55 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %54, i32 0, i32 2
  %56 = call i64 @test_and_clear_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %61

59:                                               ; preds = %52, %47
  store i32 0, i32* %7, align 4
  %60 = call i32 (...) @schedule()
  br label %33

61:                                               ; preds = %58, %45
  %62 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %63 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %62, i32 0, i32 1
  %64 = call i32 @finish_wait(i32* %63, i32* @wait)
  %65 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %66 = call i32 @ivtv_udma_unmap(%struct.ivtv* %65)
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %72 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* @EINTR, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %85

77:                                               ; preds = %61
  %78 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %79 = call i32 @ivtv_yuv_frame_complete(%struct.ivtv* %78)
  %80 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %81 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %77, %69, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ivtv_yuv_prep_user_dma(%struct.ivtv*, %struct.TYPE_2__*, %struct.ivtv_dma_frame*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ivtv_udma_prepare(%struct.ivtv*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @ivtv_udma_unmap(%struct.ivtv*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*) #1

declare dso_local i32 @ivtv_yuv_frame_complete(%struct.ivtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
