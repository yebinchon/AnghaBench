; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_ixdp2x01.c_ixdp2x01_flash_bank_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_ixdp2x01.c_ixdp2x01_flash_bank_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IXDP2X01_CPLD_FLASH_REG = common dso_local global i32 0, align 4
@IXDP2X01_FLASH_WINDOW_BITS = common dso_local global i64 0, align 8
@IXDP2X01_CPLD_FLASH_INTERN = common dso_local global i64 0, align 8
@IXDP2X01_FLASH_WINDOW_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @ixdp2x01_flash_bank_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixdp2x01_flash_bank_setup(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @IXDP2X01_CPLD_FLASH_REG, align 4
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @IXDP2X01_FLASH_WINDOW_BITS, align 8
  %6 = lshr i64 %4, %5
  %7 = load i64, i64* @IXDP2X01_CPLD_FLASH_INTERN, align 8
  %8 = or i64 %6, %7
  %9 = call i32 @ixp2000_reg_wrb(i32 %3, i64 %8)
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @IXDP2X01_FLASH_WINDOW_MASK, align 8
  %12 = and i64 %10, %11
  ret i64 %12
}

declare dso_local i32 @ixp2000_reg_wrb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
