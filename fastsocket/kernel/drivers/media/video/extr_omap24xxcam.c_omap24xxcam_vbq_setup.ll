; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_vbq_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_vbq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.omap24xxcam_fh* }
%struct.omap24xxcam_fh = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, i32*, i32*)* @omap24xxcam_vbq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap24xxcam_vbq_setup(%struct.videobuf_queue* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.omap24xxcam_fh*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %9 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %8, i32 0, i32 0
  %10 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %9, align 8
  store %struct.omap24xxcam_fh* %10, %struct.omap24xxcam_fh** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp ule i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %7, align 8
  %27 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %43, %25
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = mul i32 %33, %35
  %37 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %7, align 8
  %38 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ugt i32 %36, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add i32 %45, -1
  store i32 %46, i32* %44, align 4
  br label %31

47:                                               ; preds = %31
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
