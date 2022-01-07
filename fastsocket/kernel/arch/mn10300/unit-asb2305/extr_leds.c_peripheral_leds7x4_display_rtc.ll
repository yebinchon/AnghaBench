; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/unit-asb2305/extr_leds.c_peripheral_leds7x4_display_rtc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/unit-asb2305/extr_leds.c_peripheral_leds7x4_display_rtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTMCR = common dso_local global i32 0, align 4
@RTSCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @peripheral_leds7x4_display_rtc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @RTMCR, align 4
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @RTSCR, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 240
  %8 = ashr i32 %7, 4
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = mul i32 %9, 10
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 15
  %13 = load i32, i32* %1, align 4
  %14 = add i32 %13, %12
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = mul i32 %15, 6
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 240
  %19 = ashr i32 %18, 4
  %20 = load i32, i32* %1, align 4
  %21 = add i32 %20, %19
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = mul i32 %22, 10
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 15
  %26 = load i32, i32* %1, align 4
  %27 = add i32 %26, %25
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @peripheral_leds7x4_display_minssecs(i32 %28, i32 0)
  ret void
}

declare dso_local i32 @peripheral_leds7x4_display_minssecs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
