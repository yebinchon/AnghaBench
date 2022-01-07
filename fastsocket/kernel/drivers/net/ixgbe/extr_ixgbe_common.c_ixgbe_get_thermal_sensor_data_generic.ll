; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_get_thermal_sensor_data_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_get_thermal_sensor_data_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (%struct.ixgbe_hw.1*, i64, i64*)* }
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_7__ = type { %struct.ixgbe_thermal_sensor_data }
%struct.ixgbe_thermal_sensor_data = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@IXGBE_STATUS = common dso_local global i32 0, align 4
@IXGBE_STATUS_LAN_ID_1 = common dso_local global i32 0, align 4
@IXGBE_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@IXGBE_ETS_NUM_SENSORS_MASK = common dso_local global i64 0, align 8
@IXGBE_MAX_SENSORS = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_INDEX_MASK = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_INDEX_SHIFT = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_LOC_MASK = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_LOC_SHIFT = common dso_local global i64 0, align 8
@ixgbe_emc_temp_data = common dso_local global i32* null, align 8
@IXGBE_I2C_THERMAL_SENSOR_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_get_thermal_sensor_data_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ixgbe_thermal_sensor_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i64 0, i64* %3, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store %struct.ixgbe_thermal_sensor_data* %14, %struct.ixgbe_thermal_sensor_data** %9, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = load i32, i32* @IXGBE_STATUS, align 4
  %17 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %15, i32 %16)
  %18 = load i32, i32* @IXGBE_STATUS_LAN_ID_1, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i64, i64* @IXGBE_NOT_IMPLEMENTED, align 8
  store i64 %22, i64* %3, align 8
  br label %101

23:                                               ; preds = %1
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = call i64 @ixgbe_get_ets_data(%struct.ixgbe_hw* %24, i64* %5, i64* %4)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %101

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @IXGBE_ETS_NUM_SENSORS_MASK, align 8
  %32 = and i64 %30, %31
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @IXGBE_MAX_SENSORS, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* @IXGBE_MAX_SENSORS, align 8
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %36, %29
  store i64 0, i64* %8, align 8
  br label %39

39:                                               ; preds = %97, %38
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %100

43:                                               ; preds = %39
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64 (%struct.ixgbe_hw.1*, i64, i64*)*, i64 (%struct.ixgbe_hw.1*, i64, i64*)** %47, align 8
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %50 = bitcast %struct.ixgbe_hw* %49 to %struct.ixgbe_hw.1*
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, 1
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %52, %53
  %55 = call i64 %48(%struct.ixgbe_hw.1* %50, i64 %54, i64* %6)
  store i64 %55, i64* %3, align 8
  %56 = load i64, i64* %3, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %101

59:                                               ; preds = %43
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @IXGBE_ETS_DATA_INDEX_MASK, align 8
  %62 = and i64 %60, %61
  %63 = load i64, i64* @IXGBE_ETS_DATA_INDEX_SHIFT, align 8
  %64 = lshr i64 %62, %63
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @IXGBE_ETS_DATA_LOC_MASK, align 8
  %67 = and i64 %65, %66
  %68 = load i64, i64* @IXGBE_ETS_DATA_LOC_SHIFT, align 8
  %69 = lshr i64 %67, %68
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %59
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %74 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %76, align 8
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %79 = bitcast %struct.ixgbe_hw* %78 to %struct.ixgbe_hw.0*
  %80 = load i32*, i32** @ixgbe_emc_temp_data, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IXGBE_I2C_THERMAL_SENSOR_ADDR, align 4
  %85 = load %struct.ixgbe_thermal_sensor_data*, %struct.ixgbe_thermal_sensor_data** %9, align 8
  %86 = getelementptr inbounds %struct.ixgbe_thermal_sensor_data, %struct.ixgbe_thermal_sensor_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = call i64 %77(%struct.ixgbe_hw.0* %79, i32 %83, i32 %84, i32* %90)
  store i64 %91, i64* %3, align 8
  %92 = load i64, i64* %3, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %72
  br label %101

95:                                               ; preds = %72
  br label %96

96:                                               ; preds = %95, %59
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %8, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %8, align 8
  br label %39

100:                                              ; preds = %39
  br label %101

101:                                              ; preds = %100, %94, %58, %28, %21
  %102 = load i64, i64* %3, align 8
  ret i64 %102
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_get_ets_data(%struct.ixgbe_hw*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
