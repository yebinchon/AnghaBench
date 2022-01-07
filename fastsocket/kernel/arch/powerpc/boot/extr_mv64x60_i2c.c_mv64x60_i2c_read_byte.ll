; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mv64x60_i2c.c_mv64x60_i2c_read_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mv64x60_i2c.c_mv64x60_i2c_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctlr_base = common dso_local global i64 0, align 8
@MV64x60_I2C_REG_CONTROL = common dso_local global i64 0, align 8
@MV64x60_I2C_REG_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mv64x60_i2c_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv64x60_i2c_read_byte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* @ctlr_base, align 8
  %7 = load i64, i64* @MV64x60_I2C_REG_CONTROL, align 8
  %8 = add nsw i64 %6, %7
  %9 = inttoptr i64 %8 to i32*
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 255
  %12 = call i32 @out_le32(i32* %9, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @mv64x60_i2c_wait_for_status(i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load i64, i64* @ctlr_base, align 8
  %19 = load i64, i64* @MV64x60_I2C_REG_DATA, align 8
  %20 = add nsw i64 %18, %19
  %21 = inttoptr i64 %20 to i32*
  %22 = call i32 @in_le32(i32* %21)
  %23 = and i32 %22, 255
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %17, %16
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i64 @mv64x60_i2c_wait_for_status(i32) #1

declare dso_local i32 @in_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
