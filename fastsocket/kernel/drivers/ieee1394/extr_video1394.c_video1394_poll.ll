; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_video1394_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_video1394_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.file_ctx* }
%struct.file_ctx = type { %struct.TYPE_4__*, %struct.dma_iso_ctx* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dma_iso_ctx = type { i32, i64*, i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Current iso context not set\00", align 1
@POLLERR = common dso_local global i32 0, align 4
@VIDEO1394_BUFFER_READY = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @video1394_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video1394_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.file_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.dma_iso_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.file_ctx*, %struct.file_ctx** %12, align 8
  store %struct.file_ctx* %13, %struct.file_ctx** %6, align 8
  %14 = load %struct.file_ctx*, %struct.file_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.file_ctx, %struct.file_ctx* %14, i32 0, i32 1
  %16 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %15, align 8
  store %struct.dma_iso_ctx* %16, %struct.dma_iso_ctx** %9, align 8
  %17 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %9, align 8
  %18 = icmp eq %struct.dma_iso_ctx* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load i32, i32* @KERN_ERR, align 4
  %21 = load %struct.file_ctx*, %struct.file_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.file_ctx, %struct.file_ctx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PRINT(i32 %20, i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @POLLERR, align 4
  store i32 %29, i32* %3, align 4
  br label %72

30:                                               ; preds = %2
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %9, align 8
  %33 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %32, i32 0, i32 3
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @poll_wait(%struct.file* %31, i32* %33, i32* %34)
  %36 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %9, align 8
  %37 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %36, i32 0, i32 2
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %63, %30
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %9, align 8
  %43 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %9, align 8
  %48 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VIDEO1394_BUFFER_READY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = load i32, i32* @POLLIN, align 4
  %58 = load i32, i32* @POLLRDNORM, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %66

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %40

66:                                               ; preds = %56, %40
  %67 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %9, align 8
  %68 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %67, i32 0, i32 2
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @PRINT(i32, i32, i8*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
