; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1026.c_set_gpio_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1026.c_set_gpio_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.adm1026_data = type { i32, i32, i32 }

@ADM1026_REG_GPIO_MASK_0_7 = common dso_local global i32 0, align 4
@ADM1026_REG_GPIO_MASK_8_15 = common dso_local global i32 0, align 4
@ADM1026_REG_MASK1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_gpio_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_gpio_mask(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.adm1026_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %9, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %16 = call %struct.adm1026_data* @i2c_get_clientdata(%struct.i2c_client* %15)
  store %struct.adm1026_data* %16, %struct.adm1026_data** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @simple_strtol(i8* %17, i32* null, i32 10)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %20 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* %11, align 4
  %23 = and i32 %22, 131071
  %24 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %25 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %27 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %12, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %31 = load i32, i32* @ADM1026_REG_GPIO_MASK_0_7, align 4
  %32 = load i64, i64* %12, align 8
  %33 = and i64 %32, 255
  %34 = call i32 @adm1026_write_value(%struct.i2c_client* %30, i32 %31, i64 %33)
  %35 = load i64, i64* %12, align 8
  %36 = ashr i64 %35, 8
  store i64 %36, i64* %12, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %38 = load i32, i32* @ADM1026_REG_GPIO_MASK_8_15, align 4
  %39 = load i64, i64* %12, align 8
  %40 = and i64 %39, 255
  %41 = call i32 @adm1026_write_value(%struct.i2c_client* %37, i32 %38, i64 %40)
  %42 = load i64, i64* %12, align 8
  %43 = ashr i64 %42, 1
  %44 = and i64 %43, 128
  %45 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %46 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 24
  %49 = and i32 %48, 127
  %50 = sext i32 %49 to i64
  %51 = or i64 %44, %50
  store i64 %51, i64* %12, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %53 = load i32, i32* @ADM1026_REG_MASK1, align 4
  %54 = load i64, i64* %12, align 8
  %55 = and i64 %54, 255
  %56 = call i32 @adm1026_write_value(%struct.i2c_client* %52, i32 %53, i64 %55)
  %57 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %58 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %57, i32 0, i32 2
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i64, i64* %8, align 8
  ret i64 %60
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adm1026_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adm1026_write_value(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
