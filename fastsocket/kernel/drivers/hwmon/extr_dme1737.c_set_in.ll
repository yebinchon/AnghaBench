; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_set_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_set_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dme1737_data = type { i32, i8**, i32*, i8** }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unknown function %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_in(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dme1737_data*, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.dme1737_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.dme1737_data* %15, %struct.dme1737_data** %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %17 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute_2* %17, %struct.sensor_device_attribute_2** %10, align 8
  %18 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @simple_strtol(i8* %24, i32* null, i32 10)
  store i64 %25, i64* %13, align 8
  %26 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %27 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %84 [
    i32 128, label %30
    i32 129, label %57
  ]

30:                                               ; preds = %4
  %31 = load i64, i64* %13, align 8
  %32 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %33 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @IN_TO_REG(i64 %31, i32 %38)
  %40 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %41 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %40, i32 0, i32 3
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* %39, i8** %45, align 8
  %46 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @DME1737_REG_IN_MIN(i32 %47)
  %49 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %50 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %49, i32 0, i32 3
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @dme1737_write(%struct.dme1737_data* %46, i32 %48, i8* %55)
  br label %88

57:                                               ; preds = %4
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %60 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @IN_TO_REG(i64 %58, i32 %65)
  %67 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %68 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* %66, i8** %72, align 8
  %73 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @DME1737_REG_IN_MAX(i32 %74)
  %76 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %77 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %76, i32 0, i32 1
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @dme1737_write(%struct.dme1737_data* %73, i32 %75, i8* %82)
  br label %88

84:                                               ; preds = %4
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @dev_dbg(%struct.device* %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %84, %57, %30
  %89 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %90 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i64, i64* %8, align 8
  ret i64 %92
}

declare dso_local %struct.dme1737_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @IN_TO_REG(i64, i32) #1

declare dso_local i32 @dme1737_write(%struct.dme1737_data*, i32, i8*) #1

declare dso_local i32 @DME1737_REG_IN_MIN(i32) #1

declare dso_local i32 @DME1737_REG_IN_MAX(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
