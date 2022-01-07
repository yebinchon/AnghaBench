; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_size_to_videosize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_size_to_videosize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIDEOSIZE_352x288 = common dso_local global i32 0, align 4
@SIZE_LastItem = common dso_local global i64 0, align 8
@VIDEOSIZE_128x96 = common dso_local global i32 0, align 4
@VIDEOSIZE_160x120 = common dso_local global i32 0, align 4
@VIDEOSIZE_176x144 = common dso_local global i32 0, align 4
@VIDEOSIZE_320x240 = common dso_local global i32 0, align 4
@VIDEOSIZE_352x240 = common dso_local global i32 0, align 4
@VIDEOSIZE_640x480 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"size=%d. is not valid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ibmcam_size_to_videosize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmcam_size_to_videosize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @VIDEOSIZE_352x288, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i64, i64* @SIZE_LastItem, align 8
  %7 = sub nsw i64 %6, 1
  %8 = call i32 @RESTRICT_TO_RANGE(i32 %5, i32 0, i64 %7)
  %9 = load i32, i32* %2, align 4
  switch i32 %9, label %24 [
    i32 134, label %10
    i32 133, label %12
    i32 132, label %14
    i32 131, label %16
    i32 130, label %18
    i32 129, label %20
    i32 128, label %22
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @VIDEOSIZE_128x96, align 4
  store i32 %11, i32* %3, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load i32, i32* @VIDEOSIZE_160x120, align 4
  store i32 %13, i32* %3, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load i32, i32* @VIDEOSIZE_176x144, align 4
  store i32 %15, i32* %3, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load i32, i32* @VIDEOSIZE_320x240, align 4
  store i32 %17, i32* %3, align 4
  br label %27

18:                                               ; preds = %1
  %19 = load i32, i32* @VIDEOSIZE_352x240, align 4
  store i32 %19, i32* %3, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @VIDEOSIZE_352x288, align 4
  store i32 %21, i32* %3, align 4
  br label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @VIDEOSIZE_640x480, align 4
  store i32 %23, i32* %3, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %22, %20, %18, %16, %14, %12, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @RESTRICT_TO_RANGE(i32, i32, i64) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
