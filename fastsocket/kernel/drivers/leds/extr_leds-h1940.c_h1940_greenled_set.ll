; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-h1940.c_h1940_greenled_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-h1940.c_h1940_greenled_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }

@H1940_LATCH_LED_FLASH = common dso_local global i32 0, align 4
@S3C2410_GPA7 = common dso_local global i32 0, align 4
@H1940_LATCH_LED_GREEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @h1940_greenled_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h1940_greenled_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %16 [
    i32 129, label %6
    i32 130, label %11
    i32 128, label %17
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @H1940_LATCH_LED_FLASH, align 4
  %8 = call i32 @h1940_latch_control(i32 0, i32 %7)
  %9 = load i32, i32* @S3C2410_GPA7, align 4
  %10 = call i32 @s3c2410_gpio_setpin(i32 %9, i32 1)
  br label %24

11:                                               ; preds = %2
  %12 = load i32, i32* @H1940_LATCH_LED_GREEN, align 4
  %13 = call i32 @h1940_latch_control(i32 0, i32 %12)
  %14 = load i32, i32* @S3C2410_GPA7, align 4
  %15 = call i32 @s3c2410_gpio_setpin(i32 %14, i32 1)
  br label %24

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %2, %16
  %18 = load i32, i32* @H1940_LATCH_LED_FLASH, align 4
  %19 = call i32 @h1940_latch_control(i32 %18, i32 0)
  %20 = load i32, i32* @H1940_LATCH_LED_GREEN, align 4
  %21 = call i32 @h1940_latch_control(i32 %20, i32 0)
  %22 = load i32, i32* @S3C2410_GPA7, align 4
  %23 = call i32 @s3c2410_gpio_setpin(i32 %22, i32 0)
  br label %24

24:                                               ; preds = %17, %11, %6
  ret void
}

declare dso_local i32 @h1940_latch_control(i32, i32) #1

declare dso_local i32 @s3c2410_gpio_setpin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
