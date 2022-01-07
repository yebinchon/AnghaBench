; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_tuner_stereo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_tuner_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TUNER_SIGNAL = common dso_local global i32 0, align 4
@TUNER_STEREO_MK3 = common dso_local global i32 0, align 4
@TUNER_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @tuner_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_stereo(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %18 [
    i32 132, label %7
    i32 130, label %7
    i32 129, label %7
    i32 133, label %7
    i32 128, label %7
    i32 131, label %14
  ]

7:                                                ; preds = %2, %2, %2, %2, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @TUNER_SIGNAL, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @TUNER_STEREO_MK3, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @TUNER_STEREO, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @TUNER_STEREO, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %14, %7
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
