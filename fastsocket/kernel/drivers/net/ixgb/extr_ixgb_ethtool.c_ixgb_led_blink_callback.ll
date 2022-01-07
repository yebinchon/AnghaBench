; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_led_blink_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_led_blink_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { i32, i32, i32 }

@IXGB_LED_ON = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IXGB_ID_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ixgb_led_blink_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_led_blink_callback(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgb_adapter*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.ixgb_adapter*
  store %struct.ixgb_adapter* %5, %struct.ixgb_adapter** %3, align 8
  %6 = load i32, i32* @IXGB_LED_ON, align 4
  %7 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %7, i32 0, i32 2
  %9 = call i64 @test_and_change_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %12, i32 0, i32 1
  %14 = call i32 @ixgb_led_off(i32* %13)
  br label %19

15:                                               ; preds = %1
  %16 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %16, i32 0, i32 1
  %18 = call i32 @ixgb_led_on(i32* %17)
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* @IXGB_ID_INTERVAL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @mod_timer(i32* %21, i64 %24)
  ret void
}

declare dso_local i64 @test_and_change_bit(i32, i32*) #1

declare dso_local i32 @ixgb_led_off(i32*) #1

declare dso_local i32 @ixgb_led_on(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
