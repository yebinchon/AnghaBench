; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_queue_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_queue_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_framebuffer = type { i32 }
%struct.vino_framebuffer_queue = type { i64, i32, i32, %struct.vino_framebuffer**, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"vino_queue_add(): id = %d\0A\00", align 1
@VINO_QUEUE_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vino_framebuffer* (%struct.vino_framebuffer_queue*, i32)* @vino_queue_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vino_framebuffer* @vino_queue_add(%struct.vino_framebuffer_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.vino_framebuffer*, align 8
  %4 = alloca %struct.vino_framebuffer_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vino_framebuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.vino_framebuffer_queue* %0, %struct.vino_framebuffer_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vino_framebuffer* null, %struct.vino_framebuffer** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %12 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VINO_QUEUE_MAGIC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %6, align 8
  store %struct.vino_framebuffer* %17, %struct.vino_framebuffer** %3, align 8
  br label %70

18:                                               ; preds = %2
  %19 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %20 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %19, i32 0, i32 2
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %24 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %64

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %31 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp uge i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %64

35:                                               ; preds = %28
  %36 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %37 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %36, i32 0, i32 4
  %38 = call i32 @vino_fifo_get_used(i32* %37)
  %39 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %40 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %39, i32 0, i32 5
  %41 = call i32 @vino_fifo_get_used(i32* %40)
  %42 = add i32 %38, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %45 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp uge i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %64

49:                                               ; preds = %35
  %50 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %51 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %50, i32 0, i32 4
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @vino_fifo_enqueue(i32* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %64

56:                                               ; preds = %49
  %57 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %58 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %57, i32 0, i32 3
  %59 = load %struct.vino_framebuffer**, %struct.vino_framebuffer*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.vino_framebuffer*, %struct.vino_framebuffer** %59, i64 %61
  %63 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %62, align 8
  store %struct.vino_framebuffer* %63, %struct.vino_framebuffer** %6, align 8
  br label %64

64:                                               ; preds = %56, %55, %48, %34, %27
  %65 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %66 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %65, i32 0, i32 2
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %6, align 8
  store %struct.vino_framebuffer* %69, %struct.vino_framebuffer** %3, align 8
  br label %70

70:                                               ; preds = %64, %16
  %71 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  ret %struct.vino_framebuffer* %71
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vino_fifo_get_used(i32*) #1

declare dso_local i64 @vino_fifo_enqueue(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
