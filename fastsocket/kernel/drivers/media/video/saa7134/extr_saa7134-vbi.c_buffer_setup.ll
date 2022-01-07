; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-vbi.c_buffer_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-vbi.c_buffer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.saa7134_fh* }
%struct.saa7134_fh = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@VBI_LINE_LENGTH = common dso_local global i32 0, align 4
@vbibufs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, i32*, i32*)* @buffer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_setup(%struct.videobuf_queue* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.saa7134_fh*, align 8
  %8 = alloca %struct.saa7134_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %12 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %11, i32 0, i32 0
  %13 = load %struct.saa7134_fh*, %struct.saa7134_fh** %12, align 8
  store %struct.saa7134_fh* %13, %struct.saa7134_fh** %7, align 8
  %14 = load %struct.saa7134_fh*, %struct.saa7134_fh** %7, align 8
  %15 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %14, i32 0, i32 0
  %16 = load %struct.saa7134_dev*, %struct.saa7134_dev** %15, align 8
  store %struct.saa7134_dev* %16, %struct.saa7134_dev** %8, align 8
  %17 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %18 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %23 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %21, %26
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @VBI_LINE_LENGTH, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %30, %31
  %33 = mul nsw i32 %32, 2
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 0, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @vbibufs, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %3
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @saa7134_buffer_count(i32 %43, i32 %45)
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  ret i32 0
}

declare dso_local i32 @saa7134_buffer_count(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
