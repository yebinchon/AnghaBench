; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_apm_emu.c_pmu_apm_get_power_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_apm_emu.c_pmu_apm_get_power_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.apm_power_info = type { i32, i32, i32, i32, i8*, i32 }

@APM_BATTERY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@APM_BATTERY_FLAG_UNKNOWN = common dso_local global i32 0, align 4
@APM_UNITS_MINS = common dso_local global i32 0, align 4
@pmu_power_flags = common dso_local global i32 0, align 4
@PMU_PWR_AC_PRESENT = common dso_local global i32 0, align 4
@APM_AC_ONLINE = common dso_local global i8* null, align 8
@APM_AC_OFFLINE = common dso_local global i8* null, align 8
@pmu_battery_count = common dso_local global i32 0, align 4
@pmu_batteries = common dso_local global %struct.TYPE_2__* null, align 8
@PMU_BATT_PRESENT = common dso_local global i32 0, align 4
@PMU_BATT_TYPE_MASK = common dso_local global i64 0, align 8
@PMU_BATT_CHARGING = common dso_local global i32 0, align 4
@PMU_BATT_TYPE_SMART = common dso_local global i64 0, align 8
@APM_BATTERY_STATUS_CHARGING = common dso_local global i32 0, align 4
@APM_BATTERY_FLAG_CHARGING = common dso_local global i32 0, align 4
@APM_CRITICAL = common dso_local global i32 0, align 4
@APM_BATTERY_STATUS_CRITICAL = common dso_local global i32 0, align 4
@APM_BATTERY_FLAG_CRITICAL = common dso_local global i32 0, align 4
@APM_LOW = common dso_local global i32 0, align 4
@APM_BATTERY_STATUS_LOW = common dso_local global i32 0, align 4
@APM_BATTERY_FLAG_LOW = common dso_local global i32 0, align 4
@APM_BATTERY_STATUS_HIGH = common dso_local global i32 0, align 4
@APM_BATTERY_FLAG_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apm_power_info*)* @pmu_apm_get_power_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmu_apm_get_power_status(%struct.apm_power_info* %0) #0 {
  %2 = alloca %struct.apm_power_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.apm_power_info* %0, %struct.apm_power_info** %2, align 8
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8 0, i8* %8, align 1
  store i64 -1, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @APM_BATTERY_STATUS_UNKNOWN, align 4
  %13 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %14 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @APM_BATTERY_FLAG_UNKNOWN, align 4
  %16 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %17 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @APM_UNITS_MINS, align 4
  %19 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %20 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @pmu_power_flags, align 4
  %22 = load i32, i32* @PMU_PWR_AC_PRESENT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i8*, i8** @APM_AC_ONLINE, align 8
  %27 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %28 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  br label %33

29:                                               ; preds = %1
  %30 = load i8*, i8** @APM_AC_OFFLINE, align 8
  %31 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %32 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %121, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @pmu_battery_count, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %124

38:                                               ; preds = %34
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PMU_BATT_PRESENT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %120

48:                                               ; preds = %38
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %48
  %55 = load i64, i64* %9, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %57, %54
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 100
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sdiv i32 %65, %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %3, align 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %9, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %9, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %58
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @PMU_BATT_TYPE_MASK, align 8
  %103 = and i64 %101, %102
  store i64 %103, i64* %11, align 8
  br label %104

104:                                              ; preds = %94, %58
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @PMU_BATT_CHARGING, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %104
  %117 = load i8, i8* %8, align 1
  %118 = add i8 %117, 1
  store i8 %118, i8* %8, align 1
  br label %119

119:                                              ; preds = %116, %104
  br label %120

120:                                              ; preds = %119, %38
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %34

124:                                              ; preds = %34
  %125 = load i32, i32* %4, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i8*, i8** @APM_AC_ONLINE, align 8
  %129 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %130 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %127, %124
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %202

134:                                              ; preds = %131
  %135 = load i64, i64* %10, align 8
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %134
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* @PMU_BATT_TYPE_SMART, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load i64, i64* %9, align 8
  %143 = mul nsw i64 %142, 59
  %144 = load i64, i64* %10, align 8
  %145 = mul nsw i64 %144, -1
  %146 = sdiv i64 %143, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %5, align 4
  br label %155

148:                                              ; preds = %137
  %149 = load i64, i64* %9, align 8
  %150 = mul nsw i64 %149, 16440
  %151 = load i64, i64* %10, align 8
  %152 = mul nsw i64 %151, -60
  %153 = sdiv i64 %150, %152
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %148, %141
  br label %156

156:                                              ; preds = %155, %134
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %3, align 4
  %159 = sdiv i32 %158, %157
  store i32 %159, i32* %3, align 4
  %160 = load i8, i8* %8, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %156
  %164 = load i32, i32* @APM_BATTERY_STATUS_CHARGING, align 4
  %165 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %166 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* @APM_BATTERY_FLAG_CHARGING, align 4
  %168 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %169 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  br label %201

170:                                              ; preds = %156
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* @APM_CRITICAL, align 4
  %173 = icmp sle i32 %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %170
  %175 = load i32, i32* @APM_BATTERY_STATUS_CRITICAL, align 4
  %176 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %177 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @APM_BATTERY_FLAG_CRITICAL, align 4
  %179 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %180 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  br label %200

181:                                              ; preds = %170
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* @APM_LOW, align 4
  %184 = icmp sle i32 %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %181
  %186 = load i32, i32* @APM_BATTERY_STATUS_LOW, align 4
  %187 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %188 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* @APM_BATTERY_FLAG_LOW, align 4
  %190 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %191 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  br label %199

192:                                              ; preds = %181
  %193 = load i32, i32* @APM_BATTERY_STATUS_HIGH, align 4
  %194 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %195 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* @APM_BATTERY_FLAG_HIGH, align 4
  %197 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %198 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  br label %199

199:                                              ; preds = %192, %185
  br label %200

200:                                              ; preds = %199, %174
  br label %201

201:                                              ; preds = %200, %163
  br label %202

202:                                              ; preds = %201, %131
  %203 = load i32, i32* %3, align 4
  %204 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %205 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load i32, i32* %5, align 4
  %207 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %208 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
