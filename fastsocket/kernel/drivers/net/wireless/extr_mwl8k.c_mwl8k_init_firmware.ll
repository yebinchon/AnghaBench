; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_init_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_init_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32 }

@MAX_RESTART_ATTEMPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Firmware files not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot start firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Trying to reload the firmware again\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i8*, i32)* @mwl8k_init_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_init_firmware(%struct.ieee80211_hw* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwl8k_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 1
  %13 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %12, align 8
  store %struct.mwl8k_priv* %13, %struct.mwl8k_priv** %8, align 8
  %14 = load i32, i32* @MAX_RESTART_ATTEMPTS, align 4
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %53, %3
  %16 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %8, align 8
  %17 = call i32 @mwl8k_hw_reset(%struct.mwl8k_priv* %16)
  %18 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @mwl8k_request_firmware(%struct.mwl8k_priv* %18, i8* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @wiphy_err(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %63

30:                                               ; preds = %15
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %63

35:                                               ; preds = %30
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %37 = call i32 @mwl8k_load_firmware(%struct.ieee80211_hw* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @wiphy_err(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %8, align 8
  %47 = call i32 @mwl8k_release_firmware(%struct.mwl8k_priv* %46)
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %10, align 4
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @wiphy_err(i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 @msleep(i32 20)
  br label %15

61:                                               ; preds = %50, %45
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %33, %24
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @mwl8k_hw_reset(%struct.mwl8k_priv*) #1

declare dso_local i32 @mwl8k_request_firmware(%struct.mwl8k_priv*, i8*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

declare dso_local i32 @mwl8k_load_firmware(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_release_firmware(%struct.mwl8k_priv*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
