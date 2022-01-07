; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_setup.c_get_cclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_setup.c_get_cclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_cclk.cached_cclk_pll_div = internal global i32 0, align 4
@get_cclk.cached_cclk = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_cclk() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @bfin_read_PLL_STAT()
  %5 = and i32 %4, 1
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 (...) @get_clkin_hz()
  store i32 %8, i32* %1, align 4
  br label %41

9:                                                ; preds = %0
  %10 = call i32 (...) @bfin_read_PLL_DIV()
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @get_cclk.cached_cclk_pll_div, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @get_cclk.cached_cclk, align 4
  store i32 %15, i32* %1, align 4
  br label %41

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* @get_cclk.cached_cclk_pll_div, align 4
  br label %18

18:                                               ; preds = %16
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 4
  %21 = and i32 %20, 3
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 15
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %2, align 4
  %29 = shl i32 1, %28
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 (...) @get_vco()
  %33 = load i32, i32* %3, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* @get_cclk.cached_cclk, align 4
  br label %39

35:                                               ; preds = %26, %18
  %36 = call i32 (...) @get_vco()
  %37 = load i32, i32* %2, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* @get_cclk.cached_cclk, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @get_cclk.cached_cclk, align 4
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %39, %14, %7
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @bfin_read_PLL_STAT(...) #1

declare dso_local i32 @get_clkin_hz(...) #1

declare dso_local i32 @bfin_read_PLL_DIV(...) #1

declare dso_local i32 @get_vco(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
