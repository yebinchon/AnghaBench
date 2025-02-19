; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_clock.c_get_uart_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_clock.c_get_uart_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@EP93XX_SYSCON_PWRCNT = common dso_local global i32 0, align 4
@EP93XX_SYSCON_PWRCNT_UARTBAUD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @get_uart_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_uart_rate(%struct.clk* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  %6 = load %struct.clk*, %struct.clk** %3, align 8
  %7 = getelementptr inbounds %struct.clk, %struct.clk* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @clk_get_rate(i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i32, i32* @EP93XX_SYSCON_PWRCNT, align 4
  %11 = call i32 @__raw_readl(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @EP93XX_SYSCON_PWRCNT_UARTBAUD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* %2, align 8
  br label %21

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = udiv i64 %19, 2
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %18, %16
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
