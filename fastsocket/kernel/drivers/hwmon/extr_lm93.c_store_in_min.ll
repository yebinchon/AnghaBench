; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_store_in_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_store_in_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm93_data = type { i32*, i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@vccp_limit_type = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_in_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_in_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.lm93_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.i2c_client* @to_i2c_client(%struct.device* %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %10, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %22 = call %struct.lm93_data* @i2c_get_clientdata(%struct.i2c_client* %21)
  store %struct.lm93_data* %22, %struct.lm93_data** %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @simple_strtoul(i8* %23, i32* null, i32 10)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 6
  store i32 %26, i32* %13, align 4
  %27 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %28 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 6
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 7
  br i1 %34, label %35, label %80

35:                                               ; preds = %32, %4
  %36 = load i64*, i64** @vccp_limit_type, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %35
  %43 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %44 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @LM93_VID_FROM_REG(i32 %49)
  store i64 %50, i64* %14, align 8
  %51 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %52 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 240
  %59 = load i32, i32* %12, align 4
  %60 = load i64, i64* %14, align 8
  %61 = call i32 @LM93_IN_REL_TO_REG(i32 %59, i32 0, i64 %60)
  %62 = or i32 %58, %61
  %63 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %64 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  %69 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @LM93_REG_VCCP_LIMIT_OFF(i32 %70)
  %72 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %73 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @lm93_write_byte(%struct.i2c_client* %69, i32 %71, i32 %78)
  br label %103

80:                                               ; preds = %35, %32
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @LM93_IN_TO_REG(i32 %81, i32 %82)
  %84 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %85 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %83, i32* %90, align 4
  %91 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @LM93_REG_IN_MIN(i32 %92)
  %94 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %95 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %94, i32 0, i32 2
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @lm93_write_byte(%struct.i2c_client* %91, i32 %93, i32 %101)
  br label %103

103:                                              ; preds = %80, %42
  %104 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %105 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i64, i64* %8, align 8
  ret i64 %107
}

declare dso_local %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm93_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @LM93_VID_FROM_REG(i32) #1

declare dso_local i32 @LM93_IN_REL_TO_REG(i32, i32, i64) #1

declare dso_local i32 @lm93_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @LM93_REG_VCCP_LIMIT_OFF(i32) #1

declare dso_local i32 @LM93_IN_TO_REG(i32, i32) #1

declare dso_local i32 @LM93_REG_IN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
