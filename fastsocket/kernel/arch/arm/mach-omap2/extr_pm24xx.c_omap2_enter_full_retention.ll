; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_pm24xx.c_omap2_enter_full_retention.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_pm24xx.c_omap2_enter_full_retention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@osc_ck = common dso_local global i32 0, align 4
@CORE_MOD = common dso_local global i32 0, align 4
@PM_WKST1 = common dso_local global i32 0, align 4
@OMAP24XX_PM_WKST2 = common dso_local global i32 0, align 4
@WKUP_MOD = common dso_local global i32 0, align 4
@PM_WKST = common dso_local global i32 0, align 4
@mpu_pwrdm = common dso_local global i32 0, align 4
@PWRDM_POWER_RET = common dso_local global i32 0, align 4
@OMAP2_CONTROL_DEVCONF0 = common dso_local global i32 0, align 4
@OMAP24XX_USBSTANDBYCTRL = common dso_local global i32 0, align 4
@omap2_pm_debug = common dso_local global i64 0, align 8
@SDRC_DLLA_CTRL = common dso_local global i32 0, align 4
@SDRC_POWER = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@OCP_MOD = common dso_local global i32 0, align 4
@OMAP2_PRCM_IRQSTATUS_MPU_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @omap2_enter_full_retention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_enter_full_retention() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timespec, align 4
  %3 = alloca %struct.timespec, align 4
  %4 = alloca %struct.timespec, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = load i32, i32* @osc_ck, align 4
  %8 = call i32 @clk_disable(i32 %7)
  %9 = load i32, i32* @CORE_MOD, align 4
  %10 = load i32, i32* @PM_WKST1, align 4
  %11 = call i32 @prm_write_mod_reg(i32 -1, i32 %9, i32 %10)
  %12 = load i32, i32* @CORE_MOD, align 4
  %13 = load i32, i32* @OMAP24XX_PM_WKST2, align 4
  %14 = call i32 @prm_write_mod_reg(i32 -1, i32 %12, i32 %13)
  %15 = load i32, i32* @WKUP_MOD, align 4
  %16 = load i32, i32* @PM_WKST, align 4
  %17 = call i32 @prm_write_mod_reg(i32 -1, i32 %15, i32 %16)
  %18 = load i32, i32* @mpu_pwrdm, align 4
  %19 = load i32, i32* @PWRDM_POWER_RET, align 4
  %20 = call i32 @pwrdm_set_logic_retst(i32 %18, i32 %19)
  %21 = load i32, i32* @mpu_pwrdm, align 4
  %22 = load i32, i32* @PWRDM_POWER_RET, align 4
  %23 = call i32 @pwrdm_set_next_pwrst(i32 %21, i32 %22)
  %24 = load i32, i32* @OMAP2_CONTROL_DEVCONF0, align 4
  %25 = call i32 @omap_ctrl_readl(i32 %24)
  %26 = load i32, i32* @OMAP24XX_USBSTANDBYCTRL, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @OMAP2_CONTROL_DEVCONF0, align 4
  %30 = call i32 @omap_ctrl_writel(i32 %28, i32 %29)
  %31 = call i32 (...) @omap2_gpio_prepare_for_retention()
  %32 = load i64, i64* @omap2_pm_debug, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %0
  %35 = call i32 @omap2_pm_dump(i32 0, i32 0, i64 0)
  %36 = call i32 @getnstimeofday(%struct.timespec* %2)
  br label %37

37:                                               ; preds = %34, %0
  %38 = call i64 (...) @omap_irq_pending()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %55

41:                                               ; preds = %37
  %42 = call i32 @omap_uart_prepare_idle(i32 0)
  %43 = call i32 @omap_uart_prepare_idle(i32 1)
  %44 = call i32 @omap_uart_prepare_idle(i32 2)
  %45 = load i32, i32* @SDRC_DLLA_CTRL, align 4
  %46 = call i32 @sdrc_read_reg(i32 %45)
  %47 = load i32, i32* @SDRC_DLLA_CTRL, align 4
  %48 = call i32 @OMAP_SDRC_REGADDR(i32 %47)
  %49 = load i32, i32* @SDRC_POWER, align 4
  %50 = call i32 @OMAP_SDRC_REGADDR(i32 %49)
  %51 = call i32 @omap2_sram_suspend(i32 %46, i32 %48, i32 %50)
  %52 = call i32 @omap_uart_resume_idle(i32 2)
  %53 = call i32 @omap_uart_resume_idle(i32 1)
  %54 = call i32 @omap_uart_resume_idle(i32 0)
  br label %55

55:                                               ; preds = %41, %40
  %56 = load i64, i64* @omap2_pm_debug, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = call i32 @getnstimeofday(%struct.timespec* %3)
  %60 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @timespec_sub(i32 %61, i32 %63)
  %65 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = bitcast %struct.timespec* %4 to i8*
  %67 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 4, i1 false)
  %68 = call i64 @timespec_to_ns(%struct.timespec* %4)
  %69 = load i64, i64* @NSEC_PER_USEC, align 8
  %70 = mul i64 %68, %69
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @omap2_pm_dump(i32 0, i32 1, i64 %71)
  br label %73

73:                                               ; preds = %58, %55
  %74 = call i32 (...) @omap2_gpio_resume_after_retention()
  %75 = load i32, i32* @osc_ck, align 4
  %76 = call i32 @clk_enable(i32 %75)
  %77 = load i32, i32* @CORE_MOD, align 4
  %78 = load i32, i32* @PM_WKST1, align 4
  %79 = call i32 @prm_write_mod_reg(i32 -1, i32 %77, i32 %78)
  %80 = load i32, i32* @CORE_MOD, align 4
  %81 = load i32, i32* @OMAP24XX_PM_WKST2, align 4
  %82 = call i32 @prm_write_mod_reg(i32 -1, i32 %80, i32 %81)
  %83 = load i32, i32* @WKUP_MOD, align 4
  %84 = load i32, i32* @PM_WKST, align 4
  %85 = call i32 @prm_clear_mod_reg_bits(i32 5, i32 %83, i32 %84)
  %86 = load i32, i32* @OCP_MOD, align 4
  %87 = load i32, i32* @OMAP2_PRCM_IRQSTATUS_MPU_OFFSET, align 4
  %88 = call i32 @prm_read_mod_reg(i32 %86, i32 %87)
  store i32 %88, i32* %1, align 4
  %89 = load i32, i32* %1, align 4
  %90 = and i32 %89, 1
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %73
  %93 = load i32, i32* @OCP_MOD, align 4
  %94 = load i32, i32* @OMAP2_PRCM_IRQSTATUS_MPU_OFFSET, align 4
  %95 = call i32 @prm_write_mod_reg(i32 1, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %73
  %97 = load i32, i32* %1, align 4
  %98 = and i32 %97, 32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* @OCP_MOD, align 4
  %102 = load i32, i32* @OMAP2_PRCM_IRQSTATUS_MPU_OFFSET, align 4
  %103 = call i32 @prm_write_mod_reg(i32 32, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i32, i32* @OCP_MOD, align 4
  %106 = load i32, i32* @OMAP2_PRCM_IRQSTATUS_MPU_OFFSET, align 4
  %107 = call i32 @prm_write_mod_reg(i32 0, i32 %105, i32 %106)
  ret void
}

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @prm_write_mod_reg(i32, i32, i32) #1

declare dso_local i32 @pwrdm_set_logic_retst(i32, i32) #1

declare dso_local i32 @pwrdm_set_next_pwrst(i32, i32) #1

declare dso_local i32 @omap_ctrl_readl(i32) #1

declare dso_local i32 @omap_ctrl_writel(i32, i32) #1

declare dso_local i32 @omap2_gpio_prepare_for_retention(...) #1

declare dso_local i32 @omap2_pm_dump(i32, i32, i64) #1

declare dso_local i32 @getnstimeofday(%struct.timespec*) #1

declare dso_local i64 @omap_irq_pending(...) #1

declare dso_local i32 @omap_uart_prepare_idle(i32) #1

declare dso_local i32 @omap2_sram_suspend(i32, i32, i32) #1

declare dso_local i32 @sdrc_read_reg(i32) #1

declare dso_local i32 @OMAP_SDRC_REGADDR(i32) #1

declare dso_local i32 @omap_uart_resume_idle(i32) #1

declare dso_local i32 @timespec_sub(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @timespec_to_ns(%struct.timespec*) #1

declare dso_local i32 @omap2_gpio_resume_after_retention(...) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @prm_clear_mod_reg_bits(i32, i32, i32) #1

declare dso_local i32 @prm_read_mod_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
