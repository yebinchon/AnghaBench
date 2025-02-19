; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_i2c_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_i2c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_I2CCTL = common dso_local global i32 0, align 4
@IXGBE_I2C_T_SU_STA = common dso_local global i32 0, align 4
@IXGBE_I2C_T_HD_STA = common dso_local global i32 0, align 4
@IXGBE_I2C_T_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*)* @ixgbe_i2c_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_i2c_start(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = load i32, i32* @IXGBE_I2CCTL, align 4
  %6 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = call i32 @ixgbe_set_i2c_data(%struct.ixgbe_hw* %7, i32* %3, i32 1)
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = call i32 @ixgbe_raise_i2c_clk(%struct.ixgbe_hw* %9, i32* %3)
  %11 = load i32, i32* @IXGBE_I2C_T_SU_STA, align 4
  %12 = call i32 @udelay(i32 %11)
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = call i32 @ixgbe_set_i2c_data(%struct.ixgbe_hw* %13, i32* %3, i32 0)
  %15 = load i32, i32* @IXGBE_I2C_T_HD_STA, align 4
  %16 = call i32 @udelay(i32 %15)
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %18 = call i32 @ixgbe_lower_i2c_clk(%struct.ixgbe_hw* %17, i32* %3)
  %19 = load i32, i32* @IXGBE_I2C_T_LOW, align 4
  %20 = call i32 @udelay(i32 %19)
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_set_i2c_data(%struct.ixgbe_hw*, i32*, i32) #1

declare dso_local i32 @ixgbe_raise_i2c_clk(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ixgbe_lower_i2c_clk(%struct.ixgbe_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
