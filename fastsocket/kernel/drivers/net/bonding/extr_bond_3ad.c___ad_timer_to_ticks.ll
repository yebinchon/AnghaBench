; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___ad_timer_to_ticks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___ad_timer_to_ticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AD_SHORT_TIMEOUT_TIME = common dso_local global i32 0, align 4
@ad_ticks_per_sec = common dso_local global i32 0, align 4
@AD_LONG_TIMEOUT_TIME = common dso_local global i32 0, align 4
@AD_CHURN_DETECTION_TIME = common dso_local global i32 0, align 4
@AD_AGGREGATE_WAIT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @__ad_timer_to_ticks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ad_timer_to_ticks(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %35 [
    i32 131, label %7
    i32 132, label %19
    i32 129, label %23
    i32 130, label %27
    i32 128, label %31
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* @AD_SHORT_TIMEOUT_TIME, align 4
  %12 = load i32, i32* @ad_ticks_per_sec, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %5, align 4
  br label %18

14:                                               ; preds = %7
  %15 = load i32, i32* @AD_LONG_TIMEOUT_TIME, align 4
  %16 = load i32, i32* @ad_ticks_per_sec, align 4
  %17 = mul nsw i32 %15, %16
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %10
  br label %35

19:                                               ; preds = %2
  %20 = load i32, i32* @AD_CHURN_DETECTION_TIME, align 4
  %21 = load i32, i32* @ad_ticks_per_sec, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %5, align 4
  br label %35

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ad_ticks_per_sec, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %5, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load i32, i32* @AD_CHURN_DETECTION_TIME, align 4
  %29 = load i32, i32* @ad_ticks_per_sec, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %5, align 4
  br label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @AD_AGGREGATE_WAIT_TIME, align 4
  %33 = load i32, i32* @ad_ticks_per_sec, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %2, %31, %27, %23, %19, %18
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
