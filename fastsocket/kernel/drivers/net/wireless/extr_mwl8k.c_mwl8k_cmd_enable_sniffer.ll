; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_enable_sniffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_enable_sniffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.mwl8k_cmd_enable_sniffer = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_ENABLE_SNIFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @mwl8k_cmd_enable_sniffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_enable_sniffer(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwl8k_cmd_enable_sniffer*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mwl8k_cmd_enable_sniffer* @kzalloc(i32 24, i32 %8)
  store %struct.mwl8k_cmd_enable_sniffer* %9, %struct.mwl8k_cmd_enable_sniffer** %6, align 8
  %10 = load %struct.mwl8k_cmd_enable_sniffer*, %struct.mwl8k_cmd_enable_sniffer** %6, align 8
  %11 = icmp eq %struct.mwl8k_cmd_enable_sniffer* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load i32, i32* @MWL8K_CMD_ENABLE_SNIFFER, align 4
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = load %struct.mwl8k_cmd_enable_sniffer*, %struct.mwl8k_cmd_enable_sniffer** %6, align 8
  %19 = getelementptr inbounds %struct.mwl8k_cmd_enable_sniffer, %struct.mwl8k_cmd_enable_sniffer* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = call i8* @cpu_to_le16(i32 24)
  %22 = load %struct.mwl8k_cmd_enable_sniffer*, %struct.mwl8k_cmd_enable_sniffer** %6, align 8
  %23 = getelementptr inbounds %struct.mwl8k_cmd_enable_sniffer, %struct.mwl8k_cmd_enable_sniffer* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = load %struct.mwl8k_cmd_enable_sniffer*, %struct.mwl8k_cmd_enable_sniffer** %6, align 8
  %32 = getelementptr inbounds %struct.mwl8k_cmd_enable_sniffer, %struct.mwl8k_cmd_enable_sniffer* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %34 = load %struct.mwl8k_cmd_enable_sniffer*, %struct.mwl8k_cmd_enable_sniffer** %6, align 8
  %35 = getelementptr inbounds %struct.mwl8k_cmd_enable_sniffer, %struct.mwl8k_cmd_enable_sniffer* %34, i32 0, i32 0
  %36 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %33, %struct.TYPE_2__* %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.mwl8k_cmd_enable_sniffer*, %struct.mwl8k_cmd_enable_sniffer** %6, align 8
  %38 = call i32 @kfree(%struct.mwl8k_cmd_enable_sniffer* %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %15, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.mwl8k_cmd_enable_sniffer* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_enable_sniffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
