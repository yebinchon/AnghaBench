; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_i2c.c_i2c_outbyte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_i2c.c_i2c_outbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_DATA_HIGH = common dso_local global i32 0, align 4
@I2C_DATA_LOW = common dso_local global i32 0, align 4
@CLOCK_LOW_TIME = common dso_local global i32 0, align 4
@I2C_CLOCK_HIGH = common dso_local global i32 0, align 4
@CLOCK_HIGH_TIME = common dso_local global i32 0, align 4
@I2C_CLOCK_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2c_outbyte(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %4 = call i32 (...) @i2c_dir_out()
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %39

8:                                                ; preds = %5
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 128
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @I2C_DATA_HIGH, align 4
  %15 = call i32 @i2c_data(i32 %14)
  br label %19

16:                                               ; preds = %8
  %17 = load i32, i32* @I2C_DATA_LOW, align 4
  %18 = call i32 @i2c_data(i32 %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @CLOCK_LOW_TIME, align 4
  %21 = sdiv i32 %20, 2
  %22 = call i32 @i2c_delay(i32 %21)
  %23 = load i32, i32* @I2C_CLOCK_HIGH, align 4
  %24 = call i32 @i2c_clk(i32 %23)
  %25 = load i32, i32* @CLOCK_HIGH_TIME, align 4
  %26 = call i32 @i2c_delay(i32 %25)
  %27 = load i32, i32* @I2C_CLOCK_LOW, align 4
  %28 = call i32 @i2c_clk(i32 %27)
  %29 = load i32, i32* @CLOCK_LOW_TIME, align 4
  %30 = sdiv i32 %29, 2
  %31 = call i32 @i2c_delay(i32 %30)
  %32 = load i8, i8* %2, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 1
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %2, align 1
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %5

39:                                               ; preds = %5
  %40 = load i32, i32* @I2C_DATA_LOW, align 4
  %41 = call i32 @i2c_data(i32 %40)
  %42 = load i32, i32* @CLOCK_LOW_TIME, align 4
  %43 = sdiv i32 %42, 2
  %44 = call i32 @i2c_delay(i32 %43)
  %45 = call i32 (...) @i2c_dir_in()
  ret void
}

declare dso_local i32 @i2c_dir_out(...) #1

declare dso_local i32 @i2c_data(i32) #1

declare dso_local i32 @i2c_delay(i32) #1

declare dso_local i32 @i2c_clk(i32) #1

declare dso_local i32 @i2c_dir_in(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
