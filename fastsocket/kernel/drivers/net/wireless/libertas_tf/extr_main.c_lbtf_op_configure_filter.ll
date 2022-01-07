; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_main.c_lbtf_op_configure_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_main.c_lbtf_op_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.lbtf_private* }
%struct.lbtf_private = type { i32, i64 }

@LBTF_DEB_MACOPS = common dso_local global i32 0, align 4
@SUPPORTED_FIF_FLAGS = common dso_local global i32 0, align 4
@FIF_PROMISC_IN_BSS = common dso_local global i32 0, align 4
@CMD_ACT_MAC_PROMISCUOUS_ENABLE = common dso_local global i32 0, align 4
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@MRVDRV_MAX_MULTICAST_LIST_SIZE = common dso_local global i64 0, align 8
@CMD_ACT_MAC_ALL_MULTICAST_ENABLE = common dso_local global i32 0, align 4
@CMD_ACT_MAC_MULTICAST_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i64)* @lbtf_op_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbtf_op_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.lbtf_private*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.lbtf_private*, %struct.lbtf_private** %12, align 8
  store %struct.lbtf_private* %13, %struct.lbtf_private** %9, align 8
  %14 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %15 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @LBTF_DEB_MACOPS, align 4
  %18 = call i32 @lbtf_deb_enter(i32 %17)
  %19 = load i32, i32* @SUPPORTED_FIF_FLAGS, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @SUPPORTED_FIF_FLAGS, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %22
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @LBTF_DEB_MACOPS, align 4
  %30 = call i32 @lbtf_deb_leave(i32 %29)
  br label %121

31:                                               ; preds = %4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* @CMD_ACT_MAC_PROMISCUOUS_ENABLE, align 4
  %39 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %40 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %50

43:                                               ; preds = %31
  %44 = load i32, i32* @CMD_ACT_MAC_PROMISCUOUS_ENABLE, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %47 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %43, %37
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FIF_ALLMULTI, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @MRVDRV_MAX_MULTICAST_LIST_SIZE, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56, %50
  %61 = load i32, i32* @CMD_ACT_MAC_ALL_MULTICAST_ENABLE, align 4
  %62 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %63 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @CMD_ACT_MAC_MULTICAST_ENABLE, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %69 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %109

72:                                               ; preds = %56
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load i32, i32* @CMD_ACT_MAC_MULTICAST_ENABLE, align 4
  %77 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %78 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load i32, i32* @CMD_ACT_MAC_ALL_MULTICAST_ENABLE, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %84 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %88 = call i32 @lbtf_cmd_set_mac_multicast_addr(%struct.lbtf_private* %87)
  br label %108

89:                                               ; preds = %72
  %90 = load i32, i32* @CMD_ACT_MAC_MULTICAST_ENABLE, align 4
  %91 = load i32, i32* @CMD_ACT_MAC_ALL_MULTICAST_ENABLE, align 4
  %92 = or i32 %90, %91
  %93 = xor i32 %92, -1
  %94 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %95 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %99 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %89
  %103 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %104 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %106 = call i32 @lbtf_cmd_set_mac_multicast_addr(%struct.lbtf_private* %105)
  br label %107

107:                                              ; preds = %102, %89
  br label %108

108:                                              ; preds = %107, %75
  br label %109

109:                                              ; preds = %108, %60
  %110 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %111 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %117 = call i32 @lbtf_set_mac_control(%struct.lbtf_private* %116)
  br label %118

118:                                              ; preds = %115, %109
  %119 = load i32, i32* @LBTF_DEB_MACOPS, align 4
  %120 = call i32 @lbtf_deb_leave(i32 %119)
  br label %121

121:                                              ; preds = %118, %28
  ret void
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

declare dso_local i32 @lbtf_cmd_set_mac_multicast_addr(%struct.lbtf_private*) #1

declare dso_local i32 @lbtf_set_mac_control(%struct.lbtf_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
