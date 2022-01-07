; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_free_dma_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_free_dma_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i32, i32**, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cafe_camera*)* @cafe_free_dma_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cafe_free_dma_bufs(%struct.cafe_camera* %0) #0 {
  %2 = alloca %struct.cafe_camera*, align 8
  %3 = alloca i32, align 4
  store %struct.cafe_camera* %0, %struct.cafe_camera** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %39, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %7 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %4
  %11 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %12 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %16 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %19 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %18, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %26 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dma_free_coherent(i32* %14, i32 %17, i32* %24, i32 %31)
  %33 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %34 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %10
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %4

42:                                               ; preds = %4
  %43 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %44 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
