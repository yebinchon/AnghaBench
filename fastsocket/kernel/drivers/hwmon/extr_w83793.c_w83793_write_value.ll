; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_w83793_write_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_w83793_write_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.w83793_data = type { i32 }

@W83793_REG_BANKSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"set bank to %d failed, fall back to bank %d, write reg 0x%x error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @w83793_write_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83793_write_value(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.w83793_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.w83793_data* %11, %struct.w83793_data** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.w83793_data*, %struct.w83793_data** %7, align 8
  %15 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 252
  %18 = load i32, i32* %9, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %9, align 4
  %20 = load %struct.w83793_data*, %struct.w83793_data** %7, align 8
  %21 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %3
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load i32, i32* @W83793_REG_BANKSEL, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %26, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.w83793_data*, %struct.w83793_data** %7, align 8
  %34 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %44

35:                                               ; preds = %25
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.w83793_data*, %struct.w83793_data** %7, align 8
  %40 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41, i32 %42)
  br label %51

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 255
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %46, i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %45, %35
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
