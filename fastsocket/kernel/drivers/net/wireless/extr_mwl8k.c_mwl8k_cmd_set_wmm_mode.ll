; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_set_wmm_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_set_wmm_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32 }
%struct.mwl8k_cmd_set_wmm_mode = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_SET_WMM_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @mwl8k_cmd_set_wmm_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_set_wmm_mode(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwl8k_priv*, align 8
  %7 = alloca %struct.mwl8k_cmd_set_wmm_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %10, align 8
  store %struct.mwl8k_priv* %11, %struct.mwl8k_priv** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mwl8k_cmd_set_wmm_mode* @kzalloc(i32 24, i32 %12)
  store %struct.mwl8k_cmd_set_wmm_mode* %13, %struct.mwl8k_cmd_set_wmm_mode** %7, align 8
  %14 = load %struct.mwl8k_cmd_set_wmm_mode*, %struct.mwl8k_cmd_set_wmm_mode** %7, align 8
  %15 = icmp eq %struct.mwl8k_cmd_set_wmm_mode* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load i32, i32* @MWL8K_CMD_SET_WMM_MODE, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = load %struct.mwl8k_cmd_set_wmm_mode*, %struct.mwl8k_cmd_set_wmm_mode** %7, align 8
  %23 = getelementptr inbounds %struct.mwl8k_cmd_set_wmm_mode, %struct.mwl8k_cmd_set_wmm_mode* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  %25 = call i8* @cpu_to_le16(i32 24)
  %26 = load %struct.mwl8k_cmd_set_wmm_mode*, %struct.mwl8k_cmd_set_wmm_mode** %7, align 8
  %27 = getelementptr inbounds %struct.mwl8k_cmd_set_wmm_mode, %struct.mwl8k_cmd_set_wmm_mode* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = load %struct.mwl8k_cmd_set_wmm_mode*, %struct.mwl8k_cmd_set_wmm_mode** %7, align 8
  %36 = getelementptr inbounds %struct.mwl8k_cmd_set_wmm_mode, %struct.mwl8k_cmd_set_wmm_mode* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %38 = load %struct.mwl8k_cmd_set_wmm_mode*, %struct.mwl8k_cmd_set_wmm_mode** %7, align 8
  %39 = getelementptr inbounds %struct.mwl8k_cmd_set_wmm_mode, %struct.mwl8k_cmd_set_wmm_mode* %38, i32 0, i32 0
  %40 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %37, %struct.TYPE_2__* %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.mwl8k_cmd_set_wmm_mode*, %struct.mwl8k_cmd_set_wmm_mode** %7, align 8
  %42 = call i32 @kfree(%struct.mwl8k_cmd_set_wmm_mode* %41)
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %19
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %48 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %19
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.mwl8k_cmd_set_wmm_mode* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_set_wmm_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
