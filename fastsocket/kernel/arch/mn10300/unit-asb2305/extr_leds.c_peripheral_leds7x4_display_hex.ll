; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/unit-asb2305/extr_leds.c_peripheral_leds7x4_display_hex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/unit-asb2305/extr_leds.c_peripheral_leds7x4_display_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@asb2305_led_hex_tbl = common dso_local global i32* null, align 8
@ASB2305_7SEGLEDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @peripheral_leds7x4_display_hex(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** @asb2305_led_hex_tbl, align 8
  %7 = load i32, i32* %3, align 4
  %8 = udiv i32 %7, 1000
  %9 = urem i32 %8, 10
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %6, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 8
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** @asb2305_led_hex_tbl, align 8
  %16 = load i32, i32* %3, align 4
  %17 = udiv i32 %16, 100
  %18 = urem i32 %17, 10
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 8
  store i32 %25, i32* %5, align 4
  %26 = load i32*, i32** @asb2305_led_hex_tbl, align 8
  %27 = load i32, i32* %3, align 4
  %28 = udiv i32 %27, 10
  %29 = urem i32 %28, 10
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 8
  store i32 %36, i32* %5, align 4
  %37 = load i32*, i32** @asb2305_led_hex_tbl, align 8
  %38 = load i32, i32* %3, align 4
  %39 = urem i32 %38, 10
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = xor i32 %45, 16843009
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* @ASB2305_7SEGLEDS, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
