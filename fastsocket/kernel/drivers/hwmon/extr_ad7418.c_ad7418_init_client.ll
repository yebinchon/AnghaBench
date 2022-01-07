; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ad7418.c_ad7418_init_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ad7418.c_ad7418_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ad7418_data = type { i64 }

@AD7418_REG_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cannot read configuration register\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"configuring for mode 1\0A\00", align 1
@ad7417 = common dso_local global i64 0, align 8
@ad7418 = common dso_local global i64 0, align 8
@AD7418_REG_CONF2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @ad7418_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad7418_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.ad7418_data*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.ad7418_data* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.ad7418_data* %6, %struct.ad7418_data** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = load i32, i32* @AD7418_REG_CONF, align 4
  %9 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %41

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = call i32 @dev_info(i32* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = load i32, i32* @AD7418_REG_CONF, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 254
  %24 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %20, i32 %21, i32 %23)
  %25 = load %struct.ad7418_data*, %struct.ad7418_data** %3, align 8
  %26 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ad7417, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %16
  %31 = load %struct.ad7418_data*, %struct.ad7418_data** %3, align 8
  %32 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ad7418, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30, %16
  %37 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %38 = load i32, i32* @AD7418_REG_CONF2, align 4
  %39 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %36, %30
  br label %41

41:                                               ; preds = %40, %12
  ret void
}

declare dso_local %struct.ad7418_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
