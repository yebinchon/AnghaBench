; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_get_thermal_sensor_data_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_get_thermal_sensor_data_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (%struct.e1000_hw.0*, i32, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.e1000_hw.1*, i32, i32, i32*)* }
%struct.e1000_hw.1 = type opaque
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.e1000_thermal_sensor_data }
%struct.e1000_thermal_sensor_data = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@e1000_i350 = common dso_local global i64 0, align 8
@E1000_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@E1000_THMJT = common dso_local global i32 0, align 4
@NVM_ETS_CFG = common dso_local global i32 0, align 4
@NVM_ETS_TYPE_MASK = common dso_local global i32 0, align 4
@NVM_ETS_TYPE_SHIFT = common dso_local global i32 0, align 4
@NVM_ETS_TYPE_EMC = common dso_local global i32 0, align 4
@NVM_ETS_NUM_SENSORS_MASK = common dso_local global i32 0, align 4
@E1000_MAX_SENSORS = common dso_local global i32 0, align 4
@NVM_ETS_DATA_INDEX_MASK = common dso_local global i32 0, align 4
@NVM_ETS_DATA_INDEX_SHIFT = common dso_local global i32 0, align 4
@NVM_ETS_DATA_LOC_MASK = common dso_local global i32 0, align 4
@NVM_ETS_DATA_LOC_SHIFT = common dso_local global i32 0, align 4
@e1000_emc_temp_data = common dso_local global i32* null, align 8
@E1000_I2C_THERMAL_SENSOR_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_get_thermal_sensor_data_generic(%struct.e1000_hw* %0) #0 {
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
  %12 = alloca %struct.e1000_thermal_sensor_data*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %13 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store %struct.e1000_thermal_sensor_data* %16, %struct.e1000_thermal_sensor_data** %12, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @e1000_i350, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %1
  %30 = load i32, i32* @E1000_NOT_IMPLEMENTED, align 4
  store i32 %30, i32* %2, align 4
  br label %141

31:                                               ; preds = %23
  %32 = load i32, i32* @E1000_THMJT, align 4
  %33 = call i32 @rd32(i32 %32)
  %34 = and i32 %33, 255
  %35 = load %struct.e1000_thermal_sensor_data*, %struct.e1000_thermal_sensor_data** %12, align 8
  %36 = getelementptr inbounds %struct.e1000_thermal_sensor_data, %struct.e1000_thermal_sensor_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 4
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32 (%struct.e1000_hw.1*, i32, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32, i32*)** %43, align 8
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %46 = bitcast %struct.e1000_hw* %45 to %struct.e1000_hw.1*
  %47 = load i32, i32* @NVM_ETS_CFG, align 4
  %48 = call i32 %44(%struct.e1000_hw.1* %46, i32 %47, i32 1, i32* %5)
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %31
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 65535
  br i1 %53, label %54, label %56

54:                                               ; preds = %51, %31
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %141

56:                                               ; preds = %51
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32 (%struct.e1000_hw.1*, i32, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32, i32*)** %60, align 8
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = bitcast %struct.e1000_hw* %62 to %struct.e1000_hw.1*
  %64 = load i32, i32* %5, align 4
  %65 = call i32 %61(%struct.e1000_hw.1* %63, i32 %64, i32 1, i32* %6)
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @NVM_ETS_TYPE_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @NVM_ETS_TYPE_SHIFT, align 4
  %70 = ashr i32 %68, %69
  %71 = load i32, i32* @NVM_ETS_TYPE_EMC, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %56
  %74 = load i32, i32* @E1000_NOT_IMPLEMENTED, align 4
  store i32 %74, i32* %2, align 4
  br label %141

75:                                               ; preds = %56
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @NVM_ETS_NUM_SENSORS_MASK, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @E1000_MAX_SENSORS, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @E1000_MAX_SENSORS, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %82, %75
  store i32 1, i32* %11, align 4
  br label %85

85:                                               ; preds = %136, %84
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %139

89:                                               ; preds = %85
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %91 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32 (%struct.e1000_hw.1*, i32, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32, i32*)** %93, align 8
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %96 = bitcast %struct.e1000_hw* %95 to %struct.e1000_hw.1*
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %97, %98
  %100 = call i32 %94(%struct.e1000_hw.1* %96, i32 %99, i32 1, i32* %7)
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @NVM_ETS_DATA_INDEX_MASK, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @NVM_ETS_DATA_INDEX_SHIFT, align 4
  %105 = ashr i32 %103, %104
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @NVM_ETS_DATA_LOC_MASK, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @NVM_ETS_DATA_LOC_SHIFT, align 4
  %110 = ashr i32 %108, %109
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %89
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %115 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %117, align 8
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %120 = bitcast %struct.e1000_hw* %119 to %struct.e1000_hw.0*
  %121 = load i32*, i32** @e1000_emc_temp_data, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @E1000_I2C_THERMAL_SENSOR_ADDR, align 4
  %127 = load %struct.e1000_thermal_sensor_data*, %struct.e1000_thermal_sensor_data** %12, align 8
  %128 = getelementptr inbounds %struct.e1000_thermal_sensor_data, %struct.e1000_thermal_sensor_data* %127, i32 0, i32 0
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = call i32 %118(%struct.e1000_hw.0* %120, i32 %125, i32 %126, i32* %133)
  br label %135

135:                                              ; preds = %113, %89
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %85

139:                                              ; preds = %85
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %73, %54, %29
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
