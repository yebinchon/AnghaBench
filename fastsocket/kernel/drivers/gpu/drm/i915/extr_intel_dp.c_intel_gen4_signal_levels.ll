; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_gen4_signal_levels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_gen4_signal_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DP_TRAIN_VOLTAGE_SWING_MASK = common dso_local global i32 0, align 4
@DP_VOLTAGE_0_4 = common dso_local global i32 0, align 4
@DP_VOLTAGE_0_6 = common dso_local global i32 0, align 4
@DP_VOLTAGE_0_8 = common dso_local global i32 0, align 4
@DP_VOLTAGE_1_2 = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPHASIS_MASK = common dso_local global i32 0, align 4
@DP_PRE_EMPHASIS_0 = common dso_local global i32 0, align 4
@DP_PRE_EMPHASIS_3_5 = common dso_local global i32 0, align 4
@DP_PRE_EMPHASIS_6 = common dso_local global i32 0, align 4
@DP_PRE_EMPHASIS_9_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @intel_gen4_signal_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gen4_signal_levels(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %6 = and i32 %4, %5
  switch i32 %6, label %8 [
    i32 130, label %7
    i32 129, label %12
    i32 128, label %16
    i32 131, label %20
  ]

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %1, %7
  %9 = load i32, i32* @DP_VOLTAGE_0_4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load i32, i32* @DP_VOLTAGE_0_6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %24

16:                                               ; preds = %1
  %17 = load i32, i32* @DP_VOLTAGE_0_8, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @DP_VOLTAGE_1_2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %16, %12, %8
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %29 [
    i32 135, label %28
    i32 134, label %33
    i32 133, label %37
    i32 132, label %41
  ]

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %24, %28
  %30 = load i32, i32* @DP_PRE_EMPHASIS_0, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %24
  %34 = load i32, i32* @DP_PRE_EMPHASIS_3_5, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %45

37:                                               ; preds = %24
  %38 = load i32, i32* @DP_PRE_EMPHASIS_6, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %24
  %42 = load i32, i32* @DP_PRE_EMPHASIS_9_5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %37, %33, %29
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
