; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mv78xx0/extr_common.c_get_pclk_l2clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mv78xx0/extr_common.c_get_pclk_l2clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SAMPLE_AT_RESET_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*)* @get_pclk_l2clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_pclk_l2clk(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i32, i32* @SAMPLE_AT_RESET_LOW, align 4
  %14 = call i32 @readl(i32 %13)
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 63
  store i32 %16, i32* %9, align 4
  br label %22

17:                                               ; preds = %4
  %18 = load i32, i32* @SAMPLE_AT_RESET_LOW, align 4
  %19 = call i32 @readl(i32 %18)
  %20 = ashr i32 %19, 14
  %21 = and i32 %20, 63
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 15
  %26 = add nsw i32 2, %25
  %27 = mul nsw i32 %23, %26
  %28 = ashr i32 %27, 1
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = ashr i32 %32, 4
  %34 = and i32 %33, 3
  %35 = add nsw i32 %34, 1
  %36 = sdiv i32 %31, %35
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  ret void
}

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
