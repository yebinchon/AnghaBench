; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_ledtrig_tx_timerfunc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_ledtrig_tx_timerfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@at76_ledtrig_tx_timerfunc.tx_lastactivity = internal global i32 0, align 4
@tx_activity = common dso_local global i32 0, align 4
@ledtrig_tx = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@ledtrig_tx_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @at76_ledtrig_tx_timerfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at76_ledtrig_tx_timerfunc(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @at76_ledtrig_tx_timerfunc.tx_lastactivity, align 4
  %4 = load i32, i32* @tx_activity, align 4
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load i32, i32* @tx_activity, align 4
  store i32 %7, i32* @at76_ledtrig_tx_timerfunc.tx_lastactivity, align 4
  %8 = load i32, i32* @ledtrig_tx, align 4
  %9 = load i32, i32* @LED_FULL, align 4
  %10 = call i32 @led_trigger_event(i32 %8, i32 %9)
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i32, i32* @HZ, align 4
  %13 = sdiv i32 %12, 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  %16 = call i32 @mod_timer(i32* @ledtrig_tx_timer, i64 %15)
  br label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @ledtrig_tx, align 4
  %19 = load i32, i32* @LED_OFF, align 4
  %20 = call i32 @led_trigger_event(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %6
  ret void
}

declare dso_local i32 @led_trigger_event(i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
