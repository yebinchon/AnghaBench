; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_store_temp_max_hyst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_store_temp_max_hyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_max_hyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp_max_hyst(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.f71882fg_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.f71882fg_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.f71882fg_data* %15, %struct.f71882fg_data** %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %17 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @simple_strtol(i8* %20, i32* null, i32 10)
  %22 = sdiv i32 %21, 1000
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %12, align 8
  %25 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %26 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @F71882FG_REG_TEMP_HIGH(i32 %29)
  %31 = call i8* @f71882fg_read8(%struct.f71882fg_data* %28, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %34 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %41 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 15
  %48 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %49 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @SENSORS_LIMIT(i64 %39, i32 %47, i32 %54)
  store i64 %55, i64* %11, align 8
  %56 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %57 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %11, align 8
  %65 = sub nsw i64 %63, %64
  store i64 %65, i64* %11, align 8
  %66 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sdiv i32 %67, 2
  %69 = call i32 @F71882FG_REG_TEMP_HYST(i32 %68)
  %70 = call i8* @f71882fg_read8(%struct.f71882fg_data* %66, i32 %69)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %4
  %76 = load i32, i32* %13, align 4
  %77 = and i32 %76, 15
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %11, align 8
  %80 = shl i64 %79, 4
  %81 = or i64 %78, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %13, align 4
  br label %90

83:                                               ; preds = %4
  %84 = load i32, i32* %13, align 4
  %85 = and i32 %84, 240
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %11, align 8
  %88 = or i64 %86, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %83, %75
  %91 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sdiv i32 %92, 2
  %94 = call i32 @F71882FG_REG_TEMP_HYST(i32 %93)
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @f71882fg_write8(%struct.f71882fg_data* %91, i32 %94, i32 %95)
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %99 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sdiv i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %97, i32* %104, align 4
  %105 = load %struct.f71882fg_data*, %struct.f71882fg_data** %9, align 8
  %106 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %105, i32 0, i32 2
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i64, i64* %12, align 8
  ret i64 %108
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @F71882FG_REG_TEMP_HIGH(i32) #1

declare dso_local i64 @SENSORS_LIMIT(i64, i32, i32) #1

declare dso_local i32 @F71882FG_REG_TEMP_HYST(i32) #1

declare dso_local i32 @f71882fg_write8(%struct.f71882fg_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
