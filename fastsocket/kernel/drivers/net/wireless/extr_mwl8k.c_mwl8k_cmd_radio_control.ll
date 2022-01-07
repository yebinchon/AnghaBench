; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_radio_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_radio_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, i64 }
%struct.mwl8k_cmd_radio_control = type { %struct.TYPE_2__, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_RADIO_CONTROL = common dso_local global i32 0, align 4
@MWL8K_CMD_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @mwl8k_cmd_radio_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_radio_control(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwl8k_priv*, align 8
  %9 = alloca %struct.mwl8k_cmd_radio_control*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %12, align 8
  store %struct.mwl8k_priv* %13, %struct.mwl8k_priv** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %8, align 8
  %16 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %75

23:                                               ; preds = %19, %3
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.mwl8k_cmd_radio_control* @kzalloc(i32 40, i32 %24)
  store %struct.mwl8k_cmd_radio_control* %25, %struct.mwl8k_cmd_radio_control** %9, align 8
  %26 = load %struct.mwl8k_cmd_radio_control*, %struct.mwl8k_cmd_radio_control** %9, align 8
  %27 = icmp eq %struct.mwl8k_cmd_radio_control* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %75

31:                                               ; preds = %23
  %32 = load i32, i32* @MWL8K_CMD_RADIO_CONTROL, align 4
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = load %struct.mwl8k_cmd_radio_control*, %struct.mwl8k_cmd_radio_control** %9, align 8
  %35 = getelementptr inbounds %struct.mwl8k_cmd_radio_control, %struct.mwl8k_cmd_radio_control* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = call i8* @cpu_to_le16(i32 40)
  %38 = load %struct.mwl8k_cmd_radio_control*, %struct.mwl8k_cmd_radio_control** %9, align 8
  %39 = getelementptr inbounds %struct.mwl8k_cmd_radio_control, %struct.mwl8k_cmd_radio_control* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* @MWL8K_CMD_SET, align 4
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = load %struct.mwl8k_cmd_radio_control*, %struct.mwl8k_cmd_radio_control** %9, align 8
  %44 = getelementptr inbounds %struct.mwl8k_cmd_radio_control, %struct.mwl8k_cmd_radio_control* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %8, align 8
  %46 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 3, i32 1
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = load %struct.mwl8k_cmd_radio_control*, %struct.mwl8k_cmd_radio_control** %9, align 8
  %53 = getelementptr inbounds %struct.mwl8k_cmd_radio_control, %struct.mwl8k_cmd_radio_control* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.mwl8k_cmd_radio_control*, %struct.mwl8k_cmd_radio_control** %9, align 8
  %60 = getelementptr inbounds %struct.mwl8k_cmd_radio_control, %struct.mwl8k_cmd_radio_control* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %62 = load %struct.mwl8k_cmd_radio_control*, %struct.mwl8k_cmd_radio_control** %9, align 8
  %63 = getelementptr inbounds %struct.mwl8k_cmd_radio_control, %struct.mwl8k_cmd_radio_control* %62, i32 0, i32 0
  %64 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %61, %struct.TYPE_2__* %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.mwl8k_cmd_radio_control*, %struct.mwl8k_cmd_radio_control** %9, align 8
  %66 = call i32 @kfree(%struct.mwl8k_cmd_radio_control* %65)
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %31
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %8, align 8
  %72 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %31
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %28, %22
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.mwl8k_cmd_radio_control* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_radio_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
