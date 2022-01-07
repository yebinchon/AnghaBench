; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_update_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_update_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i64, i32, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.mwl8k_vif = type { i64 }
%struct.mwl8k_cmd_update_mac_addr = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i32, i8* }

@MWL8K_MAC_TYPE_PRIMARY_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@MWL8K_MAC_TYPE_SECONDARY_CLIENT = common dso_local global i32 0, align 4
@MWL8K_MAC_TYPE_PRIMARY_CLIENT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@MWL8K_MAC_TYPE_SECONDARY_AP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_SET_MAC_ADDR = common dso_local global i32 0, align 4
@MWL8K_CMD_DEL_MAC_ADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32*, i32)* @mwl8k_cmd_update_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_update_mac_addr(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwl8k_priv*, align 8
  %11 = alloca %struct.mwl8k_vif*, align 8
  %12 = alloca %struct.mwl8k_cmd_update_mac_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %16, align 8
  store %struct.mwl8k_priv* %17, %struct.mwl8k_priv** %10, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %19 = call %struct.mwl8k_vif* @MWL8K_VIF(%struct.ieee80211_vif* %18)
  store %struct.mwl8k_vif* %19, %struct.mwl8k_vif** %11, align 8
  %20 = load i32, i32* @MWL8K_MAC_TYPE_PRIMARY_AP, align 4
  store i32 %20, i32* %13, align 4
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %22 = icmp ne %struct.ieee80211_vif* %21, null
  br i1 %22, label %23, label %52

23:                                               ; preds = %4
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %23
  %30 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %11, align 8
  %31 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %10, align 8
  %35 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ffs(i32 %36)
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %10, align 8
  %41 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @MWL8K_MAC_TYPE_SECONDARY_CLIENT, align 4
  store i32 %45, i32* %13, align 4
  br label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @MWL8K_MAC_TYPE_PRIMARY_CLIENT, align 4
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %46, %44
  br label %51

49:                                               ; preds = %29
  %50 = load i32, i32* @MWL8K_MAC_TYPE_SECONDARY_CLIENT, align 4
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %49, %48
  br label %77

52:                                               ; preds = %23, %4
  %53 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %54 = icmp ne %struct.ieee80211_vif* %53, null
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %11, align 8
  %63 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  %66 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %10, align 8
  %67 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @ffs(i32 %68)
  %70 = icmp eq i64 %65, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @MWL8K_MAC_TYPE_PRIMARY_AP, align 4
  store i32 %72, i32* %13, align 4
  br label %75

73:                                               ; preds = %61
  %74 = load i32, i32* @MWL8K_MAC_TYPE_SECONDARY_AP, align 4
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %73, %71
  br label %76

76:                                               ; preds = %75, %55, %52
  br label %77

77:                                               ; preds = %76, %51
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call %struct.mwl8k_cmd_update_mac_addr* @kzalloc(i32 40, i32 %78)
  store %struct.mwl8k_cmd_update_mac_addr* %79, %struct.mwl8k_cmd_update_mac_addr** %12, align 8
  %80 = load %struct.mwl8k_cmd_update_mac_addr*, %struct.mwl8k_cmd_update_mac_addr** %12, align 8
  %81 = icmp eq %struct.mwl8k_cmd_update_mac_addr* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %138

85:                                               ; preds = %77
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* @MWL8K_CMD_SET_MAC_ADDR, align 4
  %90 = call i8* @cpu_to_le16(i32 %89)
  %91 = load %struct.mwl8k_cmd_update_mac_addr*, %struct.mwl8k_cmd_update_mac_addr** %12, align 8
  %92 = getelementptr inbounds %struct.mwl8k_cmd_update_mac_addr, %struct.mwl8k_cmd_update_mac_addr* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i8* %90, i8** %93, align 8
  br label %100

94:                                               ; preds = %85
  %95 = load i32, i32* @MWL8K_CMD_DEL_MAC_ADDR, align 4
  %96 = call i8* @cpu_to_le16(i32 %95)
  %97 = load %struct.mwl8k_cmd_update_mac_addr*, %struct.mwl8k_cmd_update_mac_addr** %12, align 8
  %98 = getelementptr inbounds %struct.mwl8k_cmd_update_mac_addr, %struct.mwl8k_cmd_update_mac_addr* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store i8* %96, i8** %99, align 8
  br label %100

100:                                              ; preds = %94, %88
  %101 = call i8* @cpu_to_le16(i32 40)
  %102 = load %struct.mwl8k_cmd_update_mac_addr*, %struct.mwl8k_cmd_update_mac_addr** %12, align 8
  %103 = getelementptr inbounds %struct.mwl8k_cmd_update_mac_addr, %struct.mwl8k_cmd_update_mac_addr* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i8* %101, i8** %104, align 8
  %105 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %10, align 8
  %106 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %100
  %110 = load i32, i32* %13, align 4
  %111 = call i8* @cpu_to_le16(i32 %110)
  %112 = load %struct.mwl8k_cmd_update_mac_addr*, %struct.mwl8k_cmd_update_mac_addr** %12, align 8
  %113 = getelementptr inbounds %struct.mwl8k_cmd_update_mac_addr, %struct.mwl8k_cmd_update_mac_addr* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i8* %111, i8** %114, align 8
  %115 = load %struct.mwl8k_cmd_update_mac_addr*, %struct.mwl8k_cmd_update_mac_addr** %12, align 8
  %116 = getelementptr inbounds %struct.mwl8k_cmd_update_mac_addr, %struct.mwl8k_cmd_update_mac_addr* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* @ETH_ALEN, align 4
  %121 = call i32 @memcpy(i32 %118, i32* %119, i32 %120)
  br label %129

122:                                              ; preds = %100
  %123 = load %struct.mwl8k_cmd_update_mac_addr*, %struct.mwl8k_cmd_update_mac_addr** %12, align 8
  %124 = getelementptr inbounds %struct.mwl8k_cmd_update_mac_addr, %struct.mwl8k_cmd_update_mac_addr* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* @ETH_ALEN, align 4
  %128 = call i32 @memcpy(i32 %125, i32* %126, i32 %127)
  br label %129

129:                                              ; preds = %122, %109
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %131 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %132 = load %struct.mwl8k_cmd_update_mac_addr*, %struct.mwl8k_cmd_update_mac_addr** %12, align 8
  %133 = getelementptr inbounds %struct.mwl8k_cmd_update_mac_addr, %struct.mwl8k_cmd_update_mac_addr* %132, i32 0, i32 0
  %134 = call i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw* %130, %struct.ieee80211_vif* %131, %struct.TYPE_4__* %133)
  store i32 %134, i32* %14, align 4
  %135 = load %struct.mwl8k_cmd_update_mac_addr*, %struct.mwl8k_cmd_update_mac_addr** %12, align 8
  %136 = call i32 @kfree(%struct.mwl8k_cmd_update_mac_addr* %135)
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %129, %82
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local %struct.mwl8k_vif* @MWL8K_VIF(%struct.ieee80211_vif*) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local %struct.mwl8k_cmd_update_mac_addr* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_update_mac_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
