; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_set_temphyst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_set_temphyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm90_data = type { i64, i32, i32, i32* }

@adt7461 = common dso_local global i64 0, align 8
@max6646 = common dso_local global i64 0, align 8
@LM90_REG_W_TCRIT_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temphyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_temphyst(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.lm90_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %9, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %16 = call %struct.lm90_data* @i2c_get_clientdata(%struct.i2c_client* %15)
  store %struct.lm90_data* %16, %struct.lm90_data** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @simple_strtol(i8* %17, i32* null, i32 10)
  store i64 %18, i64* %11, align 8
  %19 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %20 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %23 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @adt7461, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %29 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %30 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @temp_from_u8_adt7461(%struct.lm90_data* %28, i32 %33)
  store i32 %34, i32* %12, align 4
  br label %56

35:                                               ; preds = %4
  %36 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %37 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @max6646, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %43 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @temp_from_u8(i32 %46)
  store i32 %47, i32* %12, align 4
  br label %55

48:                                               ; preds = %35
  %49 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %50 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @temp_from_s8(i32 %53)
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %48, %41
  br label %56

56:                                               ; preds = %55, %27
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %11, align 8
  %60 = sub nsw i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @hyst_to_reg(i32 %61)
  %63 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %64 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %66 = load i32, i32* @LM90_REG_W_TCRIT_HYST, align 4
  %67 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %68 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %65, i32 %66, i32 %69)
  %71 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %72 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i64, i64* %8, align 8
  ret i64 %74
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm90_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @temp_from_u8_adt7461(%struct.lm90_data*, i32) #1

declare dso_local i32 @temp_from_u8(i32) #1

declare dso_local i32 @temp_from_s8(i32) #1

declare dso_local i32 @hyst_to_reg(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
