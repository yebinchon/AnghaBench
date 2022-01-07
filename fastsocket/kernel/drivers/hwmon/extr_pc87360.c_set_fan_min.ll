; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_pc87360.c_set_fan_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_pc87360.c_set_fan_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.pc87360_data = type { i32*, i32*, i32*, i32 }

@LD_FAN = common dso_local global i32 0, align 4
@NO_BANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca %struct.pc87360_data*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %13 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %12)
  store %struct.sensor_device_attribute* %13, %struct.sensor_device_attribute** %9, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.pc87360_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.pc87360_data* %15, %struct.pc87360_data** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @simple_strtol(i8* %16, i32* null, i32 10)
  store i64 %17, i64* %11, align 8
  %18 = load %struct.pc87360_data*, %struct.pc87360_data** %10, align 8
  %19 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %18, i32 0, i32 3
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i64, i64* %11, align 8
  %22 = load %struct.pc87360_data*, %struct.pc87360_data** %10, align 8
  %23 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %26 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @FAN_DIV_FROM_REG(i32 %29)
  %31 = call i64 @FAN_TO_REG(i64 %21, i32 %30)
  store i64 %31, i64* %11, align 8
  br label %32

32:                                               ; preds = %48, %4
  %33 = load i64, i64* %11, align 8
  %34 = icmp sgt i64 %33, 255
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.pc87360_data*, %struct.pc87360_data** %10, align 8
  %37 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %40 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 96
  %45 = icmp ne i32 %44, 96
  br label %46

46:                                               ; preds = %35, %32
  %47 = phi i1 [ false, %32 ], [ %45, %35 ]
  br i1 %47, label %48, label %69

48:                                               ; preds = %46
  %49 = load i64, i64* %11, align 8
  %50 = ashr i64 %49, 1
  store i64 %50, i64* %11, align 8
  %51 = load %struct.pc87360_data*, %struct.pc87360_data** %10, align 8
  %52 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %55 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.pc87360_data*, %struct.pc87360_data** %10, align 8
  %61 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %64 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 32
  store i32 %68, i32* %66, align 4
  br label %32

69:                                               ; preds = %46
  %70 = load i64, i64* %11, align 8
  %71 = icmp sgt i64 %70, 255
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %75

73:                                               ; preds = %69
  %74 = load i64, i64* %11, align 8
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi i64 [ 255, %72 ], [ %74, %73 ]
  %77 = trunc i64 %76 to i32
  %78 = load %struct.pc87360_data*, %struct.pc87360_data** %10, align 8
  %79 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %82 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %77, i32* %84, align 4
  %85 = load %struct.pc87360_data*, %struct.pc87360_data** %10, align 8
  %86 = load i32, i32* @LD_FAN, align 4
  %87 = load i32, i32* @NO_BANK, align 4
  %88 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %89 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @PC87360_REG_FAN_MIN(i64 %90)
  %92 = load %struct.pc87360_data*, %struct.pc87360_data** %10, align 8
  %93 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %96 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @pc87360_write_value(%struct.pc87360_data* %85, i32 %86, i32 %87, i32 %91, i32 %99)
  %101 = load %struct.pc87360_data*, %struct.pc87360_data** %10, align 8
  %102 = load i32, i32* @LD_FAN, align 4
  %103 = load i32, i32* @NO_BANK, align 4
  %104 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %105 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @PC87360_REG_FAN_STATUS(i64 %106)
  %108 = load %struct.pc87360_data*, %struct.pc87360_data** %10, align 8
  %109 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %112 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 249
  %117 = call i32 @pc87360_write_value(%struct.pc87360_data* %101, i32 %102, i32 %103, i32 %107, i32 %116)
  %118 = load %struct.pc87360_data*, %struct.pc87360_data** %10, align 8
  %119 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %118, i32 0, i32 3
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i64, i64* %8, align 8
  ret i64 %121
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.pc87360_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @FAN_DIV_FROM_REG(i32) #1

declare dso_local i32 @pc87360_write_value(%struct.pc87360_data*, i32, i32, i32, i32) #1

declare dso_local i32 @PC87360_REG_FAN_MIN(i64) #1

declare dso_local i32 @PC87360_REG_FAN_STATUS(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
