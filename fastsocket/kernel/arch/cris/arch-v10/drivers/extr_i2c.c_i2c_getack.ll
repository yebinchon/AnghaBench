; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_i2c.c_i2c_getack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_i2c.c_i2c_getack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_DATA_HIGH = common dso_local global i32 0, align 4
@CLOCK_HIGH_TIME = common dso_local global i32 0, align 4
@I2C_CLOCK_HIGH = common dso_local global i32 0, align 4
@I2C_DATA_LOW = common dso_local global i32 0, align 4
@I2C_CLOCK_LOW = common dso_local global i32 0, align 4
@CLOCK_LOW_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_getack() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %2 = call i32 (...) @i2c_dir_out()
  %3 = load i32, i32* @I2C_DATA_HIGH, align 4
  %4 = call i32 @i2c_data(i32 %3)
  %5 = call i32 (...) @i2c_dir_in()
  %6 = load i32, i32* @CLOCK_HIGH_TIME, align 4
  %7 = sdiv i32 %6, 4
  %8 = call i32 @i2c_delay(i32 %7)
  %9 = load i32, i32* @I2C_CLOCK_HIGH, align 4
  %10 = call i32 @i2c_clk(i32 %9)
  %11 = call i32 @i2c_clk(i32 1)
  %12 = call i32 @i2c_data(i32 1)
  %13 = call i32 @i2c_data(i32 1)
  %14 = call i32 (...) @i2c_disable()
  %15 = call i32 (...) @i2c_dir_in()
  %16 = load i32, i32* @CLOCK_HIGH_TIME, align 4
  %17 = sdiv i32 %16, 2
  %18 = call i32 @i2c_delay(i32 %17)
  %19 = call i64 (...) @i2c_getbit()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %21, %0
  %23 = load i32, i32* @CLOCK_HIGH_TIME, align 4
  %24 = sdiv i32 %23, 2
  %25 = call i32 @i2c_delay(i32 %24)
  %26 = load i32, i32* %1, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %22
  %29 = call i64 (...) @i2c_getbit()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 1, i32* %1, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* @CLOCK_HIGH_TIME, align 4
  %34 = sdiv i32 %33, 2
  %35 = call i32 @i2c_delay(i32 %34)
  br label %36

36:                                               ; preds = %32, %22
  %37 = load i32, i32* @I2C_DATA_LOW, align 4
  %38 = call i32 @i2c_data(i32 %37)
  %39 = call i32 (...) @i2c_enable()
  %40 = call i32 (...) @i2c_dir_out()
  %41 = load i32, i32* @I2C_CLOCK_LOW, align 4
  %42 = call i32 @i2c_clk(i32 %41)
  %43 = load i32, i32* @CLOCK_HIGH_TIME, align 4
  %44 = sdiv i32 %43, 4
  %45 = call i32 @i2c_delay(i32 %44)
  %46 = call i32 (...) @i2c_dir_out()
  %47 = load i32, i32* @I2C_DATA_HIGH, align 4
  %48 = call i32 @i2c_data(i32 %47)
  %49 = load i32, i32* @CLOCK_LOW_TIME, align 4
  %50 = sdiv i32 %49, 2
  %51 = call i32 @i2c_delay(i32 %50)
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @i2c_dir_out(...) #1

declare dso_local i32 @i2c_data(i32) #1

declare dso_local i32 @i2c_dir_in(...) #1

declare dso_local i32 @i2c_delay(i32) #1

declare dso_local i32 @i2c_clk(i32) #1

declare dso_local i32 @i2c_disable(...) #1

declare dso_local i64 @i2c_getbit(...) #1

declare dso_local i32 @i2c_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
