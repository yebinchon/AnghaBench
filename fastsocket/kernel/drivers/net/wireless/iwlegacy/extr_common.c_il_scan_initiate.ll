; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_scan_initiate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_scan_initiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.ieee80211_vif = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Request scan called when driver not ready.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@S_SCAN_HW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Multiple concurrent scan requests in parallel.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@S_SCAN_ABORTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Scan request while abort pending.\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Starting scan...\0A\00", align 1
@S_SCANNING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IL_SCAN_CHECK_WATCHDOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.ieee80211_vif*)* @il_scan_initiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il_scan_initiate(%struct.il_priv* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %7 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 5
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 0
  %12 = call i32 @cancel_delayed_work(i32* %11)
  %13 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %14 = call i32 @il_is_ready_rf(%struct.il_priv* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = call i32 @IL_WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %74

20:                                               ; preds = %2
  %21 = load i32, i32* @S_SCAN_HW, align 4
  %22 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 2
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = call i32 @D_SCAN(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %74

30:                                               ; preds = %20
  %31 = load i32, i32* @S_SCAN_ABORTING, align 4
  %32 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 2
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = call i32 @D_SCAN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %74

40:                                               ; preds = %30
  %41 = call i32 @D_SCAN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @S_SCANNING, align 4
  %43 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %44 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %43, i32 0, i32 2
  %45 = call i32 @set_bit(i32 %42, i32* %44)
  %46 = load i32, i32* @jiffies, align 4
  %47 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %48 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %50 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = bitcast {}** %52 to i32 (%struct.il_priv*, %struct.ieee80211_vif*)**
  %54 = load i32 (%struct.il_priv*, %struct.ieee80211_vif*)*, i32 (%struct.il_priv*, %struct.ieee80211_vif*)** %53, align 8
  %55 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %56 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %57 = call i32 %54(%struct.il_priv* %55, %struct.ieee80211_vif* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %40
  %61 = load i32, i32* @S_SCANNING, align 4
  %62 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %63 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %62, i32 0, i32 2
  %64 = call i32 @clear_bit(i32 %61, i32* %63)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %74

66:                                               ; preds = %40
  %67 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %68 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %71 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %70, i32 0, i32 0
  %72 = load i32, i32* @IL_SCAN_CHECK_WATCHDOG, align 4
  %73 = call i32 @queue_delayed_work(i32 %69, i32* %71, i32 %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %66, %60, %36, %26, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @il_is_ready_rf(%struct.il_priv*) #1

declare dso_local i32 @IL_WARN(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @D_SCAN(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
