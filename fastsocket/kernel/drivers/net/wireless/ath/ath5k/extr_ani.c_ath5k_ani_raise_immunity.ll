; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_raise_immunity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_raise_immunity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.ath5k_ani_state = type { i64, i64, i64, i64 }

@ATH5K_DEBUG_ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"raise immunity (%s)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ODFM\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CCK\00", align 1
@ATH5K_ANI_MAX_NOISE_IMM_LVL = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@ATH5K_ANI_MAX_FIRSTEP_LVL = common dso_local global i64 0, align 8
@ATH5K_ANI_RSSI_THR_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"beacon RSSI high\00", align 1
@ATH5K_ANI_RSSI_THR_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"beacon RSSI mid\00", align 1
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"beacon RSSI low, 2GHz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, %struct.ath5k_ani_state*, i32)* @ath5k_ani_raise_immunity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_ani_raise_immunity(%struct.ath5k_hw* %0, %struct.ath5k_ani_state* %1, i32 %2) #0 {
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ath5k_ani_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ath5k_ani_state* %1, %struct.ath5k_ani_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 3
  %10 = call i32 @ewma_read(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %12 = load i32, i32* @ATH5K_DEBUG_ANI, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %11, i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %19 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ATH5K_ANI_MAX_NOISE_IMM_LVL, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %25 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %26 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  %29 = call i32 @ath5k_ani_set_noise_immunity_level(%struct.ath5k_hw* %24, i64 %28)
  br label %168

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %35 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %38 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %44 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %45 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i32 @ath5k_ani_set_spur_immunity_level(%struct.ath5k_hw* %43, i64 %47)
  br label %168

49:                                               ; preds = %33, %30
  %50 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %51 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %57 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ATH5K_ANI_MAX_FIRSTEP_LVL, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %63 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %64 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  %67 = call i32 @ath5k_ani_set_firstep_level(%struct.ath5k_hw* %62, i64 %66)
  br label %68

68:                                               ; preds = %61, %55
  br label %168

69:                                               ; preds = %49
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @ATH5K_ANI_RSSI_THR_HIGH, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %69
  %74 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %75 = load i32, i32* @ATH5K_DEBUG_ANI, align 4
  %76 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %74, i32 %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %81 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %86 = call i32 @ath5k_ani_set_ofdm_weak_signal_detection(%struct.ath5k_hw* %85, i32 0)
  %87 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %88 = call i32 @ath5k_ani_set_spur_immunity_level(%struct.ath5k_hw* %87, i64 0)
  br label %168

89:                                               ; preds = %79, %73
  %90 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %91 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ATH5K_ANI_MAX_FIRSTEP_LVL, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %97 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %98 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  %101 = call i32 @ath5k_ani_set_firstep_level(%struct.ath5k_hw* %96, i64 %100)
  br label %168

102:                                              ; preds = %89
  br label %168

103:                                              ; preds = %69
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @ATH5K_ANI_RSSI_THR_LOW, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %135

107:                                              ; preds = %103
  %108 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %109 = load i32, i32* @ATH5K_DEBUG_ANI, align 4
  %110 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %108, i32 %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %115 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %120 = call i32 @ath5k_ani_set_ofdm_weak_signal_detection(%struct.ath5k_hw* %119, i32 1)
  br label %121

121:                                              ; preds = %118, %113, %107
  %122 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %123 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @ATH5K_ANI_MAX_FIRSTEP_LVL, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %129 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %130 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  %133 = call i32 @ath5k_ani_set_firstep_level(%struct.ath5k_hw* %128, i64 %132)
  br label %134

134:                                              ; preds = %127, %121
  br label %168

135:                                              ; preds = %103
  %136 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %137 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %136, i32 0, i32 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %166

143:                                              ; preds = %135
  %144 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %145 = load i32, i32* @ATH5K_DEBUG_ANI, align 4
  %146 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %144, i32 %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %143
  %150 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %151 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %156 = call i32 @ath5k_ani_set_ofdm_weak_signal_detection(%struct.ath5k_hw* %155, i32 0)
  br label %157

157:                                              ; preds = %154, %149, %143
  %158 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %159 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %164 = call i32 @ath5k_ani_set_firstep_level(%struct.ath5k_hw* %163, i64 0)
  br label %165

165:                                              ; preds = %162, %157
  br label %168

166:                                              ; preds = %135
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %23, %42, %68, %84, %95, %134, %165, %167, %102
  ret void
}

declare dso_local i32 @ewma_read(i32*) #1

declare dso_local i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw*, i32, i8*, ...) #1

declare dso_local i32 @ath5k_ani_set_noise_immunity_level(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @ath5k_ani_set_spur_immunity_level(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @ath5k_ani_set_firstep_level(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @ath5k_ani_set_ofdm_weak_signal_detection(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
