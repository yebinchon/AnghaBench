; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_Get_Colibri_CarrierOffset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_Get_Colibri_CarrierOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TUNER_MODE_FM_RADIO = common dso_local global i64 0, align 8
@V4L2_STD_MN = common dso_local global i64 0, align 8
@V4L2_STD_NTSC_M_JP = common dso_local global i64 0, align 8
@V4L2_STD_PAL_B = common dso_local global i64 0, align 8
@V4L2_STD_PAL_G = common dso_local global i64 0, align 8
@V4L2_STD_PAL_D = common dso_local global i64 0, align 8
@V4L2_STD_PAL_I = common dso_local global i64 0, align 8
@V4L2_STD_SECAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cx231xx_Get_Colibri_CarrierOffset(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @TUNER_MODE_FM_RADIO, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i64 1100000, i64* %5, align 8
  br label %39

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @V4L2_STD_MN, align 8
  %13 = load i64, i64* @V4L2_STD_NTSC_M_JP, align 8
  %14 = or i64 %12, %13
  %15 = and i64 %11, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i64 4832000, i64* %5, align 8
  br label %38

18:                                               ; preds = %10
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @V4L2_STD_PAL_B, align 8
  %21 = load i64, i64* @V4L2_STD_PAL_G, align 8
  %22 = or i64 %20, %21
  %23 = and i64 %19, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i64 2700000, i64* %5, align 8
  br label %37

26:                                               ; preds = %18
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @V4L2_STD_PAL_D, align 8
  %29 = load i64, i64* @V4L2_STD_PAL_I, align 8
  %30 = or i64 %28, %29
  %31 = load i64, i64* @V4L2_STD_SECAM, align 8
  %32 = or i64 %30, %31
  %33 = and i64 %27, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i64 2100000, i64* %5, align 8
  br label %36

36:                                               ; preds = %35, %26
  br label %37

37:                                               ; preds = %36, %25
  br label %38

38:                                               ; preds = %37, %17
  br label %39

39:                                               ; preds = %38, %9
  %40 = load i64, i64* %5, align 8
  ret i64 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
