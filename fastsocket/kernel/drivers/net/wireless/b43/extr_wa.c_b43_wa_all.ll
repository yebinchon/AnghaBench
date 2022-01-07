; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_wa.c_b43_wa_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_wa.c_b43_wa_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i64, i32 }

@B43_PHYTYPE_A = common dso_local global i64 0, align 8
@B43_PHYTYPE_G = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_wa_all(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 0
  store %struct.b43_phy* %5, %struct.b43_phy** %3, align 8
  %6 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %7 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @B43_PHYTYPE_A, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %143

11:                                               ; preds = %1
  %12 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %13 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %138 [
    i32 2, label %15
    i32 3, label %54
    i32 5, label %81
    i32 6, label %84
    i32 7, label %109
  ]

15:                                               ; preds = %11
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = call i32 @b43_wa_papd(%struct.b43_wldev* %16)
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %19 = call i32 @b43_wa_auxclipthr(%struct.b43_wldev* %18)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = call i32 @b43_wa_afcdac(%struct.b43_wldev* %20)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %23 = call i32 @b43_wa_txdc_offset(%struct.b43_wldev* %22)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = call i32 @b43_wa_initgains(%struct.b43_wldev* %24)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = call i32 @b43_wa_divider(%struct.b43_wldev* %26)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = call i32 @b43_wa_gt(%struct.b43_wldev* %28)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = call i32 @b43_wa_rssi_lt(%struct.b43_wldev* %30)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = call i32 @b43_wa_analog(%struct.b43_wldev* %32)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = call i32 @b43_wa_dac(%struct.b43_wldev* %34)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = call i32 @b43_wa_fft(%struct.b43_wldev* %36)
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = call i32 @b43_wa_nft(%struct.b43_wldev* %38)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = call i32 @b43_wa_rt(%struct.b43_wldev* %40)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = call i32 @b43_wa_nst(%struct.b43_wldev* %42)
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %45 = call i32 @b43_wa_art(%struct.b43_wldev* %44)
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %47 = call i32 @b43_wa_txlna_gain(%struct.b43_wldev* %46)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = call i32 @b43_wa_crs_reset(%struct.b43_wldev* %48)
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = call i32 @b43_wa_2060txlna_gain(%struct.b43_wldev* %50)
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = call i32 @b43_wa_lms(%struct.b43_wldev* %52)
  br label %140

54:                                               ; preds = %11
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = call i32 @b43_wa_papd(%struct.b43_wldev* %55)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = call i32 @b43_wa_mixedsignal(%struct.b43_wldev* %57)
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %60 = call i32 @b43_wa_rssi_lt(%struct.b43_wldev* %59)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = call i32 @b43_wa_txdc_offset(%struct.b43_wldev* %61)
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %64 = call i32 @b43_wa_initgains(%struct.b43_wldev* %63)
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %66 = call i32 @b43_wa_dac(%struct.b43_wldev* %65)
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %68 = call i32 @b43_wa_nft(%struct.b43_wldev* %67)
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = call i32 @b43_wa_nst(%struct.b43_wldev* %69)
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = call i32 @b43_wa_msst(%struct.b43_wldev* %71)
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %74 = call i32 @b43_wa_analog(%struct.b43_wldev* %73)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = call i32 @b43_wa_gt(%struct.b43_wldev* %75)
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = call i32 @b43_wa_txpuoff_rxpuon(%struct.b43_wldev* %77)
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %80 = call i32 @b43_wa_txlna_gain(%struct.b43_wldev* %79)
  br label %140

81:                                               ; preds = %11
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %83 = call i32 @b43_wa_iqadc(%struct.b43_wldev* %82)
  br label %84

84:                                               ; preds = %11, %81
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %86 = call i32 @b43_wa_papd(%struct.b43_wldev* %85)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = call i32 @b43_wa_rssi_lt(%struct.b43_wldev* %87)
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %90 = call i32 @b43_wa_txdc_offset(%struct.b43_wldev* %89)
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %92 = call i32 @b43_wa_initgains(%struct.b43_wldev* %91)
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %94 = call i32 @b43_wa_dac(%struct.b43_wldev* %93)
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %96 = call i32 @b43_wa_nft(%struct.b43_wldev* %95)
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = call i32 @b43_wa_nst(%struct.b43_wldev* %97)
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %100 = call i32 @b43_wa_msst(%struct.b43_wldev* %99)
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %102 = call i32 @b43_wa_analog(%struct.b43_wldev* %101)
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %104 = call i32 @b43_wa_gt(%struct.b43_wldev* %103)
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %106 = call i32 @b43_wa_txpuoff_rxpuon(%struct.b43_wldev* %105)
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %108 = call i32 @b43_wa_txlna_gain(%struct.b43_wldev* %107)
  br label %140

109:                                              ; preds = %11
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %111 = call i32 @b43_wa_iqadc(%struct.b43_wldev* %110)
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %113 = call i32 @b43_wa_papd(%struct.b43_wldev* %112)
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %115 = call i32 @b43_wa_rssi_lt(%struct.b43_wldev* %114)
  %116 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %117 = call i32 @b43_wa_txdc_offset(%struct.b43_wldev* %116)
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %119 = call i32 @b43_wa_initgains(%struct.b43_wldev* %118)
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %121 = call i32 @b43_wa_dac(%struct.b43_wldev* %120)
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %123 = call i32 @b43_wa_nft(%struct.b43_wldev* %122)
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %125 = call i32 @b43_wa_nst(%struct.b43_wldev* %124)
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %127 = call i32 @b43_wa_msst(%struct.b43_wldev* %126)
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %129 = call i32 @b43_wa_analog(%struct.b43_wldev* %128)
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %131 = call i32 @b43_wa_gt(%struct.b43_wldev* %130)
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %133 = call i32 @b43_wa_txpuoff_rxpuon(%struct.b43_wldev* %132)
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %135 = call i32 @b43_wa_txlna_gain(%struct.b43_wldev* %134)
  %136 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %137 = call i32 @b43_wa_rssi_adc(%struct.b43_wldev* %136)
  br label %138

138:                                              ; preds = %11, %109
  %139 = call i32 @B43_WARN_ON(i32 1)
  br label %140

140:                                              ; preds = %138, %84, %54, %15
  %141 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %142 = call i32 @b43_wa_boards_a(%struct.b43_wldev* %141)
  br label %205

143:                                              ; preds = %1
  %144 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %145 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @B43_PHYTYPE_G, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %202

149:                                              ; preds = %143
  %150 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %151 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  switch i32 %152, label %197 [
    i32 1, label %153
    i32 2, label %176
    i32 6, label %176
    i32 7, label %176
    i32 8, label %176
    i32 9, label %176
  ]

153:                                              ; preds = %149
  %154 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %155 = call i32 @b43_wa_crs_ed(%struct.b43_wldev* %154)
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %157 = call i32 @b43_wa_crs_thr(%struct.b43_wldev* %156)
  %158 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %159 = call i32 @b43_wa_crs_blank(%struct.b43_wldev* %158)
  %160 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %161 = call i32 @b43_wa_cck_shiftbits(%struct.b43_wldev* %160)
  %162 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %163 = call i32 @b43_wa_fft(%struct.b43_wldev* %162)
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %165 = call i32 @b43_wa_nft(%struct.b43_wldev* %164)
  %166 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %167 = call i32 @b43_wa_rt(%struct.b43_wldev* %166)
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %169 = call i32 @b43_wa_nst(%struct.b43_wldev* %168)
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %171 = call i32 @b43_wa_art(%struct.b43_wldev* %170)
  %172 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %173 = call i32 @b43_wa_wrssi_offset(%struct.b43_wldev* %172)
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %175 = call i32 @b43_wa_altagc(%struct.b43_wldev* %174)
  br label %199

176:                                              ; preds = %149, %149, %149, %149, %149
  %177 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %178 = call i32 @b43_wa_tr_ltov(%struct.b43_wldev* %177)
  %179 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %180 = call i32 @b43_wa_crs_ed(%struct.b43_wldev* %179)
  %181 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %182 = call i32 @b43_wa_rssi_lt(%struct.b43_wldev* %181)
  %183 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %184 = call i32 @b43_wa_nft(%struct.b43_wldev* %183)
  %185 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %186 = call i32 @b43_wa_nst(%struct.b43_wldev* %185)
  %187 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %188 = call i32 @b43_wa_msst(%struct.b43_wldev* %187)
  %189 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %190 = call i32 @b43_wa_wrssi_offset(%struct.b43_wldev* %189)
  %191 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %192 = call i32 @b43_wa_altagc(%struct.b43_wldev* %191)
  %193 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %194 = call i32 @b43_wa_analog(%struct.b43_wldev* %193)
  %195 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %196 = call i32 @b43_wa_txpuoff_rxpuon(%struct.b43_wldev* %195)
  br label %199

197:                                              ; preds = %149
  %198 = call i32 @B43_WARN_ON(i32 1)
  br label %199

199:                                              ; preds = %197, %176, %153
  %200 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %201 = call i32 @b43_wa_boards_g(%struct.b43_wldev* %200)
  br label %204

202:                                              ; preds = %143
  %203 = call i32 @B43_WARN_ON(i32 1)
  br label %204

204:                                              ; preds = %202, %199
  br label %205

205:                                              ; preds = %204, %140
  %206 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %207 = call i32 @b43_wa_cpll_nonpilot(%struct.b43_wldev* %206)
  ret void
}

declare dso_local i32 @b43_wa_papd(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_auxclipthr(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_afcdac(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_txdc_offset(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_initgains(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_divider(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_gt(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_rssi_lt(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_analog(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_dac(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_fft(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_nft(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_rt(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_nst(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_art(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_txlna_gain(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_crs_reset(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_2060txlna_gain(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_lms(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_mixedsignal(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_msst(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_txpuoff_rxpuon(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_iqadc(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_rssi_adc(%struct.b43_wldev*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_wa_boards_a(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_crs_ed(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_crs_thr(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_crs_blank(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_cck_shiftbits(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_wrssi_offset(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_altagc(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_tr_ltov(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_boards_g(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wa_cpll_nonpilot(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
