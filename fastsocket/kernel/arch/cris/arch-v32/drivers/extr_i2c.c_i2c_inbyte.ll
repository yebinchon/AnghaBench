; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_i2c.c_i2c_inbyte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_i2c.c_i2c_inbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOCK_HIGH_TIME = common dso_local global i32 0, align 4
@CLOCK_LOW_TIME = common dso_local global i32 0, align 4
@I2C_CLOCK_HIGH = common dso_local global i32 0, align 4
@I2C_CLOCK_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @i2c_inbyte() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 0, i8* %1, align 1
  %3 = call i32 (...) @i2c_disable()
  %4 = call i32 (...) @i2c_dir_in()
  %5 = load i32, i32* @CLOCK_HIGH_TIME, align 4
  %6 = sdiv i32 %5, 2
  %7 = call i32 @i2c_delay(i32 %6)
  %8 = call zeroext i8 (...) @i2c_getbit()
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* %1, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %11, %9
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %1, align 1
  %14 = call i32 (...) @i2c_enable()
  %15 = load i32, i32* @CLOCK_LOW_TIME, align 4
  %16 = sdiv i32 %15, 2
  %17 = call i32 @i2c_delay(i32 %16)
  store i32 1, i32* %2, align 4
  br label %18

18:                                               ; preds = %49, %0
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  %22 = load i8, i8* %1, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 1
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %1, align 1
  %26 = load i32, i32* @I2C_CLOCK_HIGH, align 4
  %27 = call i32 @i2c_clk(i32 %26)
  %28 = load i32, i32* @CLOCK_HIGH_TIME, align 4
  %29 = call i32 @i2c_delay(i32 %28)
  %30 = load i32, i32* @I2C_CLOCK_LOW, align 4
  %31 = call i32 @i2c_clk(i32 %30)
  %32 = load i32, i32* @CLOCK_LOW_TIME, align 4
  %33 = call i32 @i2c_delay(i32 %32)
  %34 = call i32 (...) @i2c_disable()
  %35 = call i32 (...) @i2c_dir_in()
  %36 = load i32, i32* @CLOCK_HIGH_TIME, align 4
  %37 = sdiv i32 %36, 2
  %38 = call i32 @i2c_delay(i32 %37)
  %39 = call zeroext i8 (...) @i2c_getbit()
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* %1, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %1, align 1
  %45 = call i32 (...) @i2c_enable()
  %46 = load i32, i32* @CLOCK_LOW_TIME, align 4
  %47 = sdiv i32 %46, 2
  %48 = call i32 @i2c_delay(i32 %47)
  br label %49

49:                                               ; preds = %21
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %18

52:                                               ; preds = %18
  %53 = load i32, i32* @I2C_CLOCK_HIGH, align 4
  %54 = call i32 @i2c_clk(i32 %53)
  %55 = load i32, i32* @CLOCK_HIGH_TIME, align 4
  %56 = call i32 @i2c_delay(i32 %55)
  %57 = load i32, i32* @I2C_CLOCK_LOW, align 4
  %58 = call i32 @i2c_clk(i32 %57)
  %59 = load i8, i8* %1, align 1
  ret i8 %59
}

declare dso_local i32 @i2c_disable(...) #1

declare dso_local i32 @i2c_dir_in(...) #1

declare dso_local i32 @i2c_delay(i32) #1

declare dso_local zeroext i8 @i2c_getbit(...) #1

declare dso_local i32 @i2c_enable(...) #1

declare dso_local i32 @i2c_clk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
