; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_rxd_ap_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_rxd_ap_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i32 }
%struct.mwl8k_rxd_ap = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@MWL8K_AP_RX_CTRL_OWNED_BY_HOST = common dso_local global i32 0, align 4
@MWL8K_AP_RATE_INFO_MCS_FORMAT = common dso_local global i32 0, align 4
@RX_FLAG_HT = common dso_local global i32 0, align 4
@MWL8K_AP_RATE_INFO_40MHZ = common dso_local global i32 0, align 4
@RX_FLAG_40MHZ = common dso_local global i32 0, align 4
@mwl8k_rates_24 = common dso_local global %struct.TYPE_3__* null, align 8
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@MWL8K_AP_RXSTAT_GENERAL_DECRYPT_ERR = common dso_local global i32 0, align 4
@MWL8K_AP_RXSTAT_DECRYPT_ERR_MASK = common dso_local global i32 0, align 4
@MWL8K_AP_RXSTAT_TKIP_DECRYPT_MIC_ERR = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ieee80211_rx_status*, i32*, i32*)* @mwl8k_rxd_ap_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_rxd_ap_process(i8* %0, %struct.ieee80211_rx_status* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mwl8k_rxd_ap*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.ieee80211_rx_status* %1, %struct.ieee80211_rx_status** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.mwl8k_rxd_ap*
  store %struct.mwl8k_rxd_ap* %13, %struct.mwl8k_rxd_ap** %10, align 8
  %14 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %15 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MWL8K_AP_RX_CTRL_OWNED_BY_HOST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %162

21:                                               ; preds = %4
  %22 = call i32 (...) @rmb()
  %23 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %24 = call i32 @memset(%struct.ieee80211_rx_status* %23, i32 0, i32 20)
  %25 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %26 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 0, %27
  %29 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %32 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 0, %33
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %37 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MWL8K_AP_RATE_INFO_MCS_FORMAT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %21
  %43 = load i32, i32* @RX_FLAG_HT, align 4
  %44 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %49 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MWL8K_AP_RATE_INFO_40MHZ, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load i32, i32* @RX_FLAG_40MHZ, align 4
  %56 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %42
  %61 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %62 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @MWL8K_AP_RATE_INFO_RATEID(i32 %63)
  %65 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %93

67:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %89, %67
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mwl8k_rates_24, align 8
  %71 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %70)
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %68
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mwl8k_rates_24, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %81 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %87 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %92

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %68

92:                                               ; preds = %84, %68
  br label %93

93:                                               ; preds = %92, %60
  %94 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %95 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 14
  br i1 %97, label %98, label %114

98:                                               ; preds = %93
  %99 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %100 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %101 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %103 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @RX_FLAG_HT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %98
  %109 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %110 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 5
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %108, %98
  br label %118

114:                                              ; preds = %93
  %115 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %116 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %117 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %113
  %119 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %120 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %123 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ieee80211_channel_to_frequency(i32 %121, i32 %124)
  %126 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %127 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %129 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %8, align 8
  store i32 %130, i32* %131, align 4
  %132 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %133 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @MWL8K_AP_RXSTAT_GENERAL_DECRYPT_ERR, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %157

137:                                              ; preds = %118
  %138 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %139 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @MWL8K_AP_RXSTAT_DECRYPT_ERR_MASK, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %137
  %145 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %146 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @MWL8K_AP_RXSTAT_TKIP_DECRYPT_MIC_ERR, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %153 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %154 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %151, %144, %137, %118
  %158 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %10, align 8
  %159 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @le16_to_cpu(i32 %160)
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %157, %20
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @MWL8K_AP_RATE_INFO_RATEID(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
