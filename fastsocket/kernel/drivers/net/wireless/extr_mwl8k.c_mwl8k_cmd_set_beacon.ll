; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_set_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_set_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.mwl8k_cmd_set_beacon = type { %struct.TYPE_2__, i32, i8* }
%struct.TYPE_2__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_SET_BEACON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32*, i32)* @mwl8k_cmd_set_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_set_beacon(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwl8k_cmd_set_beacon*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 32, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mwl8k_cmd_set_beacon* @kzalloc(i32 %15, i32 %16)
  store %struct.mwl8k_cmd_set_beacon* %17, %struct.mwl8k_cmd_set_beacon** %10, align 8
  %18 = load %struct.mwl8k_cmd_set_beacon*, %struct.mwl8k_cmd_set_beacon** %10, align 8
  %19 = icmp eq %struct.mwl8k_cmd_set_beacon* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %55

23:                                               ; preds = %4
  %24 = load i32, i32* @MWL8K_CMD_SET_BEACON, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.mwl8k_cmd_set_beacon*, %struct.mwl8k_cmd_set_beacon** %10, align 8
  %27 = getelementptr inbounds %struct.mwl8k_cmd_set_beacon, %struct.mwl8k_cmd_set_beacon* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i8* %25, i8** %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 32, %30
  %32 = trunc i64 %31 to i32
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = load %struct.mwl8k_cmd_set_beacon*, %struct.mwl8k_cmd_set_beacon** %10, align 8
  %35 = getelementptr inbounds %struct.mwl8k_cmd_set_beacon, %struct.mwl8k_cmd_set_beacon* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = load %struct.mwl8k_cmd_set_beacon*, %struct.mwl8k_cmd_set_beacon** %10, align 8
  %40 = getelementptr inbounds %struct.mwl8k_cmd_set_beacon, %struct.mwl8k_cmd_set_beacon* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.mwl8k_cmd_set_beacon*, %struct.mwl8k_cmd_set_beacon** %10, align 8
  %42 = getelementptr inbounds %struct.mwl8k_cmd_set_beacon, %struct.mwl8k_cmd_set_beacon* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @memcpy(i32 %43, i32* %44, i32 %45)
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %48 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %49 = load %struct.mwl8k_cmd_set_beacon*, %struct.mwl8k_cmd_set_beacon** %10, align 8
  %50 = getelementptr inbounds %struct.mwl8k_cmd_set_beacon, %struct.mwl8k_cmd_set_beacon* %49, i32 0, i32 0
  %51 = call i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw* %47, %struct.ieee80211_vif* %48, %struct.TYPE_2__* %50)
  store i32 %51, i32* %11, align 4
  %52 = load %struct.mwl8k_cmd_set_beacon*, %struct.mwl8k_cmd_set_beacon** %10, align 8
  %53 = call i32 @kfree(%struct.mwl8k_cmd_set_beacon* %52)
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %23, %20
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.mwl8k_cmd_set_beacon* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_set_beacon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
