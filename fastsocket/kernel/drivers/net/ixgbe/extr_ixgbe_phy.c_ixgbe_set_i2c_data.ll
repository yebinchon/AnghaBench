; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_set_i2c_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_set_i2c_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_I2C_DATA_OUT = common dso_local global i32 0, align 4
@IXGBE_I2CCTL = common dso_local global i32 0, align 4
@IXGBE_I2C_T_RISE = common dso_local global i64 0, align 8
@IXGBE_I2C_T_FALL = common dso_local global i64 0, align 8
@IXGBE_I2C_T_SU_DATA = common dso_local global i64 0, align 8
@IXGBE_ERR_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error - I2C data was not set to %X.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32*, i32)* @ixgbe_set_i2c_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_i2c_data(%struct.ixgbe_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, i32* @IXGBE_I2C_DATA_OUT, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %11
  store i32 %14, i32* %12, align 4
  br label %21

15:                                               ; preds = %3
  %16 = load i32, i32* @IXGBE_I2C_DATA_OUT, align 4
  %17 = xor i32 %16, -1
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %17
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %23 = load i32, i32* @IXGBE_I2CCTL, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %22, i32 %23, i32 %25)
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %28 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %27)
  %29 = load i64, i64* @IXGBE_I2C_T_RISE, align 8
  %30 = load i64, i64* @IXGBE_I2C_T_FALL, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* @IXGBE_I2C_T_SU_DATA, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @udelay(i64 %33)
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %36 = load i32, i32* @IXGBE_I2CCTL, align 4
  %37 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %35, i32 %36)
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @ixgbe_get_i2c_data(i32* %40)
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %21
  %44 = load i32, i32* @IXGBE_ERR_I2C, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @hw_dbg(%struct.ixgbe_hw* %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43, %21
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_get_i2c_data(i32*) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
