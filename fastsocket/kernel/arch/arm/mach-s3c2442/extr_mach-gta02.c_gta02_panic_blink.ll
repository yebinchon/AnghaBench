; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2442/extr_mach-gta02.c_gta02_panic_blink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2442/extr_mach-gta02.c_gta02_panic_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gta02_panic_blink.last_blink = internal global i64 0, align 8
@gta02_panic_blink.led = internal global i8 0, align 1
@GTA02_GPIO_AUX_LED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @gta02_panic_blink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gta02_panic_blink(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @gta02_panic_blink.last_blink, align 8
  %7 = sub nsw i64 %5, %6
  %8 = icmp slt i64 %7, 100
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %20

10:                                               ; preds = %1
  %11 = load i8, i8* @gta02_panic_blink.led, align 1
  %12 = sext i8 %11 to i32
  %13 = xor i32 %12, 1
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* @gta02_panic_blink.led, align 1
  %15 = load i32, i32* @GTA02_GPIO_AUX_LED, align 4
  %16 = load i8, i8* @gta02_panic_blink.led, align 1
  %17 = call i32 @gpio_direction_output(i32 %15, i8 signext %16)
  %18 = load i64, i64* %3, align 8
  store i64 %18, i64* @gta02_panic_blink.last_blink, align 8
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %10, %9
  %21 = load i64, i64* %2, align 8
  ret i64 %21
}

declare dso_local i32 @gpio_direction_output(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
