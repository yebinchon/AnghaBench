; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_fifo_has_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_fifo_has_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_framebuffer_fifo = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vino_framebuffer_fifo*, i32)* @vino_fifo_has_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_fifo_has_id(%struct.vino_framebuffer_fifo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vino_framebuffer_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vino_framebuffer_fifo* %0, %struct.vino_framebuffer_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %8 = getelementptr inbounds %struct.vino_framebuffer_fifo, %struct.vino_framebuffer_fifo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %13 = getelementptr inbounds %struct.vino_framebuffer_fifo, %struct.vino_framebuffer_fifo* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  %16 = icmp eq i32 %11, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %10
  %18 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %19 = getelementptr inbounds %struct.vino_framebuffer_fifo, %struct.vino_framebuffer_fifo* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %37

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, 1
  %32 = load %struct.vino_framebuffer_fifo*, %struct.vino_framebuffer_fifo** %4, align 8
  %33 = getelementptr inbounds %struct.vino_framebuffer_fifo, %struct.vino_framebuffer_fifo* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = urem i32 %31, %34
  store i32 %35, i32* %6, align 4
  br label %10

36:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
