; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627hf_data = type { i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@W83781D_REG_PIN = common dso_local global i32 0, align 4
@W83781D_REG_VID_FANDIV = common dso_local global i32 0, align 4
@W83781D_REG_VBAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.w83627hf_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.w83627hf_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.w83627hf_data* %19, %struct.w83627hf_data** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @simple_strtoul(i8* %20, i32* null, i32 10)
  store i64 %21, i64* %13, align 8
  %22 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %23 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %26 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %33 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DIV_FROM_REG(i32 %38)
  %40 = call i64 @FAN_FROM_REG(i32 %31, i32 %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @DIV_TO_REG(i64 %41)
  %43 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %44 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  %49 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %54

52:                                               ; preds = %4
  %53 = load i32, i32* @W83781D_REG_PIN, align 4
  br label %56

54:                                               ; preds = %4
  %55 = load i32, i32* @W83781D_REG_VID_FANDIV, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %49, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 207, i32 63
  %63 = and i32 %58, %62
  %64 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %65 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 3
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 4, i32 6
  %76 = shl i32 %71, %75
  %77 = or i32 %63, %76
  store i32 %77, i32* %12, align 4
  %78 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %83

81:                                               ; preds = %56
  %82 = load i32, i32* @W83781D_REG_PIN, align 4
  br label %85

83:                                               ; preds = %56
  %84 = load i32, i32* @W83781D_REG_VID_FANDIV, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %78, i32 %86, i32 %87)
  %89 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %90 = load i32, i32* @W83781D_REG_VBAT, align 4
  %91 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %89, i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 5, %92
  %94 = shl i32 1, %93
  %95 = xor i32 %94, -1
  %96 = and i32 %91, %95
  %97 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %98 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 4
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 3, %105
  %107 = shl i32 %104, %106
  %108 = or i32 %96, %107
  store i32 %108, i32* %12, align 4
  %109 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %110 = load i32, i32* @W83781D_REG_VBAT, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %109, i32 %110, i32 %111)
  %113 = load i64, i64* %11, align 8
  %114 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %115 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @DIV_FROM_REG(i32 %120)
  %122 = call i32 @FAN_TO_REG(i64 %113, i32 %121)
  %123 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %124 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  %129 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @W83627HF_REG_FAN_MIN(i32 %130)
  %132 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %133 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %129, i32 %131, i32 %138)
  %140 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %141 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %140, i32 0, i32 2
  %142 = call i32 @mutex_unlock(i32* %141)
  %143 = load i64, i64* %8, align 8
  ret i64 %143
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @DIV_TO_REG(i64) #1

declare dso_local i32 @w83627hf_read_value(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @W83627HF_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
