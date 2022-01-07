; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_buffer_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_buffer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.cx8800_fh* }
%struct.cx8800_fh = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@vid_limit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, i32*, i32*)* @buffer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_setup(%struct.videobuf_queue* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cx8800_fh*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %9 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %8, i32 0, i32 0
  %10 = load %struct.cx8800_fh*, %struct.cx8800_fh** %9, align 8
  store %struct.cx8800_fh* %10, %struct.cx8800_fh** %7, align 8
  %11 = load %struct.cx8800_fh*, %struct.cx8800_fh** %7, align 8
  %12 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cx8800_fh*, %struct.cx8800_fh** %7, align 8
  %17 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %15, %18
  %20 = load %struct.cx8800_fh*, %struct.cx8800_fh** %7, align 8
  %21 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = ashr i32 %23, 3
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 0, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32*, i32** %5, align 8
  store i32 32, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %3
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = mul i32 %33, %35
  %37 = load i32, i32* @vid_limit, align 4
  %38 = mul nsw i32 %37, 1024
  %39 = mul nsw i32 %38, 1024
  %40 = icmp ugt i32 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load i32, i32* @vid_limit, align 4
  %43 = mul nsw i32 %42, 1024
  %44 = mul nsw i32 %43, 1024
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = udiv i32 %44, %46
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %41, %31
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
