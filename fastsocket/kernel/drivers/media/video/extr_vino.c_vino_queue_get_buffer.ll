; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_queue_get_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_queue_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_framebuffer = type { i32 }
%struct.vino_framebuffer_queue = type { i64, i32, i32, %struct.vino_framebuffer** }

@VINO_QUEUE_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vino_framebuffer* (%struct.vino_framebuffer_queue*, i32)* @vino_queue_get_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vino_framebuffer* @vino_queue_get_buffer(%struct.vino_framebuffer_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.vino_framebuffer*, align 8
  %4 = alloca %struct.vino_framebuffer_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vino_framebuffer*, align 8
  %7 = alloca i64, align 8
  store %struct.vino_framebuffer_queue* %0, %struct.vino_framebuffer_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vino_framebuffer* null, %struct.vino_framebuffer** %6, align 8
  %8 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %9 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VINO_QUEUE_MAGIC, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %6, align 8
  store %struct.vino_framebuffer* %14, %struct.vino_framebuffer** %3, align 8
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %17 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %16, i32 0, i32 2
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %21 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %40

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %28 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp uge i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %40

32:                                               ; preds = %25
  %33 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %34 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %33, i32 0, i32 3
  %35 = load %struct.vino_framebuffer**, %struct.vino_framebuffer*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.vino_framebuffer*, %struct.vino_framebuffer** %35, i64 %37
  %39 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %38, align 8
  store %struct.vino_framebuffer* %39, %struct.vino_framebuffer** %6, align 8
  br label %40

40:                                               ; preds = %32, %31, %24
  %41 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %42 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %41, i32 0, i32 2
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %6, align 8
  store %struct.vino_framebuffer* %45, %struct.vino_framebuffer** %3, align 8
  br label %46

46:                                               ; preds = %40, %13
  %47 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  ret %struct.vino_framebuffer* %47
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
