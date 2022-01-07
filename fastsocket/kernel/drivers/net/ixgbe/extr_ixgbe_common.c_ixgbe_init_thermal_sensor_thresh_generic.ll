; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_init_thermal_sensor_thresh_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_init_thermal_sensor_thresh_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i64)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.ixgbe_hw.1*, i64, i64*)* }
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_7__ = type { %struct.ixgbe_thermal_sensor_data }
%struct.ixgbe_thermal_sensor_data = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, i64 }

@IXGBE_STATUS = common dso_local global i32 0, align 4
@IXGBE_STATUS_LAN_ID_1 = common dso_local global i32 0, align 4
@IXGBE_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@IXGBE_ETS_LTHRES_DELTA_MASK = common dso_local global i64 0, align 8
@IXGBE_ETS_LTHRES_DELTA_SHIFT = common dso_local global i64 0, align 8
@IXGBE_ETS_NUM_SENSORS_MASK = common dso_local global i64 0, align 8
@IXGBE_MAX_SENSORS = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_INDEX_MASK = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_INDEX_SHIFT = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_LOC_MASK = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_LOC_SHIFT = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_HTHRESH_MASK = common dso_local global i64 0, align 8
@ixgbe_emc_therm_limit = common dso_local global i32* null, align 8
@IXGBE_I2C_THERMAL_SENSOR_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_init_thermal_sensor_thresh_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ixgbe_thermal_sensor_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i64 0, i64* %3, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.ixgbe_thermal_sensor_data* %16, %struct.ixgbe_thermal_sensor_data** %11, align 8
  %17 = load %struct.ixgbe_thermal_sensor_data*, %struct.ixgbe_thermal_sensor_data** %11, align 8
  %18 = call i32 @memset(%struct.ixgbe_thermal_sensor_data* %17, i32 0, i32 8)
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = load i32, i32* @IXGBE_STATUS, align 4
  %21 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %19, i32 %20)
  %22 = load i32, i32* @IXGBE_STATUS_LAN_ID_1, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i64, i64* @IXGBE_NOT_IMPLEMENTED, align 8
  store i64 %26, i64* %3, align 8
  br label %123

27:                                               ; preds = %1
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %29 = call i64 @ixgbe_get_ets_data(%struct.ixgbe_hw* %28, i64* %5, i64* %4)
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %123

33:                                               ; preds = %27
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @IXGBE_ETS_LTHRES_DELTA_MASK, align 8
  %36 = and i64 %34, %35
  %37 = load i64, i64* @IXGBE_ETS_LTHRES_DELTA_SHIFT, align 8
  %38 = lshr i64 %36, %37
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @IXGBE_ETS_NUM_SENSORS_MASK, align 8
  %41 = and i64 %39, %40
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @IXGBE_MAX_SENSORS, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i64, i64* @IXGBE_MAX_SENSORS, align 8
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %45, %33
  store i64 0, i64* %10, align 8
  br label %48

48:                                               ; preds = %119, %47
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %122

52:                                               ; preds = %48
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %54 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32 (%struct.ixgbe_hw.1*, i64, i64*)*, i32 (%struct.ixgbe_hw.1*, i64, i64*)** %56, align 8
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %59 = bitcast %struct.ixgbe_hw* %58 to %struct.ixgbe_hw.1*
  %60 = load i64, i64* %4, align 8
  %61 = add i64 %60, 1
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %61, %62
  %64 = call i32 %57(%struct.ixgbe_hw.1* %59, i64 %63, i64* %6)
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @IXGBE_ETS_DATA_INDEX_MASK, align 8
  %67 = and i64 %65, %66
  %68 = load i64, i64* @IXGBE_ETS_DATA_INDEX_SHIFT, align 8
  %69 = lshr i64 %67, %68
  store i64 %69, i64* %12, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @IXGBE_ETS_DATA_LOC_MASK, align 8
  %72 = and i64 %70, %71
  %73 = load i64, i64* @IXGBE_ETS_DATA_LOC_SHIFT, align 8
  %74 = lshr i64 %72, %73
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @IXGBE_ETS_DATA_HTHRESH_MASK, align 8
  %77 = and i64 %75, %76
  store i64 %77, i64* %9, align 8
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %79 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i64)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i64)** %81, align 8
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %84 = bitcast %struct.ixgbe_hw* %83 to %struct.ixgbe_hw.0*
  %85 = load i32*, i32** @ixgbe_emc_therm_limit, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IXGBE_I2C_THERMAL_SENSOR_ADDR, align 4
  %90 = load i64, i64* %9, align 8
  %91 = call i32 %82(%struct.ixgbe_hw.0* %84, i32 %88, i32 %89, i64 %90)
  %92 = load i64, i64* %13, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %52
  br label %119

95:                                               ; preds = %52
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.ixgbe_thermal_sensor_data*, %struct.ixgbe_thermal_sensor_data** %11, align 8
  %98 = getelementptr inbounds %struct.ixgbe_thermal_sensor_data, %struct.ixgbe_thermal_sensor_data* %97, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i64 %96, i64* %102, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.ixgbe_thermal_sensor_data*, %struct.ixgbe_thermal_sensor_data** %11, align 8
  %105 = getelementptr inbounds %struct.ixgbe_thermal_sensor_data, %struct.ixgbe_thermal_sensor_data* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  store i64 %103, i64* %109, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %7, align 8
  %112 = sub i64 %110, %111
  %113 = load %struct.ixgbe_thermal_sensor_data*, %struct.ixgbe_thermal_sensor_data** %11, align 8
  %114 = getelementptr inbounds %struct.ixgbe_thermal_sensor_data, %struct.ixgbe_thermal_sensor_data* %113, i32 0, i32 0
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  store i64 %112, i64* %118, align 8
  br label %119

119:                                              ; preds = %95, %94
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %10, align 8
  br label %48

122:                                              ; preds = %48
  br label %123

123:                                              ; preds = %122, %32, %25
  %124 = load i64, i64* %3, align 8
  ret i64 %124
}

declare dso_local i32 @memset(%struct.ixgbe_thermal_sensor_data*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_get_ets_data(%struct.ixgbe_hw*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
