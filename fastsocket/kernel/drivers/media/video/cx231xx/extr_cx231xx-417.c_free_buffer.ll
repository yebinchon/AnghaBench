; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_free_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.cx231xx_buffer* }
%struct.TYPE_6__ = type { %struct.cx231xx_buffer* }
%struct.cx231xx_buffer = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@VIDEOBUF_NEEDS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_queue*, %struct.cx231xx_buffer*)* @free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_buffer(%struct.videobuf_queue* %0, %struct.cx231xx_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.cx231xx_buffer*, align 8
  %5 = alloca %struct.cx231xx_fh*, align 8
  %6 = alloca %struct.cx231xx*, align 8
  %7 = alloca i64, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.cx231xx_buffer* %1, %struct.cx231xx_buffer** %4, align 8
  %8 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %9 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %8, i32 0, i32 0
  %10 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %9, align 8
  store %struct.cx231xx_fh* %10, %struct.cx231xx_fh** %5, align 8
  %11 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %5, align 8
  %12 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %11, i32 0, i32 0
  %13 = load %struct.cx231xx*, %struct.cx231xx** %12, align 8
  store %struct.cx231xx* %13, %struct.cx231xx** %6, align 8
  store i64 0, i64* %7, align 8
  %14 = call i64 (...) @in_interrupt()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @BUG()
  br label %18

18:                                               ; preds = %16, %2
  %19 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %20 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %18
  %29 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %30 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %32, align 8
  %34 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %4, align 8
  %35 = icmp eq %struct.cx231xx_buffer* %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %38 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store %struct.cx231xx_buffer* null, %struct.cx231xx_buffer** %40, align 8
  br label %41

41:                                               ; preds = %36, %28
  br label %56

42:                                               ; preds = %18
  %43 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %44 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %46, align 8
  %48 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %4, align 8
  %49 = icmp eq %struct.cx231xx_buffer* %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %52 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store %struct.cx231xx_buffer* null, %struct.cx231xx_buffer** %54, align 8
  br label %55

55:                                               ; preds = %50, %42
  br label %56

56:                                               ; preds = %55, %41
  %57 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %58 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %63 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %4, align 8
  %64 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %63, i32 0, i32 0
  %65 = call i32 @videobuf_waiton(%struct.videobuf_queue* %62, %struct.TYPE_9__* %64, i32 0, i32 0)
  %66 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %4, align 8
  %67 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %66, i32 0, i32 0
  %68 = call i32 @videobuf_vmalloc_free(%struct.TYPE_9__* %67)
  %69 = load i32, i32* @VIDEOBUF_NEEDS_INIT, align 4
  %70 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %4, align 8
  %71 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  ret void
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @videobuf_waiton(%struct.videobuf_queue*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @videobuf_vmalloc_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
