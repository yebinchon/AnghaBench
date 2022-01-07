; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_init_thermal_sensor_thresh_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_init_thermal_sensor_thresh_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (%struct.e1000_hw.0*, i32, i32, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.e1000_hw.1*, i32, i32, i32*)* }
%struct.e1000_hw.1 = type opaque
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.e1000_thermal_sensor_data }
%struct.e1000_thermal_sensor_data = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@e1000_i350 = common dso_local global i64 0, align 8
@E1000_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@E1000_THHIGHTC = common dso_local global i32 0, align 4
@E1000_THLOWTC = common dso_local global i32 0, align 4
@NVM_ETS_CFG = common dso_local global i32 0, align 4
@NVM_ETS_TYPE_MASK = common dso_local global i32 0, align 4
@NVM_ETS_TYPE_SHIFT = common dso_local global i32 0, align 4
@NVM_ETS_TYPE_EMC = common dso_local global i32 0, align 4
@NVM_ETS_LTHRES_DELTA_MASK = common dso_local global i32 0, align 4
@NVM_ETS_LTHRES_DELTA_SHIFT = common dso_local global i32 0, align 4
@NVM_ETS_NUM_SENSORS_MASK = common dso_local global i32 0, align 4
@NVM_ETS_DATA_INDEX_MASK = common dso_local global i32 0, align 4
@NVM_ETS_DATA_INDEX_SHIFT = common dso_local global i32 0, align 4
@NVM_ETS_DATA_LOC_MASK = common dso_local global i32 0, align 4
@NVM_ETS_DATA_LOC_SHIFT = common dso_local global i32 0, align 4
@NVM_ETS_DATA_HTHRESH_MASK = common dso_local global i32 0, align 4
@e1000_emc_therm_limit = common dso_local global i32* null, align 8
@E1000_I2C_THERMAL_SENSOR_ADDR = common dso_local global i32 0, align 4
@E1000_MAX_SENSORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_init_thermal_sensor_thresh_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.e1000_thermal_sensor_data*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %15 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store %struct.e1000_thermal_sensor_data* %18, %struct.e1000_thermal_sensor_data** %14, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @e1000_i350, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %1
  %32 = load i32, i32* @E1000_NOT_IMPLEMENTED, align 4
  store i32 %32, i32* %2, align 4
  br label %184

33:                                               ; preds = %25
  %34 = load %struct.e1000_thermal_sensor_data*, %struct.e1000_thermal_sensor_data** %14, align 8
  %35 = call i32 @memset(%struct.e1000_thermal_sensor_data* %34, i32 0, i32 8)
  %36 = load %struct.e1000_thermal_sensor_data*, %struct.e1000_thermal_sensor_data** %14, align 8
  %37 = getelementptr inbounds %struct.e1000_thermal_sensor_data, %struct.e1000_thermal_sensor_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* @E1000_THHIGHTC, align 4
  %42 = call i32 @rd32(i32 %41)
  %43 = and i32 %42, 255
  %44 = load %struct.e1000_thermal_sensor_data*, %struct.e1000_thermal_sensor_data** %14, align 8
  %45 = getelementptr inbounds %struct.e1000_thermal_sensor_data, %struct.e1000_thermal_sensor_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  store i32 %43, i32* %48, align 4
  %49 = load i32, i32* @E1000_THLOWTC, align 4
  %50 = call i32 @rd32(i32 %49)
  %51 = and i32 %50, 255
  %52 = load %struct.e1000_thermal_sensor_data*, %struct.e1000_thermal_sensor_data** %14, align 8
  %53 = getelementptr inbounds %struct.e1000_thermal_sensor_data, %struct.e1000_thermal_sensor_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  store i32 %51, i32* %56, align 4
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32 (%struct.e1000_hw.1*, i32, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32, i32*)** %60, align 8
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = bitcast %struct.e1000_hw* %62 to %struct.e1000_hw.1*
  %64 = load i32, i32* @NVM_ETS_CFG, align 4
  %65 = call i32 %61(%struct.e1000_hw.1* %63, i32 %64, i32 1, i32* %5)
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %33
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 65535
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %33
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %184

73:                                               ; preds = %68
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %75 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32 (%struct.e1000_hw.1*, i32, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32, i32*)** %77, align 8
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = bitcast %struct.e1000_hw* %79 to %struct.e1000_hw.1*
  %81 = load i32, i32* %5, align 4
  %82 = call i32 %78(%struct.e1000_hw.1* %80, i32 %81, i32 1, i32* %6)
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @NVM_ETS_TYPE_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @NVM_ETS_TYPE_SHIFT, align 4
  %87 = ashr i32 %85, %86
  %88 = load i32, i32* @NVM_ETS_TYPE_EMC, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %73
  %91 = load i32, i32* @E1000_NOT_IMPLEMENTED, align 4
  store i32 %91, i32* %2, align 4
  br label %184

92:                                               ; preds = %73
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @NVM_ETS_LTHRES_DELTA_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @NVM_ETS_LTHRES_DELTA_SHIFT, align 4
  %97 = ashr i32 %95, %96
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @NVM_ETS_NUM_SENSORS_MASK, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %9, align 4
  store i32 1, i32* %13, align 4
  br label %101

101:                                              ; preds = %179, %92
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %182

105:                                              ; preds = %101
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %107 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32 (%struct.e1000_hw.1*, i32, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32, i32*)** %109, align 8
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %112 = bitcast %struct.e1000_hw* %111 to %struct.e1000_hw.1*
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32 %110(%struct.e1000_hw.1* %112, i32 %115, i32 1, i32* %7)
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @NVM_ETS_DATA_INDEX_MASK, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @NVM_ETS_DATA_INDEX_SHIFT, align 4
  %121 = ashr i32 %119, %120
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @NVM_ETS_DATA_LOC_MASK, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* @NVM_ETS_DATA_LOC_SHIFT, align 4
  %126 = ashr i32 %124, %125
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @NVM_ETS_DATA_HTHRESH_MASK, align 4
  %129 = and i32 %127, %128
  store i32 %129, i32* %12, align 4
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %131 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32 (%struct.e1000_hw.0*, i32, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32, i32)** %133, align 8
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %136 = bitcast %struct.e1000_hw* %135 to %struct.e1000_hw.0*
  %137 = load i32*, i32** @e1000_emc_therm_limit, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @E1000_I2C_THERMAL_SENSOR_ADDR, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 %134(%struct.e1000_hw.0* %136, i32 %141, i32 %142, i32 %143)
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @E1000_MAX_SENSORS, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %178

148:                                              ; preds = %105
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %178

151:                                              ; preds = %148
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.e1000_thermal_sensor_data*, %struct.e1000_thermal_sensor_data** %14, align 8
  %154 = getelementptr inbounds %struct.e1000_thermal_sensor_data, %struct.e1000_thermal_sensor_data* %153, i32 0, i32 0
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  store i32 %152, i32* %159, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.e1000_thermal_sensor_data*, %struct.e1000_thermal_sensor_data** %14, align 8
  %162 = getelementptr inbounds %struct.e1000_thermal_sensor_data, %struct.e1000_thermal_sensor_data* %161, i32 0, i32 0
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  store i32 %160, i32* %167, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %8, align 4
  %170 = sub nsw i32 %168, %169
  %171 = load %struct.e1000_thermal_sensor_data*, %struct.e1000_thermal_sensor_data** %14, align 8
  %172 = getelementptr inbounds %struct.e1000_thermal_sensor_data, %struct.e1000_thermal_sensor_data* %171, i32 0, i32 0
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 2
  store i32 %170, i32* %177, align 4
  br label %178

178:                                              ; preds = %151, %148, %105
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %13, align 4
  br label %101

182:                                              ; preds = %101
  %183 = load i32, i32* %4, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %182, %90, %71, %31
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @memset(%struct.e1000_thermal_sensor_data*, i32, i32) #1

declare dso_local i32 @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
