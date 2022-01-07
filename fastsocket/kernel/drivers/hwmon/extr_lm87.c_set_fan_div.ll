; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm87.c_set_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm87.c_set_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm87_data = type { i32*, i32*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@LM87_REG_VID_FAN_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i8*, i64, i32)* @set_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_div(%struct.device* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.lm87_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.i2c_client* @to_i2c_client(%struct.device* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %10, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %18 = call %struct.lm87_data* @i2c_get_clientdata(%struct.i2c_client* %17)
  store %struct.lm87_data* %18, %struct.lm87_data** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @simple_strtol(i8* %19, i32* null, i32 10)
  store i64 %20, i64* %12, align 8
  %21 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %22 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %21, i32 0, i32 2
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %25 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %32 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @FAN_DIV_FROM_REG(i32 %37)
  %39 = call i64 @FAN_FROM_REG(i32 %30, i32 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %12, align 8
  switch i64 %40, label %69 [
    i64 1, label %41
    i64 2, label %48
    i64 4, label %55
    i64 8, label %62
  ]

41:                                               ; preds = %4
  %42 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %43 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 0, i32* %47, align 4
  br label %75

48:                                               ; preds = %4
  %49 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %50 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 1, i32* %54, align 4
  br label %75

55:                                               ; preds = %4
  %56 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %57 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 2, i32* %61, align 4
  br label %75

62:                                               ; preds = %4
  %63 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %64 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 3, i32* %68, align 4
  br label %75

69:                                               ; preds = %4
  %70 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %71 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %70, i32 0, i32 2
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i64, i64* @EINVAL, align 8
  %74 = sub i64 0, %73
  store i64 %74, i64* %5, align 8
  br label %129

75:                                               ; preds = %62, %55, %48, %41
  %76 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %77 = load i32, i32* @LM87_REG_VID_FAN_DIV, align 4
  %78 = call i32 @lm87_read_value(%struct.i2c_client* %76, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %9, align 4
  switch i32 %79, label %100 [
    i32 0, label %80
    i32 1, label %90
  ]

80:                                               ; preds = %75
  %81 = load i32, i32* %14, align 4
  %82 = and i32 %81, 207
  %83 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %84 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 4
  %89 = or i32 %82, %88
  store i32 %89, i32* %14, align 4
  br label %100

90:                                               ; preds = %75
  %91 = load i32, i32* %14, align 4
  %92 = and i32 %91, 63
  %93 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %94 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 6
  %99 = or i32 %92, %98
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %75, %90, %80
  %101 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %102 = load i32, i32* @LM87_REG_VID_FAN_DIV, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @lm87_write_value(%struct.i2c_client* %101, i32 %102, i32 %103)
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @FAN_TO_REG(i64 %105, i64 %106)
  %108 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %109 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @LM87_REG_FAN_MIN(i32 %115)
  %117 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %118 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @lm87_write_value(%struct.i2c_client* %114, i32 %116, i32 %123)
  %125 = load %struct.lm87_data*, %struct.lm87_data** %11, align 8
  %126 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %125, i32 0, i32 2
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i64, i64* %8, align 8
  store i64 %128, i64* %5, align 8
  br label %129

129:                                              ; preds = %100, %69
  %130 = load i64, i64* %5, align 8
  ret i64 %130
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm87_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @FAN_DIV_FROM_REG(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @lm87_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @lm87_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i64) #1

declare dso_local i32 @LM87_REG_FAN_MIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
