; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_queue_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_queue_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_framebuffer = type { i32 }
%struct.vino_framebuffer_queue = type { i64, i64, i32, %struct.vino_framebuffer**, i32 }

@.str = private unnamed_addr constant [22 x i8] c"vino_queue_remove():\0A\00", align 1
@VINO_QUEUE_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"vino_queue_remove(): id = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vino_framebuffer* (%struct.vino_framebuffer_queue*, i32*)* @vino_queue_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vino_framebuffer* @vino_queue_remove(%struct.vino_framebuffer_queue* %0, i32* %1) #0 {
  %3 = alloca %struct.vino_framebuffer*, align 8
  %4 = alloca %struct.vino_framebuffer_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vino_framebuffer*, align 8
  %7 = alloca i64, align 8
  store %struct.vino_framebuffer_queue* %0, %struct.vino_framebuffer_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.vino_framebuffer* null, %struct.vino_framebuffer** %6, align 8
  %8 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %10 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VINO_QUEUE_MAGIC, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %6, align 8
  store %struct.vino_framebuffer* %15, %struct.vino_framebuffer** %3, align 8
  br label %51

16:                                               ; preds = %2
  %17 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %18 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %17, i32 0, i32 2
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %22 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %45

26:                                               ; preds = %16
  %27 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %28 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %27, i32 0, i32 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @vino_fifo_dequeue(i32* %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %45

33:                                               ; preds = %26
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %38 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %37, i32 0, i32 3
  %39 = load %struct.vino_framebuffer**, %struct.vino_framebuffer*** %38, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.vino_framebuffer*, %struct.vino_framebuffer** %39, i64 %42
  %44 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %43, align 8
  store %struct.vino_framebuffer* %44, %struct.vino_framebuffer** %6, align 8
  br label %45

45:                                               ; preds = %33, %32, %25
  %46 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %47 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %46, i32 0, i32 2
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %6, align 8
  store %struct.vino_framebuffer* %50, %struct.vino_framebuffer** %3, align 8
  br label %51

51:                                               ; preds = %45, %14
  %52 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  ret %struct.vino_framebuffer* %52
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vino_fifo_dequeue(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
