; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_configure_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, i64 }
%struct.mwl8k_cmd_pkt = type { i32 }
%struct.mwl8k_vif = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@FIF_ALLMULTI = common dso_local global i32 0, align 4
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\01\00\00\00\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i64)* @mwl8k_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mwl8k_priv*, align 8
  %10 = alloca %struct.mwl8k_cmd_pkt*, align 8
  %11 = alloca %struct.mwl8k_vif*, align 8
  %12 = alloca i8*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %14, align 8
  store %struct.mwl8k_priv* %15, %struct.mwl8k_priv** %9, align 8
  %16 = load i64, i64* %8, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.mwl8k_cmd_pkt*
  store %struct.mwl8k_cmd_pkt* %18, %struct.mwl8k_cmd_pkt** %10, align 8
  %19 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %20 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load i32, i32* @FIF_ALLMULTI, align 4
  %25 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %26 = or i32 %24, %25
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %10, align 8
  %31 = call i32 @kfree(%struct.mwl8k_cmd_pkt* %30)
  br label %127

32:                                               ; preds = %4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FIF_CONTROL, align 4
  %36 = load i32, i32* @FIF_OTHER_BSS, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @mwl8k_configure_filter_sniffer(%struct.ieee80211_hw* %41, i32 %42, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %10, align 8
  %48 = call i32 @kfree(%struct.mwl8k_cmd_pkt* %47)
  br label %127

49:                                               ; preds = %40, %32
  %50 = load i32, i32* @FIF_ALLMULTI, align 4
  %51 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %52 = or i32 %50, %51
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %57 = call i64 @mwl8k_fw_lock(%struct.ieee80211_hw* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %10, align 8
  %61 = call i32 @kfree(%struct.mwl8k_cmd_pkt* %60)
  br label %127

62:                                               ; preds = %49
  %63 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %64 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %69 = call i32 @mwl8k_cmd_enable_sniffer(%struct.ieee80211_hw* %68, i32 0)
  %70 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %71 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %72
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %85 = call i32 @mwl8k_cmd_set_pre_scan(%struct.ieee80211_hw* %84)
  br label %103

86:                                               ; preds = %77
  %87 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %88 = call %struct.mwl8k_vif* @mwl8k_first_vif(%struct.mwl8k_priv* %87)
  store %struct.mwl8k_vif* %88, %struct.mwl8k_vif** %11, align 8
  %89 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %11, align 8
  %90 = icmp ne %struct.mwl8k_vif* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %11, align 8
  %93 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %12, align 8
  br label %99

98:                                               ; preds = %86
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %99

99:                                               ; preds = %98, %91
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @mwl8k_cmd_set_post_scan(%struct.ieee80211_hw* %100, i8* %101)
  br label %103

103:                                              ; preds = %99, %83
  br label %104

104:                                              ; preds = %103, %72
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @FIF_ALLMULTI, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %10, align 8
  %112 = call i32 @kfree(%struct.mwl8k_cmd_pkt* %111)
  %113 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %114 = call %struct.mwl8k_cmd_pkt* (%struct.ieee80211_hw*, i32, i32, ...) @__mwl8k_cmd_mac_multicast_adr(%struct.ieee80211_hw* %113, i32 1, i32 0, i8* null)
  store %struct.mwl8k_cmd_pkt* %114, %struct.mwl8k_cmd_pkt** %10, align 8
  br label %115

115:                                              ; preds = %110, %104
  %116 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %10, align 8
  %117 = icmp ne %struct.mwl8k_cmd_pkt* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %120 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %10, align 8
  %121 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %119, %struct.mwl8k_cmd_pkt* %120)
  %122 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %10, align 8
  %123 = call i32 @kfree(%struct.mwl8k_cmd_pkt* %122)
  br label %124

124:                                              ; preds = %118, %115
  %125 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %126 = call i32 @mwl8k_fw_unlock(%struct.ieee80211_hw* %125)
  br label %127

127:                                              ; preds = %124, %59, %46, %23
  ret void
}

declare dso_local i32 @kfree(%struct.mwl8k_cmd_pkt*) #1

declare dso_local i64 @mwl8k_configure_filter_sniffer(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i64 @mwl8k_fw_lock(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_cmd_enable_sniffer(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mwl8k_cmd_set_pre_scan(%struct.ieee80211_hw*) #1

declare dso_local %struct.mwl8k_vif* @mwl8k_first_vif(%struct.mwl8k_priv*) #1

declare dso_local i32 @mwl8k_cmd_set_post_scan(%struct.ieee80211_hw*, i8*) #1

declare dso_local %struct.mwl8k_cmd_pkt* @__mwl8k_cmd_mac_multicast_adr(%struct.ieee80211_hw*, i32, i32, ...) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.mwl8k_cmd_pkt*) #1

declare dso_local i32 @mwl8k_fw_unlock(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
