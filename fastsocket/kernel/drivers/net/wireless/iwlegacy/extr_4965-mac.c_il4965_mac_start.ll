; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_mac_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_mac_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Start UP work done.\0A\00", align 1
@S_READY = common dso_local global i32 0, align 4
@UCODE_READY_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"START_ALIVE timeout after %dms.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_mac_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  store %struct.il_priv* %8, %struct.il_priv** %4, align 8
  %9 = call i32 @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 3
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %14 = call i32 @__il4965_up(%struct.il_priv* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 3
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %60

22:                                               ; preds = %1
  %23 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %24 = call i64 @il_is_rfkill(%struct.il_priv* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %56

27:                                               ; preds = %22
  %28 = call i32 @D_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %30 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @S_READY, align 4
  %33 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %34 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %33, i32 0, i32 1
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  %36 = load i32, i32* @UCODE_READY_TIMEOUT, align 4
  %37 = call i32 @wait_event_timeout(i32 %31, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* @S_READY, align 4
  %42 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %43 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %42, i32 0, i32 1
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @UCODE_READY_TIMEOUT, align 4
  %48 = call i32 @jiffies_to_msecs(i32 %47)
  %49 = call i32 @IL_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ETIMEDOUT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %60

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %27
  %54 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %55 = call i32 @il4965_led_enable(%struct.il_priv* %54)
  br label %56

56:                                               ; preds = %53, %26
  %57 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %58 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = call i32 @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %46, %20
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @D_MAC80211(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__il4965_up(%struct.il_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @il_is_rfkill(%struct.il_priv*) #1

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @il4965_led_enable(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
