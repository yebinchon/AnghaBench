; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_thmc50.c_thmc50_init_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_thmc50.c_thmc50_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.thmc50_data = type { i32, i64, i32 }

@THMC50_REG_ANALOG_OUT = common dso_local global i32 0, align 4
@THMC50_REG_CONF = common dso_local global i32 0, align 4
@adm1022 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @thmc50_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thmc50_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.thmc50_data*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.thmc50_data* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.thmc50_data* %6, %struct.thmc50_data** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = load i32, i32* @THMC50_REG_ANALOG_OUT, align 4
  %9 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %7, i32 %8)
  %10 = ptrtoint i8* %9 to i32
  %11 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %12 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %14 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %19 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = load i32, i32* @THMC50_REG_ANALOG_OUT, align 4
  %22 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %23 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %20, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %28 = load i32, i32* @THMC50_REG_CONF, align 4
  %29 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %27, i32 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %34 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @adm1022, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 128
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.thmc50_data*, %struct.thmc50_data** %3, align 8
  %44 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %43, i32 0, i32 2
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %38, %26
  %46 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %47 = load i32, i32* @THMC50_REG_CONF, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %46, i32 %47, i32 %48)
  ret void
}

declare dso_local %struct.thmc50_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
