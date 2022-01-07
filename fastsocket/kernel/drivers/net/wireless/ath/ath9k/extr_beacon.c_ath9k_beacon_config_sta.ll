; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_config_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_config_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath_beacon_config = type { i32, i32, i32, i32, i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_beacon_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@SC_OP_PRIM_STA_VIF = common dso_local global i32 0, align 4
@BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"STA is not yet associated..skipping beacon config\0A\00", align 1
@FUDGE = common dso_local global i32 0, align 4
@ATH_DEFAULT_BMISS_LIMIT = common dso_local global i32 0, align 4
@ATH9K_TSFOOR_THRESHOLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"tsf: %llu tsftu: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"bmiss: %u sleep: %u cfp-period: %u maxdur: %u next: %u\0A\00", align 1
@ATH9K_INT_BMISS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_beacon_config*)* @ath9k_beacon_config_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_beacon_config_sta(%struct.ath_softc* %0, %struct.ath_beacon_config* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_beacon_config*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath9k_beacon_state, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_beacon_config* %1, %struct.ath_beacon_config** %4, align 8
  %21 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 1
  %23 = load %struct.ath_hw*, %struct.ath_hw** %22, align 8
  store %struct.ath_hw* %23, %struct.ath_hw** %5, align 8
  %24 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %25 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %24)
  store %struct.ath_common* %25, %struct.ath_common** %6, align 8
  store i32 0, i32* %13, align 4
  %26 = load i32, i32* @SC_OP_PRIM_STA_VIF, align 4
  %27 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 0
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %2
  %32 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %33 = load i32, i32* @BEACON, align 4
  %34 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %32, i32 %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %223

35:                                               ; preds = %2
  %36 = call i32 @memset(%struct.ath9k_beacon_state* %7, i32 0, i32 48)
  %37 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %38 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %41 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %44 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %35
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %51 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %52 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %14, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %57 = call i32 @ath9k_hw_gettsf64(%struct.ath_hw* %56)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = ashr i32 %58, 32
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @TSF_TO_TU(i32 %59, i32 %60)
  %62 = load i32, i32* @FUDGE, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sdiv i32 %64, %65
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = srem i32 %68, %69
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %18, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %50
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %76, %50
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %8, align 4
  %83 = srem i32 %81, %82
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %8, align 4
  %86 = sdiv i32 %84, %85
  %87 = load i32, i32* %11, align 4
  %88 = srem i32 %86, %87
  store i32 %88, i32* %20, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load i32, i32* %20, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %20, align 4
  br label %94

94:                                               ; preds = %91, %80
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %100, %94
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %110, %104
  %115 = load i32, i32* %14, align 4
  %116 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 0
  store i32 %115, i32* %116, align 8
  %117 = load i32, i32* %13, align 4
  %118 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %14, align 4
  %121 = mul nsw i32 %119, %120
  %122 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 2
  store i32 %121, i32* %122, align 8
  %123 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %14, align 4
  %127 = mul nsw i32 %125, %126
  %128 = add nsw i32 %124, %127
  %129 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 3
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* %11, align 4
  %131 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = mul nsw i32 %130, %132
  %134 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 4
  store i32 %133, i32* %134, align 8
  %135 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %12, align 4
  %138 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = mul nsw i32 %137, %139
  %141 = add nsw i32 %136, %140
  %142 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 5
  store i32 %141, i32* %142, align 4
  %143 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 8
  store i64 0, i64* %143, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %14, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %114
  %148 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %149 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @ATH_DEFAULT_BMISS_LIMIT, align 4
  %152 = mul nsw i32 %150, %151
  %153 = sdiv i32 %152, 2
  %154 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 6
  store i32 %153, i32* %154, align 8
  br label %175

155:                                              ; preds = %114
  %156 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %157 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @DIV_ROUND_UP(i32 %158, i32 %159)
  %161 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 6
  store i32 %160, i32* %161, align 8
  %162 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = icmp sgt i32 %163, 15
  br i1 %164, label %165, label %167

165:                                              ; preds = %155
  %166 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 6
  store i32 15, i32* %166, align 8
  br label %174

167:                                              ; preds = %155
  %168 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = icmp sle i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 6
  store i32 1, i32* %172, align 8
  br label %173

173:                                              ; preds = %171, %167
  br label %174

174:                                              ; preds = %173, %165
  br label %175

175:                                              ; preds = %174, %147
  %176 = call i32 @IEEE80211_MS_TO_TU(i32 100)
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @roundup(i32 %176, i32 %177)
  %179 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 7
  store i32 %178, i32* %179, align 4
  %180 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 7
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp sgt i32 %181, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %175
  %186 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 7
  store i32 %187, i32* %188, align 4
  br label %189

189:                                              ; preds = %185, %175
  %190 = load i32, i32* @ATH9K_TSFOOR_THRESHOLD, align 4
  %191 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 9
  store i32 %190, i32* %191, align 8
  %192 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %193 = load i32, i32* @BEACON, align 4
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %15, align 4
  %196 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %192, i32 %193, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %194, i32 %195)
  %197 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %198 = load i32, i32* @BEACON, align 4
  %199 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 6
  %200 = load i32, i32* %199, align 8
  %201 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 8
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %7, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %197, i32 %198, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %200, i32 %202, i32 %204, i64 %206, i32 %208)
  %210 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %211 = call i32 @ath9k_hw_disable_interrupts(%struct.ath_hw* %210)
  %212 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %213 = call i32 @ath9k_hw_set_sta_beacon_timers(%struct.ath_hw* %212, %struct.ath9k_beacon_state* %7)
  %214 = load i32, i32* @ATH9K_INT_BMISS, align 4
  %215 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %216 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 4
  %219 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %220 = call i32 @ath9k_hw_set_interrupts(%struct.ath_hw* %219)
  %221 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %222 = call i32 @ath9k_hw_enable_interrupts(%struct.ath_hw* %221)
  br label %223

223:                                              ; preds = %189, %31
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.ath9k_beacon_state*, i32, i32) #1

declare dso_local i32 @ath9k_hw_gettsf64(%struct.ath_hw*) #1

declare dso_local i32 @TSF_TO_TU(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @IEEE80211_MS_TO_TU(i32) #1

declare dso_local i32 @ath9k_hw_disable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_set_sta_beacon_timers(%struct.ath_hw*, %struct.ath9k_beacon_state*) #1

declare dso_local i32 @ath9k_hw_set_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_enable_interrupts(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
