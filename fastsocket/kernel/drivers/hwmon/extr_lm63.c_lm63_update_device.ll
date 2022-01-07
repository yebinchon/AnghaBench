; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm63.c_lm63_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm63.c_lm63_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm63_data = type { i32, i32, i32*, i32, i32, i32*, i32*, i32, i32, i32, i64 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@LM63_REG_TACH_COUNT_LSB = common dso_local global i32 0, align 4
@LM63_REG_TACH_COUNT_MSB = common dso_local global i32 0, align 4
@LM63_REG_TACH_LIMIT_LSB = common dso_local global i32 0, align 4
@LM63_REG_TACH_LIMIT_MSB = common dso_local global i32 0, align 4
@LM63_REG_PWM_FREQ = common dso_local global i32 0, align 4
@LM63_REG_PWM_VALUE = common dso_local global i32 0, align 4
@LM63_REG_LOCAL_TEMP = common dso_local global i32 0, align 4
@LM63_REG_LOCAL_HIGH = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_TEMP_MSB = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_TEMP_LSB = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_LOW_MSB = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_LOW_LSB = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_HIGH_MSB = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_HIGH_LSB = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_TCRIT = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_TCRIT_HYST = common dso_local global i32 0, align 4
@LM63_REG_ALERT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lm63_data* (%struct.device*)* @lm63_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lm63_data* @lm63_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.lm63_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.i2c_client* @to_i2c_client(%struct.device* %5)
  store %struct.i2c_client* %6, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.lm63_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.lm63_data* %8, %struct.lm63_data** %4, align 8
  %9 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %10 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %9, i32 0, i32 9
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i64, i64* @jiffies, align 8
  %13 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %14 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %13, i32 0, i32 10
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HZ, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @time_after(i64 %12, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %22 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %160, label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %27 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %25
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = load i32, i32* @LM63_REG_TACH_COUNT_LSB, align 4
  %34 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %32, i32 %33)
  %35 = and i32 %34, 252
  %36 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %37 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %41 = load i32, i32* @LM63_REG_TACH_COUNT_MSB, align 4
  %42 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %40, i32 %41)
  %43 = shl i32 %42, 8
  %44 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %45 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 4
  %50 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %51 = load i32, i32* @LM63_REG_TACH_LIMIT_LSB, align 4
  %52 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %50, i32 %51)
  %53 = and i32 %52, 252
  %54 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %55 = load i32, i32* @LM63_REG_TACH_LIMIT_MSB, align 4
  %56 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %54, i32 %55)
  %57 = shl i32 %56, 8
  %58 = or i32 %53, %57
  %59 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %60 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %31, %25
  %64 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %65 = load i32, i32* @LM63_REG_PWM_FREQ, align 4
  %66 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %64, i32 %65)
  %67 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %68 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %70 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %75 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %74, i32 0, i32 3
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %63
  %77 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %78 = load i32, i32* @LM63_REG_PWM_VALUE, align 4
  %79 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %77, i32 %78)
  %80 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %81 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %83 = load i32, i32* @LM63_REG_LOCAL_TEMP, align 4
  %84 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %82, i32 %83)
  %85 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %86 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %84, i32* %88, align 4
  %89 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %90 = load i32, i32* @LM63_REG_LOCAL_HIGH, align 4
  %91 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %89, i32 %90)
  %92 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %93 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %91, i32* %95, align 4
  %96 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %97 = load i32, i32* @LM63_REG_REMOTE_TEMP_MSB, align 4
  %98 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %96, i32 %97)
  %99 = shl i32 %98, 8
  %100 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %101 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %99, i32* %103, align 4
  %104 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %105 = load i32, i32* @LM63_REG_REMOTE_TEMP_LSB, align 4
  %106 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %104, i32 %105)
  %107 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %108 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %107, i32 0, i32 6
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %106
  store i32 %112, i32* %110, align 4
  %113 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %114 = load i32, i32* @LM63_REG_REMOTE_LOW_MSB, align 4
  %115 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %113, i32 %114)
  %116 = shl i32 %115, 8
  %117 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %118 = load i32, i32* @LM63_REG_REMOTE_LOW_LSB, align 4
  %119 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %117, i32 %118)
  %120 = or i32 %116, %119
  %121 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %122 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %121, i32 0, i32 6
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 %120, i32* %124, align 4
  %125 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %126 = load i32, i32* @LM63_REG_REMOTE_HIGH_MSB, align 4
  %127 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %125, i32 %126)
  %128 = shl i32 %127, 8
  %129 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %130 = load i32, i32* @LM63_REG_REMOTE_HIGH_LSB, align 4
  %131 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %129, i32 %130)
  %132 = or i32 %128, %131
  %133 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %134 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %133, i32 0, i32 6
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  store i32 %132, i32* %136, align 4
  %137 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %138 = load i32, i32* @LM63_REG_REMOTE_TCRIT, align 4
  %139 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %137, i32 %138)
  %140 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %141 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %140, i32 0, i32 5
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  store i32 %139, i32* %143, align 4
  %144 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %145 = load i32, i32* @LM63_REG_REMOTE_TCRIT_HYST, align 4
  %146 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %144, i32 %145)
  %147 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %148 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %147, i32 0, i32 7
  store i32 %146, i32* %148, align 8
  %149 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %150 = load i32, i32* @LM63_REG_ALERT_STATUS, align 4
  %151 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %149, i32 %150)
  %152 = and i32 %151, 127
  %153 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %154 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %153, i32 0, i32 8
  store i32 %152, i32* %154, align 4
  %155 = load i64, i64* @jiffies, align 8
  %156 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %157 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %156, i32 0, i32 10
  store i64 %155, i64* %157, align 8
  %158 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %159 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  br label %160

160:                                              ; preds = %76, %20
  %161 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %162 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %161, i32 0, i32 9
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  ret %struct.lm63_data* %164
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm63_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
