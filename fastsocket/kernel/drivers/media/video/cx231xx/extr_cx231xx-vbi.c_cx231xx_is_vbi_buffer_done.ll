; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-vbi.c_cx231xx_is_vbi_buffer_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-vbi.c_cx231xx_is_vbi_buffer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }
%struct.cx231xx_dmaqueue = type { i64, i32 }

@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@PAL_VBI_LINES = common dso_local global i64 0, align 8
@NTSC_VBI_LINES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_is_vbi_buffer_done(%struct.cx231xx* %0, %struct.cx231xx_dmaqueue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.cx231xx_dmaqueue*, align 8
  %6 = alloca i64, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store %struct.cx231xx_dmaqueue* %1, %struct.cx231xx_dmaqueue** %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %8 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @V4L2_STD_625_50, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @PAL_VBI_LINES, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @NTSC_VBI_LINES, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ]
  store i64 %18, i64* %6, align 8
  %19 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %5, align 8
  %20 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %5, align 8
  %26 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %31

30:                                               ; preds = %24, %17
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
