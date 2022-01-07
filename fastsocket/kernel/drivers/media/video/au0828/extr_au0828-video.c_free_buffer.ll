; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_free_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.au0828_fh* }
%struct.au0828_fh = type { %struct.au0828_dev* }
%struct.au0828_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.au0828_buffer* }
%struct.au0828_buffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@VIDEOBUF_NEEDS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_queue*, %struct.au0828_buffer*)* @free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_buffer(%struct.videobuf_queue* %0, %struct.au0828_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.au0828_buffer*, align 8
  %5 = alloca %struct.au0828_fh*, align 8
  %6 = alloca %struct.au0828_dev*, align 8
  %7 = alloca i64, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.au0828_buffer* %1, %struct.au0828_buffer** %4, align 8
  %8 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %9 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %8, i32 0, i32 0
  %10 = load %struct.au0828_fh*, %struct.au0828_fh** %9, align 8
  store %struct.au0828_fh* %10, %struct.au0828_fh** %5, align 8
  %11 = load %struct.au0828_fh*, %struct.au0828_fh** %5, align 8
  %12 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %11, i32 0, i32 0
  %13 = load %struct.au0828_dev*, %struct.au0828_dev** %12, align 8
  store %struct.au0828_dev* %13, %struct.au0828_dev** %6, align 8
  store i64 0, i64* %7, align 8
  %14 = call i64 (...) @in_interrupt()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @BUG()
  br label %18

18:                                               ; preds = %16, %2
  %19 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %20 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %24 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.au0828_buffer*, %struct.au0828_buffer** %25, align 8
  %27 = load %struct.au0828_buffer*, %struct.au0828_buffer** %4, align 8
  %28 = icmp eq %struct.au0828_buffer* %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %31 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.au0828_buffer* null, %struct.au0828_buffer** %32, align 8
  br label %33

33:                                               ; preds = %29, %18
  %34 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %35 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.au0828_buffer*, %struct.au0828_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %38, i32 0, i32 0
  %40 = call i32 @videobuf_vmalloc_free(%struct.TYPE_4__* %39)
  %41 = load i32, i32* @VIDEOBUF_NEEDS_INIT, align 4
  %42 = load %struct.au0828_buffer*, %struct.au0828_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  ret void
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @videobuf_vmalloc_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
