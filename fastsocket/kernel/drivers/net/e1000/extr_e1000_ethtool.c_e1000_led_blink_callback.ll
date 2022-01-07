; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_led_blink_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_led_blink_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@E1000_LED_ON = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@E1000_ID_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @e1000_led_blink_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_led_blink_callback(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.e1000_adapter*
  store %struct.e1000_adapter* %6, %struct.e1000_adapter** %3, align 8
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 2
  store %struct.e1000_hw* %8, %struct.e1000_hw** %4, align 8
  %9 = load i32, i32* @E1000_LED_ON, align 4
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 1
  %12 = call i64 @test_and_change_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %16 = call i32 @e1000_led_off(%struct.e1000_hw* %15)
  br label %20

17:                                               ; preds = %1
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %19 = call i32 @e1000_led_on(%struct.e1000_hw* %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %21, i32 0, i32 0
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* @E1000_ID_INTERVAL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @mod_timer(i32* %22, i64 %25)
  ret void
}

declare dso_local i64 @test_and_change_bit(i32, i32*) #1

declare dso_local i32 @e1000_led_off(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_led_on(%struct.e1000_hw*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
