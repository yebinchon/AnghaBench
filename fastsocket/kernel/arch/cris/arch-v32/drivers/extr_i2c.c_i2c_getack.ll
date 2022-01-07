; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_i2c.c_i2c_getack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_i2c.c_i2c_getack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_DATA_HIGH = common dso_local global i32 0, align 4
@CLOCK_HIGH_TIME = common dso_local global i32 0, align 4
@I2C_CLOCK_HIGH = common dso_local global i32 0, align 4
@I2C_CLOCK_LOW = common dso_local global i32 0, align 4
@CLOCK_LOW_TIME = common dso_local global i32 0, align 4
@I2C_DATA_LOW = common dso_local global i32 0, align 4

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
  %11 = load i32, i32* @CLOCK_HIGH_TIME, align 4
  %12 = sdiv i32 %11, 2
  %13 = call i32 @i2c_delay(i32 %12)
  %14 = call i64 (...) @i2c_getbit()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %16, %0
  %18 = load i32, i32* @CLOCK_HIGH_TIME, align 4
  %19 = sdiv i32 %18, 2
  %20 = call i32 @i2c_delay(i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = call i64 (...) @i2c_getbit()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 1, i32* %1, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* @CLOCK_HIGH_TIME, align 4
  %29 = sdiv i32 %28, 2
  %30 = call i32 @i2c_delay(i32 %29)
  br label %31

31:                                               ; preds = %27, %17
  %32 = load i32, i32* @I2C_CLOCK_LOW, align 4
  %33 = call i32 @i2c_clk(i32 %32)
  %34 = load i32, i32* @CLOCK_HIGH_TIME, align 4
  %35 = sdiv i32 %34, 4
  %36 = call i32 @i2c_delay(i32 %35)
  %37 = call i32 (...) @i2c_dir_out()
  %38 = load i32, i32* @I2C_DATA_HIGH, align 4
  %39 = call i32 @i2c_data(i32 %38)
  %40 = load i32, i32* @CLOCK_LOW_TIME, align 4
  %41 = sdiv i32 %40, 2
  %42 = call i32 @i2c_delay(i32 %41)
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @i2c_dir_out(...) #1

declare dso_local i32 @i2c_data(i32) #1

declare dso_local i32 @i2c_dir_in(...) #1

declare dso_local i32 @i2c_delay(i32) #1

declare dso_local i32 @i2c_clk(i32) #1

declare dso_local i64 @i2c_getbit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
