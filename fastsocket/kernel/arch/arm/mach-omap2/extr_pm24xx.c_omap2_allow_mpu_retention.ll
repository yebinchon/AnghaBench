; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_pm24xx.c_omap2_allow_mpu_retention.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_pm24xx.c_omap2_allow_mpu_retention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CORE_MOD = common dso_local global i32 0, align 4
@CM_FCLKEN1 = common dso_local global i32 0, align 4
@OMAP2420_EN_MMC = common dso_local global i32 0, align 4
@OMAP24XX_EN_UART2 = common dso_local global i32 0, align 4
@OMAP24XX_EN_UART1 = common dso_local global i32 0, align 4
@OMAP24XX_EN_MCSPI2 = common dso_local global i32 0, align 4
@OMAP24XX_EN_MCSPI1 = common dso_local global i32 0, align 4
@OMAP24XX_EN_DSS1 = common dso_local global i32 0, align 4
@OMAP24XX_CM_FCLKEN2 = common dso_local global i32 0, align 4
@OMAP24XX_EN_UART3 = common dso_local global i32 0, align 4
@sti_console_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @omap2_allow_mpu_retention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_allow_mpu_retention() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @CORE_MOD, align 4
  %4 = load i32, i32* @CM_FCLKEN1, align 4
  %5 = call i32 @cm_read_mod_reg(i32 %3, i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @OMAP2420_EN_MMC, align 4
  %8 = load i32, i32* @OMAP24XX_EN_UART2, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @OMAP24XX_EN_UART1, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @OMAP24XX_EN_MCSPI2, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @OMAP24XX_EN_MCSPI1, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @OMAP24XX_EN_DSS1, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %6, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %35

21:                                               ; preds = %0
  %22 = load i32, i32* @CORE_MOD, align 4
  %23 = load i32, i32* @OMAP24XX_CM_FCLKEN2, align 4
  %24 = call i32 @cm_read_mod_reg(i32 %22, i32 %23)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @OMAP24XX_EN_UART3, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %35

30:                                               ; preds = %21
  %31 = load i64, i64* @sti_console_enabled, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %1, align 4
  br label %35

34:                                               ; preds = %30
  store i32 1, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %33, %29, %20
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @cm_read_mod_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
