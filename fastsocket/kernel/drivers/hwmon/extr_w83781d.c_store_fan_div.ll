; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_store_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_store_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.w83781d_data = type { i32*, i32*, i64, i32 }

@W83781D_REG_PIN = common dso_local global i32 0, align 4
@W83781D_REG_VID_FANDIV = common dso_local global i32 0, align 4
@w83781d = common dso_local global i64 0, align 8
@as99127f = common dso_local global i64 0, align 8
@W83781D_REG_VBAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca %struct.w83781d_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %9, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.w83781d_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.w83781d_data* %18, %struct.w83781d_data** %10, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @simple_strtoul(i8* %22, i32* null, i32 10)
  store i64 %23, i64* %14, align 8
  %24 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %25 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %24, i32 0, i32 3
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %28 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %35 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @DIV_FROM_REG(i32 %40)
  %42 = call i64 @FAN_FROM_REG(i32 %33, i32 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %45 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @DIV_TO_REG(i64 %43, i64 %46)
  %48 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %49 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %59

57:                                               ; preds = %4
  %58 = load i32, i32* @W83781D_REG_PIN, align 4
  br label %61

59:                                               ; preds = %4
  %60 = load i32, i32* @W83781D_REG_VID_FANDIV, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = call i32 @w83781d_read_value(%struct.w83781d_data* %54, i32 %62)
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 207, i32 63
  %68 = and i32 %63, %67
  %69 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %70 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 3
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 4, i32 6
  %81 = shl i32 %76, %80
  %82 = or i32 %68, %81
  store i32 %82, i32* %13, align 4
  %83 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %88

86:                                               ; preds = %61
  %87 = load i32, i32* @W83781D_REG_PIN, align 4
  br label %90

88:                                               ; preds = %61
  %89 = load i32, i32* @W83781D_REG_VID_FANDIV, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @w83781d_write_value(%struct.w83781d_data* %83, i32 %91, i32 %92)
  %94 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %95 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @w83781d, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %130

99:                                               ; preds = %90
  %100 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %101 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @as99127f, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %99
  %106 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %107 = load i32, i32* @W83781D_REG_VBAT, align 4
  %108 = call i32 @w83781d_read_value(%struct.w83781d_data* %106, i32 %107)
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 5, %109
  %111 = shl i32 1, %110
  %112 = xor i32 %111, -1
  %113 = and i32 %108, %112
  %114 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %115 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 4
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 3, %122
  %124 = shl i32 %121, %123
  %125 = or i32 %113, %124
  store i32 %125, i32* %13, align 4
  %126 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %127 = load i32, i32* @W83781D_REG_VBAT, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @w83781d_write_value(%struct.w83781d_data* %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %105, %99, %90
  %131 = load i64, i64* %11, align 8
  %132 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %133 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @DIV_FROM_REG(i32 %138)
  %140 = call i32 @FAN_TO_REG(i64 %131, i32 %139)
  %141 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %142 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %140, i32* %146, align 4
  %147 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @W83781D_REG_FAN_MIN(i32 %148)
  %150 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %151 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @w83781d_write_value(%struct.w83781d_data* %147, i32 %149, i32 %156)
  %158 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %159 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %158, i32 0, i32 3
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load i64, i64* %8, align 8
  ret i64 %161
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83781d_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @DIV_TO_REG(i64, i64) #1

declare dso_local i32 @w83781d_read_value(%struct.w83781d_data*, i32) #1

declare dso_local i32 @w83781d_write_value(%struct.w83781d_data*, i32, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @W83781D_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
