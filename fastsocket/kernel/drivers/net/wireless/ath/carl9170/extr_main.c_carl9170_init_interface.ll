; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_init_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_init_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, %struct.ath_common }
%struct.ath_common = type { i32 }
%struct.ieee80211_vif = type { i64, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, %struct.ieee80211_vif*)* @carl9170_init_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_init_interface(%struct.ar9170* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %8 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %9 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %8, i32 0, i32 2
  store %struct.ath_common* %9, %struct.ath_common** %6, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %11 = icmp ne %struct.ieee80211_vif* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %14 = call i32 @IS_STARTED(%struct.ar9170* %13)
  %15 = call i32 @WARN_ON_ONCE(i32 %14)
  store i32 0, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %18 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = call i32 @memcpy(i32 %19, i32 %22, i32 %23)
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %16
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %35 = icmp ne i64 %33, %34
  br label %36

36:                                               ; preds = %30, %16
  %37 = phi i1 [ false, %16 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %40 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %47 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %51 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %54 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %56 = call i32 @carl9170_set_operating_mode(%struct.ar9170* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %36, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IS_STARTED(%struct.ar9170*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @carl9170_set_operating_mode(%struct.ar9170*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
