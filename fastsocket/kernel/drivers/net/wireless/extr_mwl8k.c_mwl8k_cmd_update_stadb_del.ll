; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_update_stadb_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_update_stadb_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.mwl8k_cmd_update_stadb = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_UPDATE_STADB = common dso_local global i32 0, align 4
@MWL8K_STA_DB_DEL_ENTRY = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32*)* @mwl8k_cmd_update_stadb_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_update_stadb_del(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mwl8k_cmd_update_stadb*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mwl8k_cmd_update_stadb* @kzalloc(i32 24, i32 %10)
  store %struct.mwl8k_cmd_update_stadb* %11, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %12 = load %struct.mwl8k_cmd_update_stadb*, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %13 = icmp eq %struct.mwl8k_cmd_update_stadb* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %44

17:                                               ; preds = %3
  %18 = load i32, i32* @MWL8K_CMD_UPDATE_STADB, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = load %struct.mwl8k_cmd_update_stadb*, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %21 = getelementptr inbounds %struct.mwl8k_cmd_update_stadb, %struct.mwl8k_cmd_update_stadb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = call i8* @cpu_to_le16(i32 24)
  %24 = load %struct.mwl8k_cmd_update_stadb*, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %25 = getelementptr inbounds %struct.mwl8k_cmd_update_stadb, %struct.mwl8k_cmd_update_stadb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* @MWL8K_STA_DB_DEL_ENTRY, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = load %struct.mwl8k_cmd_update_stadb*, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %30 = getelementptr inbounds %struct.mwl8k_cmd_update_stadb, %struct.mwl8k_cmd_update_stadb* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mwl8k_cmd_update_stadb*, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %32 = getelementptr inbounds %struct.mwl8k_cmd_update_stadb, %struct.mwl8k_cmd_update_stadb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = call i32 @memcpy(i32 %33, i32* %34, i32 %35)
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %38 = load %struct.mwl8k_cmd_update_stadb*, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %39 = getelementptr inbounds %struct.mwl8k_cmd_update_stadb, %struct.mwl8k_cmd_update_stadb* %38, i32 0, i32 0
  %40 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %37, %struct.TYPE_2__* %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.mwl8k_cmd_update_stadb*, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %42 = call i32 @kfree(%struct.mwl8k_cmd_update_stadb* %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %17, %14
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.mwl8k_cmd_update_stadb* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_update_stadb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
