; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_use_fixed_rate_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_use_fixed_rate_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.mwl8k_cmd_use_fixed_rate_sta = type { %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_USE_FIXED_RATE = common dso_local global i32 0, align 4
@MWL8K_USE_AUTO_RATE = common dso_local global i32 0, align 4
@MWL8K_UCAST_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @mwl8k_cmd_use_fixed_rate_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_use_fixed_rate_sta(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.mwl8k_cmd_use_fixed_rate_sta*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mwl8k_cmd_use_fixed_rate_sta* @kzalloc(i32 32, i32 %6)
  store %struct.mwl8k_cmd_use_fixed_rate_sta* %7, %struct.mwl8k_cmd_use_fixed_rate_sta** %4, align 8
  %8 = load %struct.mwl8k_cmd_use_fixed_rate_sta*, %struct.mwl8k_cmd_use_fixed_rate_sta** %4, align 8
  %9 = icmp eq %struct.mwl8k_cmd_use_fixed_rate_sta* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load i32, i32* @MWL8K_CMD_USE_FIXED_RATE, align 4
  %15 = call i8* @cpu_to_le16(i32 %14)
  %16 = load %struct.mwl8k_cmd_use_fixed_rate_sta*, %struct.mwl8k_cmd_use_fixed_rate_sta** %4, align 8
  %17 = getelementptr inbounds %struct.mwl8k_cmd_use_fixed_rate_sta, %struct.mwl8k_cmd_use_fixed_rate_sta* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i8* %15, i8** %18, align 8
  %19 = call i8* @cpu_to_le16(i32 32)
  %20 = load %struct.mwl8k_cmd_use_fixed_rate_sta*, %struct.mwl8k_cmd_use_fixed_rate_sta** %4, align 8
  %21 = getelementptr inbounds %struct.mwl8k_cmd_use_fixed_rate_sta, %struct.mwl8k_cmd_use_fixed_rate_sta* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* @MWL8K_USE_AUTO_RATE, align 4
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.mwl8k_cmd_use_fixed_rate_sta*, %struct.mwl8k_cmd_use_fixed_rate_sta** %4, align 8
  %26 = getelementptr inbounds %struct.mwl8k_cmd_use_fixed_rate_sta, %struct.mwl8k_cmd_use_fixed_rate_sta* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @MWL8K_UCAST_RATE, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = load %struct.mwl8k_cmd_use_fixed_rate_sta*, %struct.mwl8k_cmd_use_fixed_rate_sta** %4, align 8
  %30 = getelementptr inbounds %struct.mwl8k_cmd_use_fixed_rate_sta, %struct.mwl8k_cmd_use_fixed_rate_sta* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %32 = load %struct.mwl8k_cmd_use_fixed_rate_sta*, %struct.mwl8k_cmd_use_fixed_rate_sta** %4, align 8
  %33 = getelementptr inbounds %struct.mwl8k_cmd_use_fixed_rate_sta, %struct.mwl8k_cmd_use_fixed_rate_sta* %32, i32 0, i32 0
  %34 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %31, %struct.TYPE_2__* %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.mwl8k_cmd_use_fixed_rate_sta*, %struct.mwl8k_cmd_use_fixed_rate_sta** %4, align 8
  %36 = call i32 @kfree(%struct.mwl8k_cmd_use_fixed_rate_sta* %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %13, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.mwl8k_cmd_use_fixed_rate_sta* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_use_fixed_rate_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
