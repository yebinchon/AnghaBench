; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_clock.c_calc_pll_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_clock.c_calc_pll_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@clk_xtali = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @calc_pll_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_pll_rate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_xtali, i32 0, i32 0), align 8
  store i64 %5, i64* %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 11
  %8 = and i32 %7, 31
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = load i64, i64* %3, align 8
  %12 = mul i64 %11, %10
  store i64 %12, i64* %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = ashr i32 %13, 5
  %15 = and i32 %14, 63
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %3, align 8
  %19 = mul i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 31
  %23 = add nsw i32 %22, 1
  %24 = call i32 @do_div(i64 %20, i32 %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %34, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %2, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 3
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i64, i64* %3, align 8
  %33 = lshr i64 %32, 1
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %25

37:                                               ; preds = %25
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
