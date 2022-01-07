; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_corgi_lcd.c_corgi_lcdtg_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_corgi_lcd.c_corgi_lcdtg_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POWERREG1_ADRS = common dso_local global i32 0, align 4
@POWER1_VW_OFF = common dso_local global i32 0, align 4
@POWER1_GVSS_ON = common dso_local global i32 0, align 4
@POWER1_VDD_ON = common dso_local global i32 0, align 4
@PICTRL_ADRS = common dso_local global i32 0, align 4
@PICTRL_COM_SIGNAL_OFF = common dso_local global i32 0, align 4
@POWERREG0_ADRS = common dso_local global i32 0, align 4
@POWER0_DAC_ON = common dso_local global i32 0, align 4
@POWER0_COM_OFF = common dso_local global i32 0, align 4
@POWER0_VCC5_ON = common dso_local global i32 0, align 4
@POWER1_GVSS_OFF = common dso_local global i32 0, align 4
@POWER0_VCC5_OFF = common dso_local global i32 0, align 4
@PICTRL_INIOFF = common dso_local global i32 0, align 4
@PICTRL_DAC_SIGNAL_OFF = common dso_local global i32 0, align 4
@PICTRL_POWER_DOWN = common dso_local global i32 0, align 4
@POWER0_DAC_OFF = common dso_local global i32 0, align 4
@POWER1_VDD_OFF = common dso_local global i32 0, align 4
@lcd_inited = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @corgi_lcdtg_suspend() #0 {
  %1 = call i32 @mdelay(i32 34)
  %2 = load i32, i32* @POWERREG1_ADRS, align 4
  %3 = load i32, i32* @POWER1_VW_OFF, align 4
  %4 = load i32, i32* @POWER1_GVSS_ON, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @POWER1_VDD_ON, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @corgi_ssp_lcdtg_send(i32 %2, i32 %7)
  %9 = load i32, i32* @PICTRL_ADRS, align 4
  %10 = load i32, i32* @PICTRL_COM_SIGNAL_OFF, align 4
  %11 = call i32 @corgi_ssp_lcdtg_send(i32 %9, i32 %10)
  %12 = load i32, i32* @POWERREG0_ADRS, align 4
  %13 = load i32, i32* @POWER0_DAC_ON, align 4
  %14 = load i32, i32* @POWER0_COM_OFF, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @POWER0_VCC5_ON, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @corgi_ssp_lcdtg_send(i32 %12, i32 %17)
  %19 = load i32, i32* @POWER0_DAC_ON, align 4
  %20 = load i32, i32* @POWER0_COM_OFF, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @POWER0_VCC5_ON, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @lcdtg_set_common_voltage(i32 %23, i32 0)
  %25 = load i32, i32* @POWERREG1_ADRS, align 4
  %26 = load i32, i32* @POWER1_VW_OFF, align 4
  %27 = load i32, i32* @POWER1_GVSS_OFF, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @POWER1_VDD_ON, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @corgi_ssp_lcdtg_send(i32 %25, i32 %30)
  %32 = load i32, i32* @POWERREG0_ADRS, align 4
  %33 = load i32, i32* @POWER0_DAC_ON, align 4
  %34 = load i32, i32* @POWER0_COM_OFF, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @POWER0_VCC5_OFF, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @corgi_ssp_lcdtg_send(i32 %32, i32 %37)
  %39 = load i32, i32* @PICTRL_ADRS, align 4
  %40 = load i32, i32* @PICTRL_INIOFF, align 4
  %41 = load i32, i32* @PICTRL_DAC_SIGNAL_OFF, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PICTRL_POWER_DOWN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PICTRL_COM_SIGNAL_OFF, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @corgi_ssp_lcdtg_send(i32 %39, i32 %46)
  %48 = load i32, i32* @POWERREG0_ADRS, align 4
  %49 = load i32, i32* @POWER0_DAC_OFF, align 4
  %50 = load i32, i32* @POWER0_COM_OFF, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @POWER0_VCC5_OFF, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @corgi_ssp_lcdtg_send(i32 %48, i32 %53)
  %55 = load i32, i32* @POWERREG1_ADRS, align 4
  %56 = load i32, i32* @POWER1_VW_OFF, align 4
  %57 = load i32, i32* @POWER1_GVSS_OFF, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @POWER1_VDD_OFF, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @corgi_ssp_lcdtg_send(i32 %55, i32 %60)
  store i64 0, i64* @lcd_inited, align 8
  ret void
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @corgi_ssp_lcdtg_send(i32, i32) #1

declare dso_local i32 @lcdtg_set_common_voltage(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
