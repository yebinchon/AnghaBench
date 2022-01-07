; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_rx.c_wl1251_rx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_rx.c_wl1251_rx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64, i64 }
%struct.wl1251_rx_descriptor = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i64, i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@BSS_TYPE_IBSS = common dso_local global i64 0, align 8
@RX_FLAG_MACTIME_START = common dso_local global i32 0, align 4
@RX_DESC_ENCRYPTION_MASK = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@RX_DESC_DECRYPT_FAIL = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_DESC_MIC_FAIL = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@RX_DESC_VALID_FCS = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@RATE_1MBPS = common dso_local global i32 0, align 4
@OFDM_RATE_BIT = common dso_local global i32 0, align 4
@SHORT_PREAMBLE_BIT = common dso_local global i32 0, align 4
@RX_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1251*, %struct.wl1251_rx_descriptor*, %struct.ieee80211_rx_status*, i64)* @wl1251_rx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_rx_status(%struct.wl1251* %0, %struct.wl1251_rx_descriptor* %1, %struct.ieee80211_rx_status* %2, i64 %3) #0 {
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca %struct.wl1251_rx_descriptor*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %5, align 8
  store %struct.wl1251_rx_descriptor* %1, %struct.wl1251_rx_descriptor** %6, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %12 = call i32 @memset(%struct.ieee80211_rx_status* %11, i32 0, i32 32)
  %13 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %14 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %17 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %22 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BSS_TYPE_IBSS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %31 = call i32 @wl1251_acx_tsf_info(%struct.wl1251* %30, i32* %9)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %29
  br label %39

39:                                               ; preds = %38, %26, %4
  %40 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %41 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  %45 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %46 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %49 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %47, %52
  %54 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %55 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %57 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ieee80211_channel_to_frequency(i32 %58, i32 %61)
  %63 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %64 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @RX_FLAG_MACTIME_START, align 4
  %66 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %71 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RX_DESC_ENCRYPTION_MASK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %115

76:                                               ; preds = %39
  %77 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %78 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %81 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %85 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RX_DESC_DECRYPT_FAIL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i64 @likely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %76
  %95 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %96 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %97 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %76
  %101 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %102 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @RX_DESC_MIC_FAIL, align 4
  %105 = and i32 %103, %104
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %110 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %111 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %108, %100
  br label %115

115:                                              ; preds = %114, %39
  %116 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %117 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @RX_DESC_VALID_FCS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %115
  %127 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %128 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %126, %115
  %133 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %134 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  switch i32 %135, label %166 [
    i32 134, label %136
    i32 130, label %139
    i32 137, label %142
    i32 129, label %145
    i32 128, label %148
    i32 136, label %151
    i32 135, label %154
    i32 133, label %157
    i32 132, label %160
    i32 131, label %163
  ]

136:                                              ; preds = %132
  %137 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %138 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %137, i32 0, i32 1
  store i32 1, i32* %138, align 4
  br label %166

139:                                              ; preds = %132
  %140 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %141 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %140, i32 0, i32 1
  store i32 2, i32* %141, align 4
  br label %166

142:                                              ; preds = %132
  %143 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %144 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %143, i32 0, i32 1
  store i32 3, i32* %144, align 4
  br label %166

145:                                              ; preds = %132
  %146 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %147 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %146, i32 0, i32 1
  store i32 4, i32* %147, align 4
  br label %166

148:                                              ; preds = %132
  %149 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %150 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %149, i32 0, i32 1
  store i32 5, i32* %150, align 4
  br label %166

151:                                              ; preds = %132
  %152 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %153 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %152, i32 0, i32 1
  store i32 7, i32* %153, align 4
  br label %166

154:                                              ; preds = %132
  %155 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %156 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %155, i32 0, i32 1
  store i32 8, i32* %156, align 4
  br label %166

157:                                              ; preds = %132
  %158 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %159 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %158, i32 0, i32 1
  store i32 9, i32* %159, align 4
  br label %166

160:                                              ; preds = %132
  %161 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %162 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %161, i32 0, i32 1
  store i32 10, i32* %162, align 4
  br label %166

163:                                              ; preds = %132
  %164 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %165 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %164, i32 0, i32 1
  store i32 11, i32* %165, align 4
  br label %166

166:                                              ; preds = %132, %163, %160, %157, %154, %151, %148, %145, %142, %139, %136
  %167 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %168 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @RATE_1MBPS, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %166
  %173 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %174 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @OFDM_RATE_BIT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %172
  %180 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %181 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %180, i32 0, i32 1
  store i32 0, i32* %181, align 4
  br label %185

182:                                              ; preds = %172
  %183 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %184 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %183, i32 0, i32 1
  store i32 6, i32* %184, align 4
  br label %185

185:                                              ; preds = %182, %179
  br label %186

186:                                              ; preds = %185, %166
  %187 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %188 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @SHORT_PREAMBLE_BIT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %186
  %194 = load i32, i32* @RX_FLAG_SHORTPRE, align 4
  %195 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %196 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %193, %186
  ret void
}

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @wl1251_acx_tsf_info(%struct.wl1251*, i32*) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
