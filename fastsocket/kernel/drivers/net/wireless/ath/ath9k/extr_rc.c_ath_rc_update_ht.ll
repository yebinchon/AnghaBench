; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_update_ht.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_update_ht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_rate_priv = type { i32, i32*, i64, i64, i64, %struct.ath_rate_table* }
%struct.ath_rate_table = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_tx_info = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_rate_priv*, %struct.ieee80211_tx_info*, i32, i32, i32)* @ath_rc_update_ht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rc_update_ht(%struct.ath_softc* %0, %struct.ath_rate_priv* %1, %struct.ieee80211_tx_info* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ath_softc*, align 8
  %8 = alloca %struct.ath_rate_priv*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ath_rate_table*, align 8
  %17 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %7, align 8
  store %struct.ath_rate_priv* %1, %struct.ath_rate_priv** %8, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* @jiffies, align 4
  %19 = call i64 @jiffies_to_msecs(i32 %18)
  store i64 %19, i64* %13, align 8
  %20 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %21 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %20, i32 0, i32 5
  %22 = load %struct.ath_rate_table*, %struct.ath_rate_table** %21, align 8
  store %struct.ath_rate_table* %22, %struct.ath_rate_table** %16, align 8
  %23 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %24 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.ath_rate_table*, %struct.ath_rate_table** %16, align 8
  %31 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %6
  br label %238

35:                                               ; preds = %28
  %36 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %37 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %15, align 4
  %43 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %44 = load %struct.ath_rate_table*, %struct.ath_rate_table** %16, align 8
  %45 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %46 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @ath_rc_update_per(%struct.ath_softc* %43, %struct.ath_rate_table* %44, %struct.ath_rate_priv* %45, %struct.ieee80211_tx_info* %46, i32 %47, i32 %48, i32 %49, i64 %50)
  %52 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %53 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %58, 55
  br i1 %59, label %60, label %91

60:                                               ; preds = %35
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %91

63:                                               ; preds = %60
  %64 = load %struct.ath_rate_table*, %struct.ath_rate_table** %16, align 8
  %65 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ath_rate_table*, %struct.ath_rate_table** %16, align 8
  %73 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %76 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sle i64 %71, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %63
  %83 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %86 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %85, i32 0, i32 2
  %87 = call i32 @ath_rc_get_lower_rix(%struct.ath_rate_priv* %83, i32 %84, i64* %86)
  %88 = load i64, i64* %13, align 8
  %89 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %90 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %89, i32 0, i32 4
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %82, %63, %60, %35
  %92 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %93 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %144

101:                                              ; preds = %91
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 %102, 1
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %140, %101
  %105 = load i32, i32* %14, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %143

107:                                              ; preds = %104
  %108 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %109 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %116 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %114, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %107
  %125 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %126 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %134 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  br label %139

139:                                              ; preds = %124, %107
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %14, align 4
  br label %104

143:                                              ; preds = %104
  br label %144

144:                                              ; preds = %143, %91
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %184, %144
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %17, align 4
  %149 = sub nsw i32 %148, 1
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %187

151:                                              ; preds = %146
  %152 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %153 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %161 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %159, %166
  br i1 %167, label %168, label %183

168:                                              ; preds = %151
  %169 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %170 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %177 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  store i32 %175, i32* %182, align 4
  br label %183

183:                                              ; preds = %168, %151
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %14, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %14, align 4
  br label %146

187:                                              ; preds = %146
  %188 = load i64, i64* %13, align 8
  %189 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %190 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = sub nsw i64 %188, %191
  %193 = load %struct.ath_rate_table*, %struct.ath_rate_table** %16, align 8
  %194 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp sge i64 %192, %195
  br i1 %196, label %197, label %225

197:                                              ; preds = %187
  store i32 0, i32* %14, align 4
  br label %198

198:                                              ; preds = %218, %197
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* %17, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %221

202:                                              ; preds = %198
  %203 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %204 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = mul nsw i32 7, %209
  %211 = sdiv i32 %210, 8
  %212 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %213 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 %211, i32* %217, align 4
  br label %218

218:                                              ; preds = %202
  %219 = load i32, i32* %14, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %14, align 4
  br label %198

221:                                              ; preds = %198
  %222 = load i64, i64* %13, align 8
  %223 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %224 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %223, i32 0, i32 3
  store i64 %222, i64* %224, align 8
  br label %225

225:                                              ; preds = %221, %187
  %226 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* %12, align 4
  %230 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %8, align 8
  %231 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @ath_debug_stat_retries(%struct.ath_rate_priv* %226, i32 %227, i32 %228, i32 %229, i32 %236)
  br label %238

238:                                              ; preds = %225, %34
  ret void
}

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i32 @ath_rc_update_per(%struct.ath_softc*, %struct.ath_rate_table*, %struct.ath_rate_priv*, %struct.ieee80211_tx_info*, i32, i32, i32, i64) #1

declare dso_local i32 @ath_rc_get_lower_rix(%struct.ath_rate_priv*, i32, i64*) #1

declare dso_local i32 @ath_debug_stat_retries(%struct.ath_rate_priv*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
