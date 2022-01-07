; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_temp_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_temp_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627hf_data = type { i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@W83781D_REG_SCFG1 = common dso_local global i32 0, align 4
@BIT_SCFG1 = common dso_local global i32* null, align 8
@W83781D_REG_SCFG2 = common dso_local global i32 0, align 4
@BIT_SCFG2 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"Sensor type %d is deprecated, please use 4 instead\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid sensor type %ld; must be 1, 2, or 4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp_type(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.w83627hf_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.w83627hf_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.w83627hf_data* %18, %struct.w83627hf_data** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @simple_strtoul(i8* %19, i32* null, i32 10)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %22 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i32, i32* %11, align 4
  switch i32 %24, label %119 [
    i32 1, label %25
    i32 2, label %59
    i32 128, label %94
    i32 4, label %97
  ]

25:                                               ; preds = %4
  %26 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %27 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %28 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %30 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32*, i32** @BIT_SCFG1, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %31, %36
  %38 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %29, i32 %30, i32 %37)
  %39 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %40 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %41 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %43 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** @BIT_SCFG2, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %44, %49
  %51 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %42, i32 %43, i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %54 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %124

59:                                               ; preds = %4
  %60 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %61 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %62 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %64 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32*, i32** @BIT_SCFG1, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %65, %70
  %72 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %63, i32 %64, i32 %71)
  %73 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %74 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %75 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %73, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %77 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32*, i32** @BIT_SCFG2, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %78, %84
  %86 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %76, i32 %77, i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %89 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  br label %124

94:                                               ; preds = %4
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = call i32 @dev_warn(%struct.device* %95, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 128)
  br label %97

97:                                               ; preds = %4, %94
  %98 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %99 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %100 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %98, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %102 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32*, i32** @BIT_SCFG1, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %103, %109
  %111 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %101, i32 %102, i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %114 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  br label %124

119:                                              ; preds = %4
  %120 = load %struct.device*, %struct.device** %5, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %122)
  br label %124

124:                                              ; preds = %119, %97, %59, %25
  %125 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %126 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %125, i32 0, i32 1
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i64, i64* %8, align 8
  ret i64 %128
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83627hf_read_value(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
