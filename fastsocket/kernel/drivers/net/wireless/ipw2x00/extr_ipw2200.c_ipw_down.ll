; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32 }

@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@STATUS_RF_KILL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_down(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %4 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %10 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %11 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %15 = call i64 @ipw_is_init(%struct.ipw_priv* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %19 = call i32 @ipw_deinit(%struct.ipw_priv* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %27 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %23, %20
  %31 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %32 = call i32 @ipw_disable_interrupts(%struct.ipw_priv* %31)
  %33 = load i32, i32* @STATUS_RF_KILL_MASK, align 4
  %34 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %37 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %41 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @netif_carrier_off(i32 %42)
  %44 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %45 = call i32 @ipw_stop_nic(%struct.ipw_priv* %44)
  %46 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %47 = call i32 @ipw_led_radio_off(%struct.ipw_priv* %46)
  ret void
}

declare dso_local i64 @ipw_is_init(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_deinit(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_disable_interrupts(%struct.ipw_priv*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @ipw_stop_nic(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_led_radio_off(%struct.ipw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
