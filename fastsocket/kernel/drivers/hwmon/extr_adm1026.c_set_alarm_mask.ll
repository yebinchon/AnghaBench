; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1026.c_set_alarm_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1026.c_set_alarm_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.adm1026_data = type { i32, i32, i32 }

@ADM1026_REG_MASK1 = common dso_local global i32 0, align 4
@ADM1026_REG_MASK2 = common dso_local global i32 0, align 4
@ADM1026_REG_MASK3 = common dso_local global i32 0, align 4
@ADM1026_REG_MASK4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_alarm_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_alarm_mask(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %23 = and i32 %22, 2147483647
  %24 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %25 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %27 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %30 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 65536
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 -2147483648, i32 0
  %36 = or i32 %28, %35
  %37 = zext i32 %36 to i64
  store i64 %37, i64* %12, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %39 = load i32, i32* @ADM1026_REG_MASK1, align 4
  %40 = load i64, i64* %12, align 8
  %41 = and i64 %40, 255
  %42 = call i32 @adm1026_write_value(%struct.i2c_client* %38, i32 %39, i64 %41)
  %43 = load i64, i64* %12, align 8
  %44 = lshr i64 %43, 8
  store i64 %44, i64* %12, align 8
  %45 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %46 = load i32, i32* @ADM1026_REG_MASK2, align 4
  %47 = load i64, i64* %12, align 8
  %48 = and i64 %47, 255
  %49 = call i32 @adm1026_write_value(%struct.i2c_client* %45, i32 %46, i64 %48)
  %50 = load i64, i64* %12, align 8
  %51 = lshr i64 %50, 8
  store i64 %51, i64* %12, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %53 = load i32, i32* @ADM1026_REG_MASK3, align 4
  %54 = load i64, i64* %12, align 8
  %55 = and i64 %54, 255
  %56 = call i32 @adm1026_write_value(%struct.i2c_client* %52, i32 %53, i64 %55)
  %57 = load i64, i64* %12, align 8
  %58 = lshr i64 %57, 8
  store i64 %58, i64* %12, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %60 = load i32, i32* @ADM1026_REG_MASK4, align 4
  %61 = load i64, i64* %12, align 8
  %62 = and i64 %61, 255
  %63 = call i32 @adm1026_write_value(%struct.i2c_client* %59, i32 %60, i64 %62)
  %64 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %65 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %64, i32 0, i32 2
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i64, i64* %8, align 8
  ret i64 %67
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
