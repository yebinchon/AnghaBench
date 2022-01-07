; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-bd2802.c_bd2802_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-bd2802.c_bd2802_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd2802_led = type { i32 }

@LED1 = common dso_local global i32 0, align 4
@LED2 = common dso_local global i32 0, align 4
@BD2802_REG_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bd2802_led*, i32)* @bd2802_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bd2802_enable(%struct.bd2802_led* %0, i32 %1) #0 {
  %3 = alloca %struct.bd2802_led*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bd2802_led* %0, %struct.bd2802_led** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @LED1, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @LED2, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @LED1, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %5, align 4
  %17 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @bd2802_is_led_off(%struct.bd2802_led* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @LED1, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @LED_CTL(i32 %27, i32 1)
  store i32 %28, i32* %6, align 4
  br label %32

29:                                               ; preds = %15
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @LED_CTL(i32 1, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %34 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BD2802_REG_CONTROL, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @bd2802_write_byte(i32 %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @bd2802_is_led_off(%struct.bd2802_led*, i32) #1

declare dso_local i32 @LED_CTL(i32, i32) #1

declare dso_local i32 @bd2802_write_byte(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
