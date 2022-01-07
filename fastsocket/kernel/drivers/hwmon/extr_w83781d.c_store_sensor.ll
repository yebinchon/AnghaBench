; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_store_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_store_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.w83781d_data = type { i32*, i32 }

@W83781D_REG_SCFG1 = common dso_local global i32 0, align 4
@BIT_SCFG1 = common dso_local global i32* null, align 8
@W83781D_REG_SCFG2 = common dso_local global i32 0, align 4
@BIT_SCFG2 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"Sensor type %d is deprecated, please use 4 instead\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid sensor type %ld; must be 1, 2, or 4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_sensor(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca %struct.w83781d_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute* %15, %struct.sensor_device_attribute** %9, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.w83781d_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.w83781d_data* %17, %struct.w83781d_data** %10, align 8
  %18 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @simple_strtoul(i8* %21, i32* null, i32 10)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %24 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* %12, align 4
  switch i32 %26, label %121 [
    i32 1, label %27
    i32 2, label %61
    i32 128, label %96
    i32 4, label %99
  ]

27:                                               ; preds = %4
  %28 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %29 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %30 = call i32 @w83781d_read_value(%struct.w83781d_data* %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %32 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32*, i32** @BIT_SCFG1, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %33, %38
  %40 = call i32 @w83781d_write_value(%struct.w83781d_data* %31, i32 %32, i32 %39)
  %41 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %42 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %43 = call i32 @w83781d_read_value(%struct.w83781d_data* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %45 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32*, i32** @BIT_SCFG2, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %46, %51
  %53 = call i32 @w83781d_write_value(%struct.w83781d_data* %44, i32 %45, i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %56 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  br label %126

61:                                               ; preds = %4
  %62 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %63 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %64 = call i32 @w83781d_read_value(%struct.w83781d_data* %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %66 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32*, i32** @BIT_SCFG1, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %67, %72
  %74 = call i32 @w83781d_write_value(%struct.w83781d_data* %65, i32 %66, i32 %73)
  %75 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %76 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %77 = call i32 @w83781d_read_value(%struct.w83781d_data* %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %79 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32*, i32** @BIT_SCFG2, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %80, %86
  %88 = call i32 @w83781d_write_value(%struct.w83781d_data* %78, i32 %79, i32 %87)
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %91 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  br label %126

96:                                               ; preds = %4
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = call i32 @dev_warn(%struct.device* %97, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 128)
  br label %99

99:                                               ; preds = %4, %96
  %100 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %101 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %102 = call i32 @w83781d_read_value(%struct.w83781d_data* %100, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %104 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32*, i32** @BIT_SCFG1, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %105, %111
  %113 = call i32 @w83781d_write_value(%struct.w83781d_data* %103, i32 %104, i32 %112)
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %116 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %114, i32* %120, align 4
  br label %126

121:                                              ; preds = %4
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %124)
  br label %126

126:                                              ; preds = %121, %99, %61, %27
  %127 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %128 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %127, i32 0, i32 1
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i64, i64* %8, align 8
  ret i64 %130
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83781d_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83781d_read_value(%struct.w83781d_data*, i32) #1

declare dso_local i32 @w83781d_write_value(%struct.w83781d_data*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
