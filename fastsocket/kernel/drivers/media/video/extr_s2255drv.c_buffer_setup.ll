; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_s2255drv.c_buffer_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_s2255drv.c_buffer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.s2255_fh* }
%struct.s2255_fh = type { %struct.s2255_channel* }
%struct.s2255_channel = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@S2255_DEF_BUFS = common dso_local global i32 0, align 4
@vid_limit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, i32*, i32*)* @buffer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_setup(%struct.videobuf_queue* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.s2255_fh*, align 8
  %8 = alloca %struct.s2255_channel*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %10 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %9, i32 0, i32 0
  %11 = load %struct.s2255_fh*, %struct.s2255_fh** %10, align 8
  store %struct.s2255_fh* %11, %struct.s2255_fh** %7, align 8
  %12 = load %struct.s2255_fh*, %struct.s2255_fh** %7, align 8
  %13 = getelementptr inbounds %struct.s2255_fh, %struct.s2255_fh* %12, i32 0, i32 0
  %14 = load %struct.s2255_channel*, %struct.s2255_channel** %13, align 8
  store %struct.s2255_channel* %14, %struct.s2255_channel** %8, align 8
  %15 = load %struct.s2255_channel*, %struct.s2255_channel** %8, align 8
  %16 = getelementptr inbounds %struct.s2255_channel, %struct.s2255_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.s2255_channel*, %struct.s2255_channel** %8, align 8
  %19 = getelementptr inbounds %struct.s2255_channel, %struct.s2255_channel* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = load %struct.s2255_channel*, %struct.s2255_channel** %8, align 8
  %23 = getelementptr inbounds %struct.s2255_channel, %struct.s2255_channel* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 3
  %28 = mul nsw i32 %21, %27
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 0, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @S2255_DEF_BUFS, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %3
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = mul i32 %38, %40
  %42 = load i32, i32* @vid_limit, align 4
  %43 = mul nsw i32 %42, 1024
  %44 = mul nsw i32 %43, 1024
  %45 = icmp ugt i32 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = load i32, i32* @vid_limit, align 4
  %48 = mul nsw i32 %47, 1024
  %49 = mul nsw i32 %48, 1024
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = udiv i32 %49, %51
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %46, %36
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
