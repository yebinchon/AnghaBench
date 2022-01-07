; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_add_peer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_add_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32* }
%struct.wl12xx_vif = type { i64 }
%struct.ieee80211_sta = type { i32, i32*, %struct.TYPE_4__, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.wl12xx_cmd_add_peer = type { i64, i32, i32, i32*, i32, i32, i32, i32, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cmd add peer %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WL1271_AP_BSS_INDEX = common dso_local global i32 0, align 4
@NUM_ACCESS_CATEGORIES_COPY = common dso_local global i32 0, align 4
@WL1271_PSD_UPSD_TRIGGER = common dso_local global i32 0, align 4
@WL1271_PSD_LEGACY = common dso_local global i32 0, align 4
@HW_HT_RATES_OFFSET = common dso_local global i32 0, align 4
@HW_MIMO_RATES_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"new peer rates=0x%x queues=0x%x\00", align 1
@CMD_ADD_PEER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to initiate cmd add peer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_add_peer(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.ieee80211_sta* %2, i64 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wl12xx_cmd_add_peer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @DEBUG_CMD, align 4
  %14 = load i64, i64* %8, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.wl12xx_cmd_add_peer* @kzalloc(i32 48, i32 %17)
  store %struct.wl12xx_cmd_add_peer* %18, %struct.wl12xx_cmd_add_peer** %9, align 8
  %19 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %20 = icmp ne %struct.wl12xx_cmd_add_peer* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %11, align 4
  br label %174

24:                                               ; preds = %4
  %25 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %26 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i32 @memcpy(i32 %27, i32 %30, i32 %31)
  %33 = load i32, i32* @WL1271_AP_BSS_INDEX, align 4
  %34 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %35 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %40 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %43 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %48 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %56 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %58 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %64 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %105, %24
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @NUM_ACCESS_CATEGORIES_COPY, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %108

69:                                               ; preds = %65
  %70 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %71 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %69
  %75 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %76 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load i32, i32* @WL1271_PSD_UPSD_TRIGGER, align 4
  %84 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %85 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @NUM_ACCESS_CATEGORIES_COPY, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %86, i64 %91
  store i32 %83, i32* %92, align 4
  br label %104

93:                                               ; preds = %74, %69
  %94 = load i32, i32* @WL1271_PSD_LEGACY, align 4
  %95 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %96 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* @NUM_ACCESS_CATEGORIES_COPY, align 4
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %97, i64 %102
  store i32 %94, i32* %103, align 4
  br label %104

104:                                              ; preds = %93, %82
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %65

108:                                              ; preds = %65
  %109 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %110 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %113 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %12, align 4
  %117 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %118 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %108
  %123 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %124 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @HW_HT_RATES_OFFSET, align 4
  %131 = shl i32 %129, %130
  %132 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %133 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @HW_MIMO_RATES_OFFSET, align 4
  %140 = shl i32 %138, %139
  %141 = or i32 %131, %140
  %142 = load i32, i32* %12, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %12, align 4
  br label %144

144:                                              ; preds = %122, %108
  %145 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %148 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @wl1271_tx_enabled_rates_get(%struct.wl1271* %145, i32 %146, i64 %149)
  %151 = call i32 @cpu_to_le32(i32 %150)
  %152 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %153 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @DEBUG_CMD, align 4
  %155 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %156 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %159 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %154, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %157, i32 %160)
  %162 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %163 = load i32, i32* @CMD_ADD_PEER, align 4
  %164 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %165 = call i32 @wl1271_cmd_send(%struct.wl1271* %162, i32 %163, %struct.wl12xx_cmd_add_peer* %164, i32 48, i32 0)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %144
  %169 = call i32 @wl1271_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %171

170:                                              ; preds = %144
  br label %171

171:                                              ; preds = %170, %168
  %172 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %173 = call i32 @kfree(%struct.wl12xx_cmd_add_peer* %172)
  br label %174

174:                                              ; preds = %171, %21
  %175 = load i32, i32* %11, align 4
  ret i32 %175
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32, ...) #1

declare dso_local %struct.wl12xx_cmd_add_peer* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_tx_enabled_rates_get(%struct.wl1271*, i32, i64) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_add_peer*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_add_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
