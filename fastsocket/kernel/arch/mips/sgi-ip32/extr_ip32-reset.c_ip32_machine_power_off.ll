; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip32/extr_ip32-reset.c_ip32_machine_power_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip32/extr_ip32-reset.c_ip32_machine_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACEISA_RTC_IRQ = common dso_local global i32 0, align 4
@RTC_REG_A = common dso_local global i32 0, align 4
@DS_REGA_DV2 = common dso_local global i8 0, align 1
@DS_REGA_DV1 = common dso_local global i8 0, align 1
@DS_REGA_DV0 = common dso_local global i8 0, align 1
@DS_B1_XCTRL4B = common dso_local global i32 0, align 4
@DS_XCTRL4B_ABE = common dso_local global i8 0, align 1
@DS_XCTRL4B_KFE = common dso_local global i8 0, align 1
@DS_B1_XCTRL4A = common dso_local global i32 0, align 4
@DS_XCTRL4A_IFS = common dso_local global i8 0, align 1
@DS_XCTRL4A_PAB = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ip32_machine_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip32_machine_power_off() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = load i32, i32* @MACEISA_RTC_IRQ, align 4
  %5 = call i32 @disable_irq(i32 %4)
  %6 = load i32, i32* @RTC_REG_A, align 4
  %7 = call zeroext i8 @CMOS_READ(i32 %6)
  store i8 %7, i8* %1, align 1
  %8 = load i8, i8* @DS_REGA_DV2, align 1
  %9 = zext i8 %8 to i32
  %10 = xor i32 %9, -1
  %11 = load i8, i8* %1, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, %10
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %1, align 1
  %15 = load i8, i8* @DS_REGA_DV1, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* %1, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %18, %16
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %1, align 1
  %21 = load i8, i8* %1, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @DS_REGA_DV0, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = trunc i32 %25 to i8
  %27 = load i32, i32* @RTC_REG_A, align 4
  %28 = call i32 @CMOS_WRITE(i8 zeroext %26, i32 %27)
  %29 = call i32 (...) @wbflush()
  %30 = load i32, i32* @DS_B1_XCTRL4B, align 4
  %31 = call zeroext i8 @CMOS_READ(i32 %30)
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @DS_XCTRL4B_ABE, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %32, %34
  %36 = load i8, i8* @DS_XCTRL4B_KFE, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %3, align 1
  %40 = load i8, i8* %3, align 1
  %41 = load i32, i32* @DS_B1_XCTRL4B, align 4
  %42 = call i32 @CMOS_WRITE(i8 zeroext %40, i32 %41)
  %43 = load i32, i32* @DS_B1_XCTRL4A, align 4
  %44 = call zeroext i8 @CMOS_READ(i32 %43)
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @DS_XCTRL4A_IFS, align 1
  %47 = zext i8 %46 to i32
  %48 = xor i32 %47, -1
  %49 = and i32 %45, %48
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %2, align 1
  %51 = load i8, i8* %2, align 1
  %52 = load i32, i32* @DS_B1_XCTRL4A, align 4
  %53 = call i32 @CMOS_WRITE(i8 zeroext %51, i32 %52)
  %54 = call i32 (...) @wbflush()
  %55 = load i8, i8* %2, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @DS_XCTRL4A_PAB, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %56, %58
  %60 = trunc i32 %59 to i8
  %61 = load i32, i32* @DS_B1_XCTRL4A, align 4
  %62 = call i32 @CMOS_WRITE(i8 zeroext %60, i32 %61)
  %63 = load i8, i8* %1, align 1
  %64 = load i32, i32* @RTC_REG_A, align 4
  %65 = call i32 @CMOS_WRITE(i8 zeroext %63, i32 %64)
  %66 = call i32 (...) @wbflush()
  br label %67

67:                                               ; preds = %0, %67
  br label %67
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local zeroext i8 @CMOS_READ(i32) #1

declare dso_local i32 @CMOS_WRITE(i8 zeroext, i32) #1

declare dso_local i32 @wbflush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
