; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ds1621.c_ds1621_init_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ds1621.c_ds1621_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@DS1621_REG_CONF = common dso_local global i32 0, align 4
@DS1621_REG_CONFIG_1SHOT = common dso_local global i32 0, align 4
@polarity = common dso_local global i32 0, align 4
@DS1621_REG_CONFIG_POLARITY = common dso_local global i32 0, align 4
@DS1621_COM_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @ds1621_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1621_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = load i32, i32* @DS1621_REG_CONF, align 4
  %7 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @DS1621_REG_CONFIG_1SHOT, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @polarity, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @DS1621_REG_CONFIG_POLARITY, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  br label %27

19:                                               ; preds = %1
  %20 = load i32, i32* @polarity, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @DS1621_REG_CONFIG_POLARITY, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %19
  br label %27

27:                                               ; preds = %26, %14
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %33 = load i32, i32* @DS1621_REG_CONF, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %38 = load i32, i32* @DS1621_COM_START, align 4
  %39 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %37, i32 %38)
  ret void
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
