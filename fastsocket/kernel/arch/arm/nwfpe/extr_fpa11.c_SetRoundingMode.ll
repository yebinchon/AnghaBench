; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_fpa11.c_SetRoundingMode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_fpa11.c_SetRoundingMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MASK_ROUNDING_MODE = common dso_local global i32 0, align 4
@float_round_nearest_even = common dso_local global i32 0, align 4
@float_round_up = common dso_local global i32 0, align 4
@float_round_down = common dso_local global i32 0, align 4
@float_round_to_zero = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetRoundingMode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MASK_ROUNDING_MODE, align 4
  %6 = and i32 %4, %5
  switch i32 %6, label %7 [
    i32 130, label %8
    i32 129, label %10
    i32 131, label %12
    i32 128, label %14
  ]

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %1, %7
  %9 = load i32, i32* @float_round_nearest_even, align 4
  store i32 %9, i32* %2, align 4
  br label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @float_round_up, align 4
  store i32 %11, i32* %2, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @float_round_down, align 4
  store i32 %13, i32* %2, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @float_round_to_zero, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %14, %12, %10, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
