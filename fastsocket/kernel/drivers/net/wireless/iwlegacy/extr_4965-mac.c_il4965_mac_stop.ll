; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_mac_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_mac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@CSR_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il4965_mac_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.il_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %4, i32 0, i32 0
  %6 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  store %struct.il_priv* %6, %struct.il_priv** %3, align 8
  %7 = call i32 @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %15 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %17 = call i32 @il4965_down(%struct.il_priv* %16)
  %18 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @flush_workqueue(i32 %20)
  %22 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %23 = load i32, i32* @CSR_INT, align 4
  %24 = call i32 @_il_wr(%struct.il_priv* %22, i32 %23, i32 -1)
  %25 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %26 = call i32 @il_enable_rfkill_int(%struct.il_priv* %25)
  %27 = call i32 @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @D_MAC80211(i8*) #1

declare dso_local i32 @il4965_down(%struct.il_priv*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il_enable_rfkill_int(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
