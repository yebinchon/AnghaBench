; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_clock.c_clk_get_rate_mclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_clock.c_clk_get_rate_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64 }

@U300_SYSCON_VBASE = common dso_local global i64 0, align 8
@U300_SYSCON_MMF0R = common dso_local global i64 0, align 8
@U300_SYSCON_MMF0R_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @clk_get_rate_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_get_rate_mclk(%struct.clk* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  %6 = call i32 (...) @syscon_clk_get_rate()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %28 [
    i32 128, label %8
    i32 129, label %9
    i32 130, label %9
    i32 131, label %9
    i32 132, label %9
  ]

8:                                                ; preds = %1
  store i64 13000000, i64* %2, align 8
  br label %33

9:                                                ; preds = %1, %1, %1, %1
  %10 = load i64, i64* @U300_SYSCON_VBASE, align 8
  %11 = load i64, i64* @U300_SYSCON_MMF0R, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readw(i64 %12)
  %14 = load i32, i32* @U300_SYSCON_MMF0R_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %26 [
    i32 84, label %17
    i32 68, label %18
    i32 67, label %19
    i32 51, label %20
    i32 50, label %21
    i32 34, label %22
    i32 33, label %23
    i32 17, label %24
    i32 0, label %25
  ]

17:                                               ; preds = %9
  store i64 18900000, i64* %2, align 8
  br label %33

18:                                               ; preds = %9
  store i64 20800000, i64* %2, align 8
  br label %33

19:                                               ; preds = %9
  store i64 23100000, i64* %2, align 8
  br label %33

20:                                               ; preds = %9
  store i64 26000000, i64* %2, align 8
  br label %33

21:                                               ; preds = %9
  store i64 29700000, i64* %2, align 8
  br label %33

22:                                               ; preds = %9
  store i64 34700000, i64* %2, align 8
  br label %33

23:                                               ; preds = %9
  store i64 41600000, i64* %2, align 8
  br label %33

24:                                               ; preds = %9
  store i64 52000000, i64* %2, align 8
  br label %33

25:                                               ; preds = %9
  store i64 104000000, i64* %2, align 8
  br label %33

26:                                               ; preds = %9
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %1, %27
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.clk*, %struct.clk** %3, align 8
  %31 = getelementptr inbounds %struct.clk, %struct.clk* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %2, align 8
  br label %33

33:                                               ; preds = %29, %25, %24, %23, %22, %21, %20, %19, %18, %17, %8
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

declare dso_local i32 @syscon_clk_get_rate(...) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
