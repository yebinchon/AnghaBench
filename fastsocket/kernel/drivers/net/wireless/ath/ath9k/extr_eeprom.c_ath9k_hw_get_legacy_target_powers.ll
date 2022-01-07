; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_get_legacy_target_powers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_get_legacy_target_powers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }
%struct.cal_target_power_leg = type { i64, i64* }
%struct.chan_centers = type { i64, i64 }

@AR5416_BCHAN_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_get_legacy_target_powers(%struct.ath_hw* %0, %struct.ath9k_channel* %1, %struct.cal_target_power_leg* %2, i64 %3, %struct.cal_target_power_leg* %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.ath_hw*, align 8
  %9 = alloca %struct.ath9k_channel*, align 8
  %10 = alloca %struct.cal_target_power_leg*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cal_target_power_leg*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.chan_centers, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %8, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %9, align 8
  store %struct.cal_target_power_leg* %2, %struct.cal_target_power_leg** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.cal_target_power_leg* %4, %struct.cal_target_power_leg** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 -1, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  %22 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %23 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %24 = call i32 @ath9k_hw_get_channel_centers(%struct.ath_hw* %22, %struct.ath9k_channel* %23, %struct.chan_centers* %15)
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %15, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  br label %33

30:                                               ; preds = %7
  %31 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %15, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i64 [ %29, %27 ], [ %32, %30 ]
  store i64 %34, i64* %21, align 8
  %35 = load i64, i64* %21, align 8
  %36 = load %struct.cal_target_power_leg*, %struct.cal_target_power_leg** %10, align 8
  %37 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %36, i64 0
  %38 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %41 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %40)
  %42 = call i64 @ath9k_hw_fbin2freq(i64 %39, i32 %41)
  %43 = icmp sle i64 %35, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 0, i32* %19, align 4
  br label %122

45:                                               ; preds = %33
  store i32 0, i32* %18, align 4
  br label %46

46:                                               ; preds = %109, %45
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %11, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.cal_target_power_leg*, %struct.cal_target_power_leg** %10, align 8
  %53 = load i32, i32* %18, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %52, i64 %54
  %56 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AR5416_BCHAN_UNUSED, align 8
  %59 = icmp ne i64 %57, %58
  br label %60

60:                                               ; preds = %51, %46
  %61 = phi i1 [ false, %46 ], [ %59, %51 ]
  br i1 %61, label %62, label %112

62:                                               ; preds = %60
  %63 = load i64, i64* %21, align 8
  %64 = load %struct.cal_target_power_leg*, %struct.cal_target_power_leg** %10, align 8
  %65 = load i32, i32* %18, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %64, i64 %66
  %68 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %71 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %70)
  %72 = call i64 @ath9k_hw_fbin2freq(i64 %69, i32 %71)
  %73 = icmp eq i64 %63, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i32, i32* %18, align 4
  store i32 %75, i32* %19, align 4
  br label %112

76:                                               ; preds = %62
  %77 = load i64, i64* %21, align 8
  %78 = load %struct.cal_target_power_leg*, %struct.cal_target_power_leg** %10, align 8
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %78, i64 %80
  %82 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %85 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %84)
  %86 = call i64 @ath9k_hw_fbin2freq(i64 %83, i32 %85)
  %87 = icmp slt i64 %77, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %76
  %89 = load i32, i32* %18, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load i64, i64* %21, align 8
  %93 = load %struct.cal_target_power_leg*, %struct.cal_target_power_leg** %10, align 8
  %94 = load i32, i32* %18, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %93, i64 %96
  %98 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %101 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %100)
  %102 = call i64 @ath9k_hw_fbin2freq(i64 %99, i32 %101)
  %103 = icmp sgt i64 %92, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %91
  %105 = load i32, i32* %18, align 4
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %20, align 4
  br label %112

107:                                              ; preds = %91, %88, %76
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %18, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %18, align 4
  br label %46

112:                                              ; preds = %104, %74, %60
  %113 = load i32, i32* %19, align 4
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i32, i32* %20, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %18, align 4
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %19, align 4
  br label %121

121:                                              ; preds = %118, %115, %112
  br label %122

122:                                              ; preds = %121, %44
  %123 = load i32, i32* %19, align 4
  %124 = icmp ne i32 %123, -1
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load %struct.cal_target_power_leg*, %struct.cal_target_power_leg** %12, align 8
  %127 = load %struct.cal_target_power_leg*, %struct.cal_target_power_leg** %10, align 8
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %127, i64 %129
  %131 = bitcast %struct.cal_target_power_leg* %126 to i8*
  %132 = bitcast %struct.cal_target_power_leg* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 16, i1 false)
  br label %194

133:                                              ; preds = %122
  %134 = load %struct.cal_target_power_leg*, %struct.cal_target_power_leg** %10, align 8
  %135 = load i32, i32* %20, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %134, i64 %136
  %138 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %141 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %140)
  %142 = call i64 @ath9k_hw_fbin2freq(i64 %139, i32 %141)
  store i64 %142, i64* %16, align 8
  %143 = load %struct.cal_target_power_leg*, %struct.cal_target_power_leg** %10, align 8
  %144 = load i32, i32* %20, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %143, i64 %146
  %148 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %151 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %150)
  %152 = call i64 @ath9k_hw_fbin2freq(i64 %149, i32 %151)
  store i64 %152, i64* %17, align 8
  store i32 0, i32* %18, align 4
  br label %153

153:                                              ; preds = %190, %133
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* %13, align 8
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %158, label %193

158:                                              ; preds = %153
  %159 = load i64, i64* %21, align 8
  %160 = load i64, i64* %16, align 8
  %161 = load i64, i64* %17, align 8
  %162 = load %struct.cal_target_power_leg*, %struct.cal_target_power_leg** %10, align 8
  %163 = load i32, i32* %20, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %162, i64 %164
  %166 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %165, i32 0, i32 1
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.cal_target_power_leg*, %struct.cal_target_power_leg** %10, align 8
  %173 = load i32, i32* %20, align 4
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %172, i64 %175
  %177 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %176, i32 0, i32 1
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @ath9k_hw_interpolate(i64 %159, i64 %160, i64 %161, i64 %171, i64 %182)
  %184 = load %struct.cal_target_power_leg*, %struct.cal_target_power_leg** %12, align 8
  %185 = getelementptr inbounds %struct.cal_target_power_leg, %struct.cal_target_power_leg* %184, i32 0, i32 1
  %186 = load i64*, i64** %185, align 8
  %187 = load i32, i32* %18, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  store i64 %183, i64* %189, align 8
  br label %190

190:                                              ; preds = %158
  %191 = load i32, i32* %18, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %18, align 4
  br label %153

193:                                              ; preds = %153
  br label %194

194:                                              ; preds = %193, %125
  ret void
}

declare dso_local i32 @ath9k_hw_get_channel_centers(%struct.ath_hw*, %struct.ath9k_channel*, %struct.chan_centers*) #1

declare dso_local i64 @ath9k_hw_fbin2freq(i64, i32) #1

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ath9k_hw_interpolate(i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
