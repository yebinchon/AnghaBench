; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_led.c_led_ASP_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_led.c_led_ASP_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LED_DATA_REG = common dso_local global i32 0, align 4
@LED_STROBE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @led_ASP_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_ASP_driver(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %5 = load i8, i8* %2, align 1
  %6 = zext i8 %5 to i32
  %7 = xor i32 %6, -1
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %2, align 1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %33, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = load i8, i8* %2, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 128
  %16 = ashr i32 %15, 7
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %4, align 1
  %18 = load i8, i8* %4, align 1
  %19 = load i32, i32* @LED_DATA_REG, align 4
  %20 = call i32 @gsc_writeb(i8 zeroext %18, i32 %19)
  %21 = load i8, i8* %4, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @LED_STROBE, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = trunc i32 %25 to i8
  %27 = load i32, i32* @LED_DATA_REG, align 4
  %28 = call i32 @gsc_writeb(i8 zeroext %26, i32 %27)
  %29 = load i8, i8* %2, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 1
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %2, align 1
  br label %33

33:                                               ; preds = %12
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %9

36:                                               ; preds = %9
  ret void
}

declare dso_local i32 @gsc_writeb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
