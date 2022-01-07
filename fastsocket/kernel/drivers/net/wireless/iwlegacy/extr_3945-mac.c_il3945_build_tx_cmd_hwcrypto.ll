; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_build_tx_cmd_hwcrypto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_build_tx_cmd_hwcrypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.il_hw_key }
%struct.il_hw_key = type { i32, i32, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.il_device_cmd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.il3945_tx_cmd = type { i32, i32* }

@TX_CMD_SEC_CCM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"tx_cmd with AES hwcrypto\0A\00", align 1
@TX_CMD_SEC_KEY128 = common dso_local global i32 0, align 4
@TX_CMD_SEC_WEP = common dso_local global i32 0, align 4
@TX_CMD_SEC_MSK = common dso_local global i32 0, align 4
@TX_CMD_SEC_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Configuring packet for WEP encryption with key %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unknown encode cipher %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.ieee80211_tx_info*, %struct.il_device_cmd*, %struct.sk_buff*, i32)* @il3945_build_tx_cmd_hwcrypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_build_tx_cmd_hwcrypto(%struct.il_priv* %0, %struct.ieee80211_tx_info* %1, %struct.il_device_cmd* %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.il_device_cmd*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.il3945_tx_cmd*, align 8
  %12 = alloca %struct.il_hw_key*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %7, align 8
  store %struct.il_device_cmd* %2, %struct.il_device_cmd** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.il_device_cmd*, %struct.il_device_cmd** %8, align 8
  %14 = getelementptr inbounds %struct.il_device_cmd, %struct.il_device_cmd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.il3945_tx_cmd*
  store %struct.il3945_tx_cmd* %17, %struct.il3945_tx_cmd** %11, align 8
  %18 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.il_hw_key* %24, %struct.il_hw_key** %12, align 8
  %25 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %11, align 8
  %26 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.il_hw_key*, %struct.il_hw_key** %12, align 8
  %28 = getelementptr inbounds %struct.il_hw_key, %struct.il_hw_key* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %87 [
    i32 131, label %30
    i32 130, label %45
    i32 129, label %46
    i32 128, label %52
  ]

30:                                               ; preds = %5
  %31 = load i32, i32* @TX_CMD_SEC_CCM, align 4
  %32 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %11, align 8
  %33 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %11, align 8
  %35 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.il_hw_key*, %struct.il_hw_key** %12, align 8
  %38 = getelementptr inbounds %struct.il_hw_key, %struct.il_hw_key* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.il_hw_key*, %struct.il_hw_key** %12, align 8
  %41 = getelementptr inbounds %struct.il_hw_key, %struct.il_hw_key* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(i32* %36, i32 %39, i32 %42)
  %44 = call i32 (i8*, ...) @D_TX(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %92

45:                                               ; preds = %5
  br label %92

46:                                               ; preds = %5
  %47 = load i32, i32* @TX_CMD_SEC_KEY128, align 4
  %48 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %11, align 8
  %49 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %5, %46
  %53 = load i32, i32* @TX_CMD_SEC_WEP, align 4
  %54 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TX_CMD_SEC_MSK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @TX_CMD_SEC_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %53, %63
  %65 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %11, align 8
  %66 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %11, align 8
  %70 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load %struct.il_hw_key*, %struct.il_hw_key** %12, align 8
  %74 = getelementptr inbounds %struct.il_hw_key, %struct.il_hw_key* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.il_hw_key*, %struct.il_hw_key** %12, align 8
  %77 = getelementptr inbounds %struct.il_hw_key, %struct.il_hw_key* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memcpy(i32* %72, i32 %75, i32 %78)
  %80 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %81 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, ...) @D_TX(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %92

87:                                               ; preds = %5
  %88 = load %struct.il_hw_key*, %struct.il_hw_key** %12, align 8
  %89 = getelementptr inbounds %struct.il_hw_key, %struct.il_hw_key* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @IL_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %52, %45, %30
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @D_TX(i8*, ...) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
