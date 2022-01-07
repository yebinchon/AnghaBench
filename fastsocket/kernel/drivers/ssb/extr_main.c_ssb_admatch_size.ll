; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_admatch_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_admatch_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSB_ADM_TYPE = common dso_local global i32 0, align 4
@SSB_ADM_SZ0 = common dso_local global i32 0, align 4
@SSB_ADM_SZ0_SHIFT = common dso_local global i32 0, align 4
@SSB_ADM_NEG = common dso_local global i32 0, align 4
@SSB_ADM_SZ1 = common dso_local global i32 0, align 4
@SSB_ADM_SZ1_SHIFT = common dso_local global i32 0, align 4
@SSB_ADM_SZ2 = common dso_local global i32 0, align 4
@SSB_ADM_SZ2_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_admatch_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @SSB_ADM_TYPE, align 4
  %6 = and i32 %4, %5
  switch i32 %6, label %33 [
    i32 130, label %7
    i32 129, label %13
    i32 128, label %23
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @SSB_ADM_SZ0, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @SSB_ADM_SZ0_SHIFT, align 4
  %12 = ashr i32 %10, %11
  store i32 %12, i32* %3, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @SSB_ADM_NEG, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @SSB_WARN_ON(i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @SSB_ADM_SZ1, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @SSB_ADM_SZ1_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %3, align 4
  br label %35

23:                                               ; preds = %1
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @SSB_ADM_NEG, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @SSB_WARN_ON(i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @SSB_ADM_SZ2, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @SSB_ADM_SZ2_SHIFT, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %1
  %34 = call i32 @SSB_WARN_ON(i32 1)
  br label %35

35:                                               ; preds = %33, %23, %13, %7
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  %38 = shl i32 1, %37
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @SSB_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
