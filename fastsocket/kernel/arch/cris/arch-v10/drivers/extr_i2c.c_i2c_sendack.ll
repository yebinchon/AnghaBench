; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_i2c.c_i2c_sendack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_i2c.c_i2c_sendack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOCK_LOW_TIME = common dso_local global i32 0, align 4
@I2C_DATA_LOW = common dso_local global i32 0, align 4
@CLOCK_HIGH_TIME = common dso_local global i32 0, align 4
@I2C_CLOCK_HIGH = common dso_local global i32 0, align 4
@I2C_CLOCK_LOW = common dso_local global i32 0, align 4
@I2C_DATA_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2c_sendack() #0 {
  %1 = load i32, i32* @CLOCK_LOW_TIME, align 4
  %2 = call i32 @i2c_delay(i32 %1)
  %3 = call i32 (...) @i2c_dir_out()
  %4 = load i32, i32* @I2C_DATA_LOW, align 4
  %5 = call i32 @i2c_data(i32 %4)
  %6 = load i32, i32* @CLOCK_HIGH_TIME, align 4
  %7 = sdiv i32 %6, 6
  %8 = call i32 @i2c_delay(i32 %7)
  %9 = load i32, i32* @I2C_CLOCK_HIGH, align 4
  %10 = call i32 @i2c_clk(i32 %9)
  %11 = load i32, i32* @CLOCK_HIGH_TIME, align 4
  %12 = call i32 @i2c_delay(i32 %11)
  %13 = load i32, i32* @I2C_CLOCK_LOW, align 4
  %14 = call i32 @i2c_clk(i32 %13)
  %15 = load i32, i32* @CLOCK_LOW_TIME, align 4
  %16 = sdiv i32 %15, 6
  %17 = call i32 @i2c_delay(i32 %16)
  %18 = load i32, i32* @I2C_DATA_HIGH, align 4
  %19 = call i32 @i2c_data(i32 %18)
  %20 = load i32, i32* @CLOCK_LOW_TIME, align 4
  %21 = call i32 @i2c_delay(i32 %20)
  %22 = call i32 (...) @i2c_dir_in()
  ret void
}

declare dso_local i32 @i2c_delay(i32) #1

declare dso_local i32 @i2c_dir_out(...) #1

declare dso_local i32 @i2c_data(i32) #1

declare dso_local i32 @i2c_clk(i32) #1

declare dso_local i32 @i2c_dir_in(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
