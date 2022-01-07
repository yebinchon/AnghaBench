; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_done_battery_state_ohare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_done_battery_state_ohare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64 }
%struct.adb_request = type { i32* }

@PMU_BATT_TYPE_HOOPER = common dso_local global i32 0, align 4
@PMAC_FTR_GET_MB_INFO = common dso_local global i32 0, align 4
@PMAC_MB_INFO_MODEL = common dso_local global i32 0, align 4
@PMU_PWR_AC_PRESENT = common dso_local global i32 0, align 4
@pmu_power_flags = common dso_local global i32 0, align 4
@PMAC_TYPE_COMET = common dso_local global i32 0, align 4
@PMU_BATT_PRESENT = common dso_local global i32 0, align 4
@PMU_BATT_CHARGING = common dso_local global i32 0, align 4
@pmu_batteries = common dso_local global %struct.TYPE_2__* null, align 8
@pmu_cur_battery = common dso_local global i64 0, align 8
@async_req_locks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adb_request*)* @done_battery_state_ohare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @done_battery_state_ohare(%struct.adb_request* %0) #0 {
  %2 = alloca %struct.adb_request*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.adb_request* %0, %struct.adb_request** %2, align 8
  %16 = load i32, i32* @PMU_BATT_TYPE_HOOPER, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @PMAC_FTR_GET_MB_INFO, align 4
  %18 = load i32, i32* @PMAC_MB_INFO_MODEL, align 4
  %19 = call i32 @pmac_call_feature(i32 %17, i32* null, i32 %18, i32 0)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %21 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @PMU_PWR_AC_PRESENT, align 4
  %29 = load i32, i32* @pmu_power_flags, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* @pmu_power_flags, align 4
  br label %36

31:                                               ; preds = %1
  %32 = load i32, i32* @PMU_PWR_AC_PRESENT, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @pmu_power_flags, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* @pmu_power_flags, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @PMAC_TYPE_COMET, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i64 189, i64* %10, align 8
  store i64 213, i64* %9, align 8
  store i64 6500, i64* %8, align 8
  br label %42

41:                                               ; preds = %36
  store i64 330, i64* %10, align 8
  store i64 330, i64* %9, align 8
  store i64 6500, i64* %8, align 8
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i64, i64* %10, align 8
  store i64 %43, i64* %7, align 8
  %44 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %45 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %178

51:                                               ; preds = %42
  %52 = load i32, i32* @PMU_BATT_PRESENT, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %56 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 2
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load i32, i32* @PMU_BATT_CHARGING, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %51
  %67 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %68 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %74 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %72, %77
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = mul nsw i64 %80, 265
  %82 = add nsw i64 %81, 72665
  %83 = sdiv i64 %82, 10
  store i64 %83, i64* %12, align 8
  %84 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %85 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 5
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %11, align 8
  %90 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %91 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %66
  %98 = load i64, i64* %11, align 8
  %99 = icmp sgt i64 %98, 200
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i64, i64* %11, align 8
  %102 = sub nsw i64 %101, 200
  %103 = mul nsw i64 %102, 15
  %104 = sdiv i64 %103, 100
  %105 = load i64, i64* %6, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %100, %97
  br label %122

108:                                              ; preds = %66
  %109 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %110 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 2
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %108
  %117 = load i64, i64* %6, align 8
  %118 = mul nsw i64 %117, 97
  %119 = sdiv i64 %118, 100
  store i64 %119, i64* %6, align 8
  %120 = load i64, i64* %9, align 8
  store i64 %120, i64* %7, align 8
  br label %121

121:                                              ; preds = %116, %108
  br label %122

122:                                              ; preds = %121, %107
  %123 = load i64, i64* %6, align 8
  %124 = mul nsw i64 100, %123
  %125 = load i64, i64* %7, align 8
  %126 = sdiv i64 %124, %125
  store i64 %126, i64* %5, align 8
  %127 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %128 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 64
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %166

134:                                              ; preds = %122
  %135 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %136 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 6
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 8
  %141 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %142 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 7
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %140, %145
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %4, align 8
  %148 = load i64, i64* %4, align 8
  %149 = load i64, i64* %8, align 8
  %150 = icmp sgt i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %134
  %152 = load i64, i64* %8, align 8
  store i64 %152, i64* %4, align 8
  br label %153

153:                                              ; preds = %151, %134
  %154 = load i64, i64* %4, align 8
  %155 = mul nsw i64 %154, 100
  store i64 %155, i64* %4, align 8
  %156 = load i64, i64* %4, align 8
  %157 = load i64, i64* %8, align 8
  %158 = sdiv i64 %156, %157
  %159 = sub nsw i64 100, %158
  store i64 %159, i64* %4, align 8
  %160 = load i64, i64* %4, align 8
  %161 = load i64, i64* %5, align 8
  %162 = icmp slt i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %153
  %164 = load i64, i64* %4, align 8
  store i64 %164, i64* %5, align 8
  br label %165

165:                                              ; preds = %163, %153
  br label %166

166:                                              ; preds = %165, %122
  %167 = load i64, i64* %11, align 8
  %168 = icmp sgt i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load i64, i64* %5, align 8
  %171 = mul nsw i64 %170, 16440
  %172 = load i64, i64* %11, align 8
  %173 = sdiv i64 %171, %172
  store i64 %173, i64* %13, align 8
  br label %175

174:                                              ; preds = %166
  store i64 0, i64* %13, align 8
  br label %175

175:                                              ; preds = %174, %169
  store i64 100, i64* %14, align 8
  %176 = load i64, i64* %11, align 8
  %177 = sub nsw i64 0, %176
  store i64 %177, i64* %11, align 8
  br label %179

178:                                              ; preds = %42
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %5, align 8
  br label %179

179:                                              ; preds = %178, %175
  %180 = load i32, i32* %3, align 4
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %182 = load i64, i64* @pmu_cur_battery, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  store i32 %180, i32* %184, align 8
  %185 = load i64, i64* %5, align 8
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %187 = load i64, i64* @pmu_cur_battery, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  store i64 %185, i64* %189, align 8
  %190 = load i64, i64* %14, align 8
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %192 = load i64, i64* @pmu_cur_battery, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 2
  store i64 %190, i64* %194, align 8
  %195 = load i64, i64* %11, align 8
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %197 = load i64, i64* @pmu_cur_battery, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 3
  store i64 %195, i64* %199, align 8
  %200 = load i64, i64* %12, align 8
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %202 = load i64, i64* @pmu_cur_battery, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 4
  store i64 %200, i64* %204, align 8
  %205 = load i64, i64* %13, align 8
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %207 = load i64, i64* @pmu_cur_battery, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 5
  store i64 %205, i64* %209, align 8
  %210 = call i32 @clear_bit(i32 0, i32* @async_req_locks)
  ret void
}

declare dso_local i32 @pmac_call_feature(i32, i32*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
