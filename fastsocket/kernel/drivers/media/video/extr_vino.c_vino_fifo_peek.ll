; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_fifo_peek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_fifo_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_framebuffer_fifo = type { i64, i32*, i64 }

@VINO_QUEUE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vino_framebuffer_fifo*, i32*)* @vino_fifo_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_fifo_peek(%struct.vino_framebuffer_fifo* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vino_framebuffer_fifo*, align 8
  %5 = alloca i32*, align 8
  store %struct.vino_framebuffer_fifo* %0, %struct.vino_framebuffer_fifo** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %7 = getelementptr inbounds %struct.vino_framebuffer_fifo, %struct.vino_framebuffer_fifo* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %12 = getelementptr inbounds %struct.vino_framebuffer_fifo, %struct.vino_framebuffer_fifo* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %15 = getelementptr inbounds %struct.vino_framebuffer_fifo, %struct.vino_framebuffer_fifo* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @VINO_QUEUE_ERROR, align 4
  store i32 %21, i32* %3, align 4
  br label %23

22:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %20
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
