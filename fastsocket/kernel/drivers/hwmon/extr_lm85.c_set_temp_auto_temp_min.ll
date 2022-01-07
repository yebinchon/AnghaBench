; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm85.c_set_temp_auto_temp_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm85.c_set_temp_auto_temp_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm85_data = type { i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@LM85_REG_AFAN_HYST1 = common dso_local global i32 0, align 4
@LM85_REG_AFAN_HYST2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp_auto_temp_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_temp_auto_temp_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.lm85_data*, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %20 = call %struct.lm85_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.lm85_data* %20, %struct.lm85_data** %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @simple_strtol(i8* %21, i32* null, i32 10)
  store i64 %22, i64* %12, align 8
  %23 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %24 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @TEMP_TO_REG(i64 %26)
  %28 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %29 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %27, i32* %34, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @LM85_REG_AFAN_LIMIT(i32 %36)
  %38 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %39 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @lm85_write_value(%struct.i2c_client* %35, i32 %37, i32 %45)
  %47 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %48 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @TEMP_FROM_REG(i32 %54)
  %56 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %57 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @TEMP_FROM_REG(i32 %63)
  %65 = sub nsw i64 %55, %64
  %66 = call i32 @RANGE_TO_REG(i64 %65)
  %67 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %68 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 %66, i32* %73, align 4
  %74 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @LM85_REG_AFAN_RANGE(i32 %75)
  %77 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %78 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 15
  %86 = shl i32 %85, 4
  %87 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %88 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 7
  %95 = or i32 %86, %94
  %96 = call i32 @lm85_write_value(%struct.i2c_client* %74, i32 %76, i32 %95)
  %97 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %98 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %97, i32 0, i32 2
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @TEMP_FROM_REG(i32 %104)
  %106 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %107 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %106, i32 0, i32 2
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @TEMP_FROM_REG(i32 %113)
  %115 = sub nsw i64 %105, %114
  %116 = call i32 @HYST_TO_REG(i64 %115)
  %117 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %118 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %117, i32 0, i32 2
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 3
  store i32 %116, i32* %123, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %4
  %127 = load i32, i32* %9, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %147

129:                                              ; preds = %126, %4
  %130 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %131 = load i32, i32* @LM85_REG_AFAN_HYST1, align 4
  %132 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %133 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %132, i32 0, i32 2
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 4
  %139 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %140 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %139, i32 0, i32 2
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 1
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %138, %144
  %146 = call i32 @lm85_write_value(%struct.i2c_client* %130, i32 %131, i32 %145)
  br label %158

147:                                              ; preds = %126
  %148 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %149 = load i32, i32* @LM85_REG_AFAN_HYST2, align 4
  %150 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %151 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %150, i32 0, i32 2
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 2
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 4
  %157 = call i32 @lm85_write_value(%struct.i2c_client* %148, i32 %149, i32 %156)
  br label %158

158:                                              ; preds = %147, %129
  %159 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %160 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %159, i32 0, i32 1
  %161 = call i32 @mutex_unlock(i32* %160)
  %162 = load i64, i64* %8, align 8
  ret i64 %162
}

declare dso_local %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm85_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TEMP_TO_REG(i64) #1

declare dso_local i32 @lm85_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @LM85_REG_AFAN_LIMIT(i32) #1

declare dso_local i32 @RANGE_TO_REG(i64) #1

declare dso_local i64 @TEMP_FROM_REG(i32) #1

declare dso_local i32 @LM85_REG_AFAN_RANGE(i32) #1

declare dso_local i32 @HYST_TO_REG(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
