; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_queue_has_mapped_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_queue_has_mapped_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_framebuffer_queue = type { i64, i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@VINO_QUEUE_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vino_framebuffer_queue*)* @vino_queue_has_mapped_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_queue_has_mapped_buffers(%struct.vino_framebuffer_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vino_framebuffer_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.vino_framebuffer_queue* %0, %struct.vino_framebuffer_queue** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %3, align 8
  %8 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VINO_QUEUE_MAGIC, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %3, align 8
  %16 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %15, i32 0, i32 2
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %38, %14
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %3, align 8
  %22 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %3, align 8
  %27 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %41

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %19

41:                                               ; preds = %36, %19
  %42 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %3, align 8
  %43 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %42, i32 0, i32 2
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %41, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
