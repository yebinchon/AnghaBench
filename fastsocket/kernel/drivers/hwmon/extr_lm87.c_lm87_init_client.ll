; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm87.c_lm87_init_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm87.c_lm87_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.lm87_data = type { i32, i32 }

@LM87_REG_CHANNEL_MODE = common dso_local global i32 0, align 4
@LM87_REG_CONFIG = common dso_local global i32 0, align 4
@LM87_REG_TEMP_HIGH = common dso_local global i32* null, align 8
@LM87_REG_TEMP_LOW = common dso_local global i32* null, align 8
@CHAN_TEMP3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @lm87_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm87_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.lm87_data*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.lm87_data* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.lm87_data* %6, %struct.lm87_data** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.lm87_data*, %struct.lm87_data** %3, align 8
  %20 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %22 = load i32, i32* @LM87_REG_CHANNEL_MODE, align 4
  %23 = load %struct.lm87_data*, %struct.lm87_data** %3, align 8
  %24 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @lm87_write_value(%struct.i2c_client* %21, i32 %22, i32 %25)
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %29 = load i32, i32* @LM87_REG_CHANNEL_MODE, align 4
  %30 = call i32 @lm87_read_value(%struct.i2c_client* %28, i32 %29)
  %31 = load %struct.lm87_data*, %struct.lm87_data** %3, align 8
  %32 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %12
  %34 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %35 = load i32, i32* @LM87_REG_CONFIG, align 4
  %36 = call i32 @lm87_read_value(%struct.i2c_client* %34, i32 %35)
  %37 = and i32 %36, 111
  %38 = load %struct.lm87_data*, %struct.lm87_data** %3, align 8
  %39 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.lm87_data*, %struct.lm87_data** %3, align 8
  %41 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %117, label %45

45:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %58, %45
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 6
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @LM87_REG_IN_MIN(i32 %51)
  %53 = call i32 @lm87_write_value(%struct.i2c_client* %50, i32 %52, i32 0)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @LM87_REG_IN_MAX(i32 %55)
  %57 = call i32 @lm87_write_value(%struct.i2c_client* %54, i32 %56, i32 255)
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %46

61:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %88, %61
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %91

65:                                               ; preds = %62
  %66 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %67 = load i32*, i32** @LM87_REG_TEMP_HIGH, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @lm87_write_value(%struct.i2c_client* %66, i32 %71, i32 127)
  %73 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %74 = load i32*, i32** @LM87_REG_TEMP_LOW, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @lm87_write_value(%struct.i2c_client* %73, i32 %78, i32 0)
  %80 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @LM87_REG_AIN_MIN(i32 %81)
  %83 = call i32 @lm87_write_value(%struct.i2c_client* %80, i32 %82, i32 0)
  %84 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @LM87_REG_AIN_MAX(i32 %85)
  %87 = call i32 @lm87_write_value(%struct.i2c_client* %84, i32 %86, i32 255)
  br label %88

88:                                               ; preds = %65
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %62

91:                                               ; preds = %62
  %92 = load %struct.lm87_data*, %struct.lm87_data** %3, align 8
  %93 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CHAN_TEMP3, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %91
  %99 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %100 = load i32*, i32** @LM87_REG_TEMP_HIGH, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @lm87_write_value(%struct.i2c_client* %99, i32 %102, i32 127)
  %104 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %105 = load i32*, i32** @LM87_REG_TEMP_LOW, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @lm87_write_value(%struct.i2c_client* %104, i32 %107, i32 0)
  br label %116

109:                                              ; preds = %91
  %110 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %111 = call i32 @LM87_REG_IN_MIN(i32 0)
  %112 = call i32 @lm87_write_value(%struct.i2c_client* %110, i32 %111, i32 0)
  %113 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %114 = call i32 @LM87_REG_IN_MAX(i32 0)
  %115 = call i32 @lm87_write_value(%struct.i2c_client* %113, i32 %114, i32 255)
  br label %116

116:                                              ; preds = %109, %98
  br label %117

117:                                              ; preds = %116, %33
  %118 = load %struct.lm87_data*, %struct.lm87_data** %3, align 8
  %119 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 9
  %122 = icmp ne i32 %121, 1
  br i1 %122, label %123, label %132

123:                                              ; preds = %117
  %124 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %125 = load i32, i32* @LM87_REG_CONFIG, align 4
  %126 = load %struct.lm87_data*, %struct.lm87_data** %3, align 8
  %127 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 119
  %130 = or i32 %129, 1
  %131 = call i32 @lm87_write_value(%struct.i2c_client* %124, i32 %125, i32 %130)
  br label %132

132:                                              ; preds = %123, %117
  ret void
}

declare dso_local %struct.lm87_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @lm87_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @lm87_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM87_REG_IN_MIN(i32) #1

declare dso_local i32 @LM87_REG_IN_MAX(i32) #1

declare dso_local i32 @LM87_REG_AIN_MIN(i32) #1

declare dso_local i32 @LM87_REG_AIN_MAX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
