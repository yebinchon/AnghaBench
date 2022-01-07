; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_apm_power.c_apm_battery_apm_get_power_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_apm_power.c_apm_battery_apm_get_power_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_power_info = type { i32, i32, i32, i32, i32, i32 }
%union.power_supply_propval = type { i64 }

@apm_mutex = common dso_local global i32 0, align 4
@main_battery = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i64 0, align 8
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i64 0, align 8
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i64 0, align 8
@POWER_SUPPLY_STATUS_FULL = common dso_local global i64 0, align 8
@APM_AC_ONLINE = common dso_local global i32 0, align 4
@APM_AC_OFFLINE = common dso_local global i32 0, align 4
@CAPACITY = common dso_local global i32 0, align 4
@SOURCE_ENERGY = common dso_local global i32 0, align 4
@SOURCE_CHARGE = common dso_local global i32 0, align 4
@SOURCE_VOLTAGE = common dso_local global i32 0, align 4
@APM_BATTERY_STATUS_CHARGING = common dso_local global i32 0, align 4
@APM_BATTERY_STATUS_HIGH = common dso_local global i32 0, align 4
@APM_BATTERY_STATUS_LOW = common dso_local global i32 0, align 4
@APM_BATTERY_STATUS_CRITICAL = common dso_local global i32 0, align 4
@APM_UNITS_MINS = common dso_local global i32 0, align 4
@TIME_TO_FULL_AVG = common dso_local global i32 0, align 4
@TIME_TO_FULL_NOW = common dso_local global i32 0, align 4
@TIME_TO_EMPTY_AVG = common dso_local global i32 0, align 4
@TIME_TO_EMPTY_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apm_power_info*)* @apm_battery_apm_get_power_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apm_battery_apm_get_power_status(%struct.apm_power_info* %0) #0 {
  %2 = alloca %struct.apm_power_info*, align 8
  %3 = alloca %union.power_supply_propval, align 8
  %4 = alloca %union.power_supply_propval, align 8
  %5 = alloca %union.power_supply_propval, align 8
  %6 = alloca %union.power_supply_propval, align 8
  store %struct.apm_power_info* %0, %struct.apm_power_info** %2, align 8
  %7 = call i32 @mutex_lock(i32* @apm_mutex)
  %8 = call i32 (...) @find_main_battery()
  %9 = load i32, i32* @main_battery, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @mutex_unlock(i32* @apm_mutex)
  br label %177

13:                                               ; preds = %1
  %14 = load i32, i32* @STATUS, align 4
  %15 = call i64 @MPSY_PROP(i32 %14, %union.power_supply_propval* %3)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i64, i64* @POWER_SUPPLY_STATUS_UNKNOWN, align 8
  %19 = bitcast %union.power_supply_propval* %3 to i64*
  store i64 %18, i64* %19, align 8
  br label %20

20:                                               ; preds = %17, %13
  %21 = bitcast %union.power_supply_propval* %3 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @POWER_SUPPLY_STATUS_CHARGING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = bitcast %union.power_supply_propval* %3 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = bitcast %union.power_supply_propval* %3 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @POWER_SUPPLY_STATUS_FULL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30, %25, %20
  %36 = load i32, i32* @APM_AC_ONLINE, align 4
  %37 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %38 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  br label %43

39:                                               ; preds = %30
  %40 = load i32, i32* @APM_AC_OFFLINE, align 4
  %41 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %42 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @CAPACITY, align 4
  %45 = call i64 @MPSY_PROP(i32 %44, %union.power_supply_propval* %4)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = bitcast %union.power_supply_propval* %4 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %52 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %81

53:                                               ; preds = %43
  %54 = load i32, i32* @SOURCE_ENERGY, align 4
  %55 = call i8* @calculate_capacity(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %58 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %60 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load i32, i32* @SOURCE_CHARGE, align 4
  %65 = call i8* @calculate_capacity(i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %68 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %53
  %70 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %71 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @SOURCE_VOLTAGE, align 4
  %76 = call i8* @calculate_capacity(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %79 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %74, %69
  br label %81

81:                                               ; preds = %80, %47
  %82 = bitcast %union.power_supply_propval* %3 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @POWER_SUPPLY_STATUS_CHARGING, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @APM_BATTERY_STATUS_CHARGING, align 4
  %88 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %89 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  br label %114

90:                                               ; preds = %81
  %91 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %92 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %93, 50
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @APM_BATTERY_STATUS_HIGH, align 4
  %97 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %98 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  br label %113

99:                                               ; preds = %90
  %100 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %101 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %102, 5
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @APM_BATTERY_STATUS_LOW, align 4
  %106 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %107 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  br label %112

108:                                              ; preds = %99
  %109 = load i32, i32* @APM_BATTERY_STATUS_CRITICAL, align 4
  %110 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %111 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %104
  br label %113

113:                                              ; preds = %112, %95
  br label %114

114:                                              ; preds = %113, %86
  %115 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %116 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %119 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @APM_UNITS_MINS, align 4
  %121 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %122 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = bitcast %union.power_supply_propval* %3 to i64*
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @POWER_SUPPLY_STATUS_CHARGING, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %151

127:                                              ; preds = %114
  %128 = load i32, i32* @TIME_TO_FULL_AVG, align 4
  %129 = call i64 @MPSY_PROP(i32 %128, %union.power_supply_propval* %5)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32, i32* @TIME_TO_FULL_NOW, align 4
  %133 = call i64 @MPSY_PROP(i32 %132, %union.power_supply_propval* %5)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %131, %127
  %136 = bitcast %union.power_supply_propval* %5 to i64*
  %137 = load i64, i64* %136, align 8
  %138 = sdiv i64 %137, 60
  %139 = trunc i64 %138 to i32
  %140 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %141 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  br label %150

142:                                              ; preds = %131
  %143 = bitcast %union.power_supply_propval* %3 to i64*
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i8* @calculate_time(i32 %145)
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %149 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %142, %135
  br label %175

151:                                              ; preds = %114
  %152 = load i32, i32* @TIME_TO_EMPTY_AVG, align 4
  %153 = call i64 @MPSY_PROP(i32 %152, %union.power_supply_propval* %6)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32, i32* @TIME_TO_EMPTY_NOW, align 4
  %157 = call i64 @MPSY_PROP(i32 %156, %union.power_supply_propval* %6)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %155, %151
  %160 = bitcast %union.power_supply_propval* %6 to i64*
  %161 = load i64, i64* %160, align 8
  %162 = sdiv i64 %161, 60
  %163 = trunc i64 %162 to i32
  %164 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %165 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  br label %174

166:                                              ; preds = %155
  %167 = bitcast %union.power_supply_propval* %3 to i64*
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = call i8* @calculate_time(i32 %169)
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %173 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %166, %159
  br label %175

175:                                              ; preds = %174, %150
  %176 = call i32 @mutex_unlock(i32* @apm_mutex)
  br label %177

177:                                              ; preds = %175, %11
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_main_battery(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @MPSY_PROP(i32, %union.power_supply_propval*) #1

declare dso_local i8* @calculate_capacity(i32) #1

declare dso_local i8* @calculate_time(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
