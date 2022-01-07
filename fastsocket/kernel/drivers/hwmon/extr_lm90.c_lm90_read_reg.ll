; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_lm90_read_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_lm90_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }

@I2C_CLIENT_PEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Register %#02x read failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32*)* @lm90_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_read_reg(%struct.i2c_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_CLIENT_PEC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @adm1032_write_byte(%struct.i2c_client* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %23 = call i32 @i2c_smbus_read_byte(%struct.i2c_client* %22)
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %21, %15
  br label %29

25:                                               ; preds = %3
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %24
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dev_warn(i32* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %42

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %32
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @adm1032_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
