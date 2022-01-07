; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_set_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_set_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.mwl8k_cmd_set_slot = type { i32, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_SET_SLOT = common dso_local global i32 0, align 4
@MWL8K_CMD_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @mwl8k_cmd_set_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_set_slot(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwl8k_cmd_set_slot*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mwl8k_cmd_set_slot* @kzalloc(i32 32, i32 %8)
  store %struct.mwl8k_cmd_set_slot* %9, %struct.mwl8k_cmd_set_slot** %6, align 8
  %10 = load %struct.mwl8k_cmd_set_slot*, %struct.mwl8k_cmd_set_slot** %6, align 8
  %11 = icmp eq %struct.mwl8k_cmd_set_slot* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load i32, i32* @MWL8K_CMD_SET_SLOT, align 4
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = load %struct.mwl8k_cmd_set_slot*, %struct.mwl8k_cmd_set_slot** %6, align 8
  %19 = getelementptr inbounds %struct.mwl8k_cmd_set_slot, %struct.mwl8k_cmd_set_slot* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = call i8* @cpu_to_le16(i32 32)
  %22 = load %struct.mwl8k_cmd_set_slot*, %struct.mwl8k_cmd_set_slot** %6, align 8
  %23 = getelementptr inbounds %struct.mwl8k_cmd_set_slot, %struct.mwl8k_cmd_set_slot* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load i32, i32* @MWL8K_CMD_SET, align 4
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = load %struct.mwl8k_cmd_set_slot*, %struct.mwl8k_cmd_set_slot** %6, align 8
  %28 = getelementptr inbounds %struct.mwl8k_cmd_set_slot, %struct.mwl8k_cmd_set_slot* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.mwl8k_cmd_set_slot*, %struct.mwl8k_cmd_set_slot** %6, align 8
  %31 = getelementptr inbounds %struct.mwl8k_cmd_set_slot, %struct.mwl8k_cmd_set_slot* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %33 = load %struct.mwl8k_cmd_set_slot*, %struct.mwl8k_cmd_set_slot** %6, align 8
  %34 = getelementptr inbounds %struct.mwl8k_cmd_set_slot, %struct.mwl8k_cmd_set_slot* %33, i32 0, i32 1
  %35 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %32, %struct.TYPE_2__* %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.mwl8k_cmd_set_slot*, %struct.mwl8k_cmd_set_slot** %6, align 8
  %37 = call i32 @kfree(%struct.mwl8k_cmd_set_slot* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %15, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.mwl8k_cmd_set_slot* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_set_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
