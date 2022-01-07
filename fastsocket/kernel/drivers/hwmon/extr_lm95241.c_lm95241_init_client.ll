; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm95241.c_lm95241_init_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm95241.c_lm95241_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lm95241_data = type { i32, i32, i32, i64, i32 }

@HZ = common dso_local global i32 0, align 4
@CFG_CR0076 = common dso_local global i32 0, align 4
@TT_OFF = common dso_local global i32 0, align 4
@TT1_SHIFT = common dso_local global i32 0, align 4
@TT2_SHIFT = common dso_local global i32 0, align 4
@LM95241_REG_RW_CONFIG = common dso_local global i32 0, align 4
@LM95241_REG_RW_REM_FILTER = common dso_local global i32 0, align 4
@R1FE_MASK = common dso_local global i32 0, align 4
@R2FE_MASK = common dso_local global i32 0, align 4
@LM95241_REG_RW_TRUTHERM = common dso_local global i32 0, align 4
@LM95241_REG_RW_REMOTE_MODEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @lm95241_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm95241_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.lm95241_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.lm95241_data* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.lm95241_data* %5, %struct.lm95241_data** %3, align 8
  %6 = load i32, i32* @HZ, align 4
  %7 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %8 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 8
  %9 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %10 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @CFG_CR0076, align 4
  %12 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %13 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %15 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* @TT_OFF, align 4
  %17 = load i32, i32* @TT1_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* @TT_OFF, align 4
  %20 = load i32, i32* @TT2_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  %23 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %24 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %26 = load i32, i32* @LM95241_REG_RW_CONFIG, align 4
  %27 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %28 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %25, i32 %26, i32 %29)
  %31 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %32 = load i32, i32* @LM95241_REG_RW_REM_FILTER, align 4
  %33 = load i32, i32* @R1FE_MASK, align 4
  %34 = load i32, i32* @R2FE_MASK, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %31, i32 %32, i32 %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %38 = load i32, i32* @LM95241_REG_RW_TRUTHERM, align 4
  %39 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %40 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %37, i32 %38, i32 %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %44 = load i32, i32* @LM95241_REG_RW_REMOTE_MODEL, align 4
  %45 = load %struct.lm95241_data*, %struct.lm95241_data** %3, align 8
  %46 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %43, i32 %44, i32 %47)
  ret void
}

declare dso_local %struct.lm95241_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
