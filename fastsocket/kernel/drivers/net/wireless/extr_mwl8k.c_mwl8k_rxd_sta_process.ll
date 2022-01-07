; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_rxd_sta_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_rxd_sta_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i32, i32 }
%struct.mwl8k_rxd_sta = type { i32, i32, i32, i32, i32, i32, i32 }

@MWL8K_STA_RX_CTRL_OWNED_BY_HOST = common dso_local global i32 0, align 4
@MWL8K_STA_RATE_INFO_SHORTPRE = common dso_local global i32 0, align 4
@RX_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@MWL8K_STA_RATE_INFO_40MHZ = common dso_local global i32 0, align 4
@RX_FLAG_40MHZ = common dso_local global i32 0, align 4
@MWL8K_STA_RATE_INFO_SHORTGI = common dso_local global i32 0, align 4
@RX_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@MWL8K_STA_RATE_INFO_MCS_FORMAT = common dso_local global i32 0, align 4
@RX_FLAG_HT = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@MWL8K_STA_RX_CTRL_DECRYPT_ERROR = common dso_local global i32 0, align 4
@MWL8K_STA_RX_CTRL_DEC_ERR_TYPE = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ieee80211_rx_status*, i32*, i32*)* @mwl8k_rxd_sta_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_rxd_sta_process(i8* %0, %struct.ieee80211_rx_status* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mwl8k_rxd_sta*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.ieee80211_rx_status* %1, %struct.ieee80211_rx_status** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.mwl8k_rxd_sta*
  store %struct.mwl8k_rxd_sta* %13, %struct.mwl8k_rxd_sta** %10, align 8
  %14 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %15 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MWL8K_STA_RX_CTRL_OWNED_BY_HOST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %154

21:                                               ; preds = %4
  %22 = call i32 (...) @rmb()
  %23 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %24 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %28 = call i32 @memset(%struct.ieee80211_rx_status* %27, i32 0, i32 24)
  %29 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %30 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %36 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 0, %37
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @MWL8K_STA_RATE_INFO_ANTSELECT(i32 %40)
  %42 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @MWL8K_STA_RATE_INFO_RATEID(i32 %44)
  %46 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @MWL8K_STA_RATE_INFO_SHORTPRE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %21
  %53 = load i32, i32* @RX_FLAG_SHORTPRE, align 4
  %54 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %21
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @MWL8K_STA_RATE_INFO_40MHZ, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* @RX_FLAG_40MHZ, align 4
  %65 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @MWL8K_STA_RATE_INFO_SHORTGI, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @RX_FLAG_SHORT_GI, align 4
  %76 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %77 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %69
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @MWL8K_STA_RATE_INFO_MCS_FORMAT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* @RX_FLAG_HT, align 4
  %87 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %88 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %80
  %92 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %93 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 14
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %98 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %99 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %101 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @RX_FLAG_HT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %96
  %107 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %108 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, 5
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106, %96
  br label %116

112:                                              ; preds = %91
  %113 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %114 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %115 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %112, %111
  %117 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %118 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %121 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ieee80211_channel_to_frequency(i32 %119, i32 %122)
  %124 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %125 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %127 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %8, align 8
  store i32 %128, i32* %129, align 4
  %130 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %131 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @MWL8K_STA_RX_CTRL_DECRYPT_ERROR, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %116
  %137 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %138 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @MWL8K_STA_RX_CTRL_DEC_ERR_TYPE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %145 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %146 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %143, %136, %116
  %150 = load %struct.mwl8k_rxd_sta*, %struct.mwl8k_rxd_sta** %10, align 8
  %151 = getelementptr inbounds %struct.mwl8k_rxd_sta, %struct.mwl8k_rxd_sta* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @le16_to_cpu(i32 %152)
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %149, %20
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @MWL8K_STA_RATE_INFO_ANTSELECT(i32) #1

declare dso_local i32 @MWL8K_STA_RATE_INFO_RATEID(i32) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
