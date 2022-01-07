; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-parse.c_iwl_init_sband_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-parse.c_iwl_init_sband_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_nvm_data = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_init_sband_channels(%struct.iwl_nvm_data* %0, %struct.ieee80211_supported_band* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_nvm_data*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_nvm_data* %0, %struct.iwl_nvm_data** %5, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %15 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %14, i64 0
  store %struct.ieee80211_channel* %15, %struct.ieee80211_channel** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %28, %4
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %18 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i1 [ false, %16 ], [ %25, %22 ]
  br i1 %27, label %28, label %36

28:                                               ; preds = %26
  %29 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %29, i32 0, i32 0
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %31, i64 %34
  store %struct.ieee80211_channel* %35, %struct.ieee80211_channel** %9, align 8
  br label %16

36:                                               ; preds = %26
  %37 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %37, i32 0, i32 0
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %39, i64 %41
  %43 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %43, i32 0, i32 1
  store %struct.ieee80211_channel* %42, %struct.ieee80211_channel** %44, align 8
  br label %45

45:                                               ; preds = %57, %36
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %47 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br label %55

55:                                               ; preds = %51, %45
  %56 = phi i1 [ false, %45 ], [ %54, %51 ]
  br i1 %56, label %57, label %67

57:                                               ; preds = %55
  %58 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %5, align 8
  %59 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %58, i32 0, i32 0
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %60, i64 %63
  store %struct.ieee80211_channel* %64, %struct.ieee80211_channel** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %45

67:                                               ; preds = %55
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %70 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %10, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
