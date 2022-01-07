; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_board-sx1.c_sx1_setusbpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_board-sx1.c_sx1_setusbpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOFIA_I2C_ADDR = common dso_local global i32 0, align 4
@SOFIA_POWER1_REG = common dso_local global i32 0, align 4
@SOFIA_USB_POWER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sx1_setusbpower(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* @SOFIA_I2C_ADDR, align 4
  %7 = load i32, i32* @SOFIA_POWER1_REG, align 4
  %8 = call i32 @sx1_i2c_read_byte(i32 %6, i32 %7, i64* %5)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i64, i64* @SOFIA_USB_POWER, align 8
  %18 = load i64, i64* %5, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %5, align 8
  br label %25

20:                                               ; preds = %13
  %21 = load i64, i64* @SOFIA_USB_POWER, align 8
  %22 = xor i64 %21, -1
  %23 = load i64, i64* %5, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i32, i32* @SOFIA_I2C_ADDR, align 4
  %27 = load i32, i32* @SOFIA_POWER1_REG, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @sx1_i2c_write_byte(i32 %26, i32 %27, i64 %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @sx1_i2c_read_byte(i32, i32, i64*) #1

declare dso_local i32 @sx1_i2c_write_byte(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
