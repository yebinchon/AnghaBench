; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mv64x60_i2c.c_mv64x60_i2c_write_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mv64x60_i2c.c_mv64x60_i2c_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctlr_base = common dso_local global i64 0, align 8
@MV64x60_I2C_REG_DATA = common dso_local global i64 0, align 8
@MV64x60_I2C_REG_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @mv64x60_i2c_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv64x60_i2c_write_byte(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* @ctlr_base, align 8
  %8 = load i64, i64* @MV64x60_I2C_REG_DATA, align 8
  %9 = add nsw i64 %7, %8
  %10 = inttoptr i64 %9 to i32*
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 255
  %13 = call i32 @out_le32(i32* %10, i32 %12)
  %14 = load i64, i64* @ctlr_base, align 8
  %15 = load i64, i64* @MV64x60_I2C_REG_CONTROL, align 8
  %16 = add nsw i64 %14, %15
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 255
  %20 = call i32 @out_le32(i32* %17, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @mv64x60_i2c_wait_for_status(i32 %21)
  ret i32 %22
}

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i32 @mv64x60_i2c_wait_for_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
