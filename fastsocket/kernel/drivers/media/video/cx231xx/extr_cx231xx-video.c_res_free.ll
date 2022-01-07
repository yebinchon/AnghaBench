; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_res_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_res_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx_fh = type { i64, i64, %struct.cx231xx* }
%struct.cx231xx = type { i64, i64 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx231xx_fh*)* @res_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @res_free(%struct.cx231xx_fh* %0) #0 {
  %2 = alloca %struct.cx231xx_fh*, align 8
  %3 = alloca %struct.cx231xx*, align 8
  store %struct.cx231xx_fh* %0, %struct.cx231xx_fh** %2, align 8
  %4 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %2, align 8
  %5 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %4, i32 0, i32 2
  %6 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  store %struct.cx231xx* %6, %struct.cx231xx** %3, align 8
  %7 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %2, align 8
  %8 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %2, align 8
  %10 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %16 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %2, align 8
  %19 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
