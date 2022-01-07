; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_pm34xx.c_omap3_fclks_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_pm34xx.c_omap3_fclks_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CORE_MOD = common dso_local global i32 0, align 4
@CM_FCLKEN1 = common dso_local global i32 0, align 4
@OMAP3430_REV_ES1_0 = common dso_local global i64 0, align 8
@OMAP3430ES2_CM_FCLKEN3 = common dso_local global i32 0, align 4
@OMAP3430ES2_SGX_MOD = common dso_local global i32 0, align 4
@CM_FCLKEN = common dso_local global i32 0, align 4
@OMAP3430ES2_USBHOST_MOD = common dso_local global i32 0, align 4
@GFX_MOD = common dso_local global i32 0, align 4
@OMAP3430_DSS_MOD = common dso_local global i32 0, align 4
@OMAP3430_CAM_MOD = common dso_local global i32 0, align 4
@OMAP3430_PER_MOD = common dso_local global i32 0, align 4
@OMAP3430_EN_UART1 = common dso_local global i32 0, align 4
@OMAP3430_EN_UART2 = common dso_local global i32 0, align 4
@OMAP3430_EN_UART3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @omap3_fclks_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3_fclks_active() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @CORE_MOD, align 4
  %10 = load i32, i32* @CM_FCLKEN1, align 4
  %11 = call i32 @cm_read_mod_reg(i32 %9, i32 %10)
  store i32 %11, i32* %2, align 4
  %12 = call i64 (...) @omap_rev()
  %13 = load i64, i64* @OMAP3430_REV_ES1_0, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %0
  %16 = load i32, i32* @CORE_MOD, align 4
  %17 = load i32, i32* @OMAP3430ES2_CM_FCLKEN3, align 4
  %18 = call i32 @cm_read_mod_reg(i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @OMAP3430ES2_SGX_MOD, align 4
  %20 = load i32, i32* @CM_FCLKEN, align 4
  %21 = call i32 @cm_read_mod_reg(i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @OMAP3430ES2_USBHOST_MOD, align 4
  %23 = load i32, i32* @CM_FCLKEN, align 4
  %24 = call i32 @cm_read_mod_reg(i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  br label %29

25:                                               ; preds = %0
  %26 = load i32, i32* @GFX_MOD, align 4
  %27 = load i32, i32* @OMAP3430ES2_CM_FCLKEN3, align 4
  %28 = call i32 @cm_read_mod_reg(i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %15
  %30 = load i32, i32* @OMAP3430_DSS_MOD, align 4
  %31 = load i32, i32* @CM_FCLKEN, align 4
  %32 = call i32 @cm_read_mod_reg(i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @OMAP3430_CAM_MOD, align 4
  %34 = load i32, i32* @CM_FCLKEN, align 4
  %35 = call i32 @cm_read_mod_reg(i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @OMAP3430_PER_MOD, align 4
  %37 = load i32, i32* @CM_FCLKEN, align 4
  %38 = call i32 @cm_read_mod_reg(i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @OMAP3430_EN_UART1, align 4
  %40 = load i32, i32* @OMAP3430_EN_UART2, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %2, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* @OMAP3430_EN_UART3, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %29
  store i32 1, i32* %1, align 4
  br label %65

64:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  br label %65

65:                                               ; preds = %64, %63
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i32 @cm_read_mod_reg(i32, i32) #1

declare dso_local i64 @omap_rev(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
