; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_link_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_link_down(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %3 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %4 = call i32 @ipw_led_link_down(%struct.ipw_priv* %3)
  %5 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @netif_carrier_off(i32 %7)
  %9 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %10 = call i32 @notify_wx_assoc_event(%struct.ipw_priv* %9)
  %11 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %12 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %11, i32 0, i32 2
  %13 = call i32 @cancel_delayed_work(i32* %12)
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %15 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %14, i32 0, i32 6
  %16 = call i32 @cancel_delayed_work(i32* %15)
  %17 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %18 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %17, i32 0, i32 5
  %19 = call i32 @cancel_delayed_work(i32* %18)
  %20 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %21 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %20, i32 0, i32 4
  %22 = call i32 @cancel_delayed_work(i32* %21)
  %23 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %24 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %23, i32 0, i32 3
  %25 = call i32 @cancel_delayed_work(i32* %24)
  %26 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %27 = call i32 @ipw_reset_stats(%struct.ipw_priv* %26)
  %28 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %29 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %1
  %35 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %36 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %35, i32 0, i32 2
  %37 = call i32 @schedule_delayed_work(i32* %36, i32 0)
  br label %42

38:                                               ; preds = %1
  %39 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %40 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %39, i32 0, i32 1
  %41 = call i32 @cancel_delayed_work(i32* %40)
  br label %42

42:                                               ; preds = %38, %34
  ret void
}

declare dso_local i32 @ipw_led_link_down(%struct.ipw_priv*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @notify_wx_assoc_event(%struct.ipw_priv*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @ipw_reset_stats(%struct.ipw_priv*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
