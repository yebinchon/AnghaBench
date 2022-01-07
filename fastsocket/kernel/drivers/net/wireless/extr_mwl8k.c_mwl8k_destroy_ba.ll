; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_destroy_ba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_destroy_ba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.mwl8k_cmd_bastream = type { %struct.TYPE_4__, %struct.TYPE_3__, i8* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MWL8K_CMD_BASTREAM = common dso_local global i32 0, align 4
@MWL8K_BA_DESTROY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Deleted BA stream index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @mwl8k_destroy_ba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_destroy_ba(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwl8k_cmd_bastream*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mwl8k_cmd_bastream* @kzalloc(i32 32, i32 %6)
  store %struct.mwl8k_cmd_bastream* %7, %struct.mwl8k_cmd_bastream** %5, align 8
  %8 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %5, align 8
  %9 = icmp eq %struct.mwl8k_cmd_bastream* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %41

11:                                               ; preds = %2
  %12 = load i32, i32* @MWL8K_CMD_BASTREAM, align 4
  %13 = call i8* @cpu_to_le16(i32 %12)
  %14 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %5, align 8
  %15 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i8* %13, i8** %16, align 8
  %17 = call i8* @cpu_to_le16(i32 32)
  %18 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %5, align 8
  %19 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* @MWL8K_BA_DESTROY, align 4
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %5, align 8
  %24 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %5, align 8
  %28 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %5, align 8
  %32 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %31, i32 0, i32 0
  %33 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %30, %struct.TYPE_4__* %32)
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @wiphy_debug(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %5, align 8
  %40 = call i32 @kfree(%struct.mwl8k_cmd_bastream* %39)
  br label %41

41:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.mwl8k_cmd_bastream* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_4__*) #1

declare dso_local i32 @wiphy_debug(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_bastream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
