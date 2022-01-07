; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip32/extr_ip32-reset.c_debounce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip32/extr_ip32-reset.c_debounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@RTC_INTR_FLAGS = common dso_local global i32 0, align 4
@RTC_REG_A = common dso_local global i32 0, align 4
@DS_REGA_DV0 = common dso_local global i8 0, align 1
@DS_B1_XCTRL4A = common dso_local global i32 0, align 4
@DS_XCTRL4A_IFS = common dso_local global i8 0, align 1
@RTC_IRQF = common dso_local global i8 0, align 1
@jiffies = common dso_local global i64 0, align 8
@debounce_timer = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@has_panicked = common dso_local global i64 0, align 8
@MACEISA_RTC_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @debounce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debounce(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i64 %0, i64* %2, align 8
  %6 = load i32, i32* @RTC_INTR_FLAGS, align 4
  %7 = call zeroext i8 @CMOS_READ(i32 %6)
  store i8 %7, i8* %4, align 1
  %8 = load i32, i32* @RTC_REG_A, align 4
  %9 = call zeroext i8 @CMOS_READ(i32 %8)
  store i8 %9, i8* %3, align 1
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @DS_REGA_DV0, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %11, %13
  %15 = trunc i32 %14 to i8
  %16 = load i32, i32* @RTC_REG_A, align 4
  %17 = call i32 @CMOS_WRITE(i8 zeroext %15, i32 %16)
  %18 = call i32 (...) @wbflush()
  %19 = load i32, i32* @DS_B1_XCTRL4A, align 4
  %20 = call zeroext i8 @CMOS_READ(i32 %19)
  store i8 %20, i8* %5, align 1
  %21 = load i8, i8* %5, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @DS_XCTRL4A_IFS, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %1
  %28 = load i8, i8* %4, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @RTC_IRQF, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %27, %1
  %35 = load i64, i64* @jiffies, align 8
  %36 = add nsw i64 %35, 50
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @debounce_timer, i32 0, i32 0), align 8
  %37 = call i32 @add_timer(%struct.TYPE_3__* @debounce_timer)
  %38 = load i8, i8* %5, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @DS_XCTRL4A_IFS, align 1
  %41 = zext i8 %40 to i32
  %42 = xor i32 %41, -1
  %43 = and i32 %39, %42
  %44 = trunc i32 %43 to i8
  %45 = load i32, i32* @DS_B1_XCTRL4A, align 4
  %46 = call i32 @CMOS_WRITE(i8 zeroext %44, i32 %45)
  %47 = load i8, i8* %3, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @DS_REGA_DV0, align 1
  %50 = zext i8 %49 to i32
  %51 = xor i32 %50, -1
  %52 = and i32 %48, %51
  %53 = trunc i32 %52 to i8
  %54 = load i32, i32* @RTC_REG_A, align 4
  %55 = call i32 @CMOS_WRITE(i8 zeroext %53, i32 %54)
  br label %73

56:                                               ; preds = %27
  %57 = load i8, i8* %3, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* @DS_REGA_DV0, align 1
  %60 = zext i8 %59 to i32
  %61 = xor i32 %60, -1
  %62 = and i32 %58, %61
  %63 = trunc i32 %62 to i8
  %64 = load i32, i32* @RTC_REG_A, align 4
  %65 = call i32 @CMOS_WRITE(i8 zeroext %63, i32 %64)
  %66 = load i64, i64* @has_panicked, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = call i32 @ip32_machine_restart(i32* null)
  br label %70

70:                                               ; preds = %68, %56
  %71 = load i32, i32* @MACEISA_RTC_IRQ, align 4
  %72 = call i32 @enable_irq(i32 %71)
  br label %73

73:                                               ; preds = %70, %34
  ret void
}

declare dso_local zeroext i8 @CMOS_READ(i32) #1

declare dso_local i32 @CMOS_WRITE(i8 zeroext, i32) #1

declare dso_local i32 @wbflush(...) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @ip32_machine_restart(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
