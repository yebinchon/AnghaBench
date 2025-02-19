; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_pm24xx.c_omap2_fclks_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_pm24xx.c_omap2_fclks_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CORE_MOD = common dso_local global i32 0, align 4
@CM_FCLKEN1 = common dso_local global i32 0, align 4
@OMAP24XX_CM_FCLKEN2 = common dso_local global i32 0, align 4
@OMAP24XX_EN_UART1 = common dso_local global i32 0, align 4
@OMAP24XX_EN_UART2 = common dso_local global i32 0, align 4
@OMAP24XX_EN_UART3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @omap2_fclks_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_fclks_active() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @CORE_MOD, align 4
  %5 = load i32, i32* @CM_FCLKEN1, align 4
  %6 = call i32 @cm_read_mod_reg(i32 %4, i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* @CORE_MOD, align 4
  %8 = load i32, i32* @OMAP24XX_CM_FCLKEN2, align 4
  %9 = call i32 @cm_read_mod_reg(i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @OMAP24XX_EN_UART1, align 4
  %11 = load i32, i32* @OMAP24XX_EN_UART2, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* @OMAP24XX_EN_UART3, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %26

25:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @cm_read_mod_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
