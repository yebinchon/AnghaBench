; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_fifo_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_fifo_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_framebuffer_fifo = type { i32, i32, i32*, i64 }

@VINO_QUEUE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vino_framebuffer_fifo*, i32)* @vino_fifo_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_fifo_enqueue(%struct.vino_framebuffer_fifo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vino_framebuffer_fifo*, align 8
  %5 = alloca i32, align 4
  store %struct.vino_framebuffer_fifo* %0, %struct.vino_framebuffer_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %8 = getelementptr inbounds %struct.vino_framebuffer_fifo, %struct.vino_framebuffer_fifo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp uge i32 %6, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @VINO_QUEUE_ERROR, align 4
  store i32 %12, i32* %3, align 4
  br label %55

13:                                               ; preds = %2
  %14 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @vino_fifo_has_id(%struct.vino_framebuffer_fifo* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @VINO_QUEUE_ERROR, align 4
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %13
  %21 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %22 = getelementptr inbounds %struct.vino_framebuffer_fifo, %struct.vino_framebuffer_fifo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %25 = getelementptr inbounds %struct.vino_framebuffer_fifo, %struct.vino_framebuffer_fifo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %31 = getelementptr inbounds %struct.vino_framebuffer_fifo, %struct.vino_framebuffer_fifo* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %34 = getelementptr inbounds %struct.vino_framebuffer_fifo, %struct.vino_framebuffer_fifo* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 %29, i32* %36, align 4
  %37 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %38 = getelementptr inbounds %struct.vino_framebuffer_fifo, %struct.vino_framebuffer_fifo* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  %41 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %42 = getelementptr inbounds %struct.vino_framebuffer_fifo, %struct.vino_framebuffer_fifo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = zext i32 %43 to i64
  %45 = urem i64 %40, %44
  %46 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %47 = getelementptr inbounds %struct.vino_framebuffer_fifo, %struct.vino_framebuffer_fifo* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %49 = getelementptr inbounds %struct.vino_framebuffer_fifo, %struct.vino_framebuffer_fifo* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %54

52:                                               ; preds = %20
  %53 = load i32, i32* @VINO_QUEUE_ERROR, align 4
  store i32 %53, i32* %3, align 4
  br label %55

54:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %52, %18, %11
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @vino_fifo_has_id(%struct.vino_framebuffer_fifo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
