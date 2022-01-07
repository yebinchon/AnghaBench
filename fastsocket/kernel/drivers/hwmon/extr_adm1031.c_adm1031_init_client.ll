; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_adm1031_init_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_adm1031_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adm1031_data = type { i64 }

@ADM1031_CONF2_PWM1_ENABLE = common dso_local global i32 0, align 4
@ADM1031_CONF2_TACH1_ENABLE = common dso_local global i32 0, align 4
@adm1031 = common dso_local global i64 0, align 8
@ADM1031_CONF2_PWM2_ENABLE = common dso_local global i32 0, align 4
@ADM1031_CONF2_TACH2_ENABLE = common dso_local global i32 0, align 4
@ADM1031_REG_CONF2 = common dso_local global i32 0, align 4
@ADM1031_REG_CONF1 = common dso_local global i32 0, align 4
@ADM1031_CONF1_MONITOR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @adm1031_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm1031_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.adm1031_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call %struct.adm1031_data* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.adm1031_data* %7, %struct.adm1031_data** %5, align 8
  %8 = load i32, i32* @ADM1031_CONF2_PWM1_ENABLE, align 4
  %9 = load i32, i32* @ADM1031_CONF2_TACH1_ENABLE, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.adm1031_data*, %struct.adm1031_data** %5, align 8
  %12 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @adm1031, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @ADM1031_CONF2_PWM2_ENABLE, align 4
  %18 = load i32, i32* @ADM1031_CONF2_TACH2_ENABLE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %24 = load i32, i32* @ADM1031_REG_CONF2, align 4
  %25 = call i32 @adm1031_read_value(%struct.i2c_client* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %33 = load i32, i32* @ADM1031_REG_CONF2, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @adm1031_write_value(%struct.i2c_client* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %31, %22
  %39 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %40 = load i32, i32* @ADM1031_REG_CONF1, align 4
  %41 = call i32 @adm1031_read_value(%struct.i2c_client* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @ADM1031_CONF1_MONITOR_ENABLE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %49 = load i32, i32* @ADM1031_REG_CONF1, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @ADM1031_CONF1_MONITOR_ENABLE, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @adm1031_write_value(%struct.i2c_client* %48, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %47, %38
  ret void
}

declare dso_local %struct.adm1031_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @adm1031_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @adm1031_write_value(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
