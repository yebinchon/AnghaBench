; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_get_measurement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_get_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.ieee80211_measurement_params = type { i32, i32, i32 }
%struct.il_spectrum_cmd = type { i32, %struct.TYPE_10__*, i64, i8*, i32, i8* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.il_rx_pkt = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.il_host_cmd = type { i8*, i32, i64, i32, i32 }

@CMD_WANT_SKB = common dso_local global i32 0, align 4
@C_SPECTRUM_MEASUREMENT = common dso_local global i32 0, align 4
@RXON_FLG_TSF2HOST_MSK = common dso_local global i32 0, align 4
@RXON_FLG_ANT_A_MSK = common dso_local global i32 0, align 4
@RXON_FLG_DIS_DIV_MSK = common dso_local global i32 0, align 4
@MEASUREMENT_FILTER_FLAG = common dso_local global i32 0, align 4
@TIME_UNIT = common dso_local global i32 0, align 4
@RXON_FLG_BAND_24G_MSK = common dso_local global i32 0, align 4
@RXON_FLG_AUTO_DETECT_MSK = common dso_local global i32 0, align 4
@RXON_FLG_TGG_PROTECT_MSK = common dso_local global i32 0, align 4
@IL_CMD_FAILED_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Bad return from N_RX_ON_ASSOC command\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Replaced existing measurement: %d\0A\00", align 1
@MEASUREMENT_READY = common dso_local global i32 0, align 4
@MEASUREMENT_ACTIVE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.ieee80211_measurement_params*, i32)* @il3945_get_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_get_measurement(%struct.il_priv* %0, %struct.ieee80211_measurement_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca %struct.ieee80211_measurement_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.il_spectrum_cmd, align 8
  %9 = alloca %struct.il_rx_pkt*, align 8
  %10 = alloca %struct.il_host_cmd, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store %struct.ieee80211_measurement_params* %1, %struct.ieee80211_measurement_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %10, i32 0, i32 0
  %16 = bitcast %struct.il_spectrum_cmd* %8 to i8*
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %10, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %10, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %10, i32 0, i32 3
  %20 = load i32, i32* @CMD_WANT_SKB, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %10, i32 0, i32 4
  %22 = load i32, i32* @C_SPECTRUM_MEASUREMENT, align 4
  store i32 %22, i32* %21, align 4
  %23 = load %struct.ieee80211_measurement_params*, %struct.ieee80211_measurement_params** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_measurement_params, %struct.ieee80211_measurement_params* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le64_to_cpu(i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load %struct.ieee80211_measurement_params*, %struct.ieee80211_measurement_params** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_measurement_params, %struct.ieee80211_measurement_params* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16_to_cpu(i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %32 = call i64 @il_is_associated(%struct.il_priv* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %3
  %35 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %36 = load %struct.ieee80211_measurement_params*, %struct.ieee80211_measurement_params** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_measurement_params, %struct.ieee80211_measurement_params* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le64_to_cpu(i32 %38)
  %40 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %39, %43
  %45 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %46 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @le16_to_cpu(i32 %48)
  %50 = call i64 @il_usecs_to_beacons(%struct.il_priv* %35, i64 %44, i32 %49)
  store i64 %50, i64* %11, align 8
  br label %51

51:                                               ; preds = %34, %3
  %52 = call i32 @memset(%struct.il_spectrum_cmd* %8, i32 0, i32 48)
  %53 = call i8* @cpu_to_le16(i32 1)
  %54 = getelementptr inbounds %struct.il_spectrum_cmd, %struct.il_spectrum_cmd* %8, i32 0, i32 5
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* @RXON_FLG_TSF2HOST_MSK, align 4
  %56 = load i32, i32* @RXON_FLG_ANT_A_MSK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @RXON_FLG_DIS_DIV_MSK, align 4
  %59 = or i32 %57, %58
  %60 = getelementptr inbounds %struct.il_spectrum_cmd, %struct.il_spectrum_cmd* %8, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* @MEASUREMENT_FILTER_FLAG, align 4
  %62 = getelementptr inbounds %struct.il_spectrum_cmd, %struct.il_spectrum_cmd* %8, i32 0, i32 4
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %10, i32 0, i32 1
  store i32 48, i32* %63, align 8
  %64 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %10, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = sub i64 %66, 8
  %68 = trunc i64 %67 to i32
  %69 = call i8* @cpu_to_le16(i32 %68)
  %70 = getelementptr inbounds %struct.il_spectrum_cmd, %struct.il_spectrum_cmd* %8, i32 0, i32 3
  store i8* %69, i8** %70, align 8
  %71 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %72 = call i64 @il_is_associated(%struct.il_priv* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %51
  %75 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %76 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %77 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %82 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @le16_to_cpu(i32 %84)
  %86 = call i64 @il_add_beacon_time(%struct.il_priv* %75, i32 %79, i64 %80, i32 %85)
  %87 = getelementptr inbounds %struct.il_spectrum_cmd, %struct.il_spectrum_cmd* %8, i32 0, i32 2
  store i64 %86, i64* %87, align 8
  br label %90

88:                                               ; preds = %51
  %89 = getelementptr inbounds %struct.il_spectrum_cmd, %struct.il_spectrum_cmd* %8, i32 0, i32 2
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %88, %74
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @TIME_UNIT, align 4
  %93 = mul nsw i32 %91, %92
  %94 = call i32 @cpu_to_le32(i32 %93)
  %95 = getelementptr inbounds %struct.il_spectrum_cmd, %struct.il_spectrum_cmd* %8, i32 0, i32 1
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  store i32 %94, i32* %98, align 4
  %99 = load %struct.ieee80211_measurement_params*, %struct.ieee80211_measurement_params** %6, align 8
  %100 = getelementptr inbounds %struct.ieee80211_measurement_params, %struct.ieee80211_measurement_params* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.il_spectrum_cmd, %struct.il_spectrum_cmd* %8, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* %7, align 4
  %107 = getelementptr inbounds %struct.il_spectrum_cmd, %struct.il_spectrum_cmd* %8, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 4
  %111 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %112 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %90
  %119 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %120 = load i32, i32* @RXON_FLG_AUTO_DETECT_MSK, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @RXON_FLG_TGG_PROTECT_MSK, align 4
  %123 = or i32 %121, %122
  %124 = getelementptr inbounds %struct.il_spectrum_cmd, %struct.il_spectrum_cmd* %8, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %118, %90
  %128 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %129 = call i32 @il_send_cmd_sync(%struct.il_priv* %128, %struct.il_host_cmd* %10)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %4, align 4
  br label %192

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %10, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to %struct.il_rx_pkt*
  store %struct.il_rx_pkt* %137, %struct.il_rx_pkt** %9, align 8
  %138 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %9, align 8
  %139 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @IL_CMD_FAILED_MSK, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %134
  %146 = call i32 @IL_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %145, %134
  %150 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %9, align 8
  %151 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @le16_to_cpu(i32 %154)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  switch i32 %156, label %186 [
    i32 0, label %157
    i32 1, label %183
  ]

157:                                              ; preds = %149
  %158 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %9, align 8
  %159 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 255
  br i1 %163, label %164, label %177

164:                                              ; preds = %157
  %165 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %9, align 8
  %166 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @D_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @MEASUREMENT_READY, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %174 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %164, %157
  %178 = load i32, i32* @MEASUREMENT_ACTIVE, align 4
  %179 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %180 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  store i32 0, i32* %12, align 4
  br label %186

183:                                              ; preds = %149
  %184 = load i32, i32* @EAGAIN, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %12, align 4
  br label %186

186:                                              ; preds = %149, %183, %177
  %187 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %188 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %10, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @il_free_pages(%struct.il_priv* %187, i64 %189)
  %191 = load i32, i32* %12, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %186, %132
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @il_is_associated(%struct.il_priv*) #1

declare dso_local i64 @il_usecs_to_beacons(%struct.il_priv*, i64, i32) #1

declare dso_local i32 @memset(%struct.il_spectrum_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @il_add_beacon_time(%struct.il_priv*, i32, i64, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @il_send_cmd_sync(%struct.il_priv*, %struct.il_host_cmd*) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @D_INFO(i8*, i32) #1

declare dso_local i32 @il_free_pages(%struct.il_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
