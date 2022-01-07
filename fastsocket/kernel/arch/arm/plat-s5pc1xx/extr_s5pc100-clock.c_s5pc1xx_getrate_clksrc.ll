; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s5pc1xx/extr_s5pc100-clock.c_s5pc1xx_getrate_clksrc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s5pc1xx/extr_s5pc100-clock.c_s5pc1xx_getrate_clksrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.clksrc_clk = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @s5pc1xx_getrate_clksrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @s5pc1xx_getrate_clksrc(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca %struct.clksrc_clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  %6 = load %struct.clk*, %struct.clk** %2, align 8
  %7 = call %struct.clksrc_clk* @to_clksrc(%struct.clk* %6)
  store %struct.clksrc_clk* %7, %struct.clksrc_clk** %3, align 8
  %8 = load %struct.clk*, %struct.clk** %2, align 8
  %9 = getelementptr inbounds %struct.clk, %struct.clk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @clk_get_rate(i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.clksrc_clk*, %struct.clksrc_clk** %3, align 8
  %13 = getelementptr inbounds %struct.clksrc_clk, %struct.clksrc_clk* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @__raw_readl(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.clksrc_clk*, %struct.clksrc_clk** %3, align 8
  %17 = getelementptr inbounds %struct.clksrc_clk, %struct.clksrc_clk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 15
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %4, align 8
  %28 = udiv i64 %27, %26
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  ret i64 %29
}

declare dso_local %struct.clksrc_clk* @to_clksrc(%struct.clk*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
