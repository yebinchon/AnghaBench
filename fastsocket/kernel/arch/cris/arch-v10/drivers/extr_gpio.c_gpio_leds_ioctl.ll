; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_gpio.c_gpio_leds_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_gpio.c_gpio_leds_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @gpio_leds_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_leds_ioctl(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @_IOC_NR(i32 %8)
  switch i32 %9, label %32 [
    i32 130, label %10
    i32 128, label %26
    i32 129, label %29
  ]

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = trunc i64 %11 to i8
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 1
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %6, align 1
  %16 = load i64, i64* %5, align 8
  %17 = trunc i64 %16 to i8
  %18 = zext i8 %17 to i32
  %19 = ashr i32 %18, 1
  %20 = and i32 %19, 1
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %7, align 1
  %22 = load i8, i8* %6, align 1
  %23 = call i32 @CRIS_LED_ACTIVE_SET_G(i8 zeroext %22)
  %24 = load i8, i8* %7, align 1
  %25 = call i32 @CRIS_LED_ACTIVE_SET_R(i8 zeroext %24)
  br label %35

26:                                               ; preds = %2
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @CRIS_LED_BIT_SET(i64 %27)
  br label %35

29:                                               ; preds = %2
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @CRIS_LED_BIT_CLR(i64 %30)
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %29, %26, %10
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @_IOC_NR(i32) #1

declare dso_local i32 @CRIS_LED_ACTIVE_SET_G(i8 zeroext) #1

declare dso_local i32 @CRIS_LED_ACTIVE_SET_R(i8 zeroext) #1

declare dso_local i32 @CRIS_LED_BIT_SET(i64) #1

declare dso_local i32 @CRIS_LED_BIT_CLR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
