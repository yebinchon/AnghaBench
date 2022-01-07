; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_corgi_lcd.c_corgi_lcdtg_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_corgi_lcd.c_corgi_lcdtg_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@lcd_inited = common dso_local global i32 0, align 4
@PICTRL_ADRS = common dso_local global i32 0, align 4
@PICTRL_POWER_DOWN = common dso_local global i32 0, align 4
@PICTRL_INIOFF = common dso_local global i32 0, align 4
@PICTRL_INIT_STATE = common dso_local global i32 0, align 4
@PICTRL_COM_SIGNAL_OFF = common dso_local global i32 0, align 4
@PICTRL_DAC_SIGNAL_OFF = common dso_local global i32 0, align 4
@POWERREG0_ADRS = common dso_local global i32 0, align 4
@POWER0_COM_DCLK = common dso_local global i32 0, align 4
@POWER0_COM_DOUT = common dso_local global i32 0, align 4
@POWER0_DAC_OFF = common dso_local global i32 0, align 4
@POWER0_COM_OFF = common dso_local global i32 0, align 4
@POWER0_VCC5_OFF = common dso_local global i32 0, align 4
@POWERREG1_ADRS = common dso_local global i32 0, align 4
@POWER1_VW_OFF = common dso_local global i32 0, align 4
@POWER1_GVSS_OFF = common dso_local global i32 0, align 4
@POWER1_VDD_OFF = common dso_local global i32 0, align 4
@POWER1_VDD_ON = common dso_local global i32 0, align 4
@POWER0_DAC_ON = common dso_local global i32 0, align 4
@sharpsl_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DEFAULT_COMADJ = common dso_local global i32 0, align 4
@POWER0_VCC5_ON = common dso_local global i32 0, align 4
@POWER1_GVSS_ON = common dso_local global i32 0, align 4
@POWER0_COM_ON = common dso_local global i32 0, align 4
@POWER1_VW_ON = common dso_local global i32 0, align 4
@POLCTRL_ADRS = common dso_local global i32 0, align 4
@POLCTRL_SYNC_POL_RISE = common dso_local global i32 0, align 4
@POLCTRL_EN_POL_RISE = common dso_local global i32 0, align 4
@POLCTRL_DATA_POL_RISE = common dso_local global i32 0, align 4
@POLCTRL_SYNC_ACT_L = common dso_local global i32 0, align 4
@POLCTRL_EN_ACT_H = common dso_local global i32 0, align 4
@RESCTL_ADRS = common dso_local global i32 0, align 4
@RESCTL_VGA = common dso_local global i32 0, align 4
@RESCTL_QVGA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @corgi_lcdtg_hw_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @lcd_inited, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %129, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @PICTRL_ADRS, align 4
  %8 = load i32, i32* @PICTRL_POWER_DOWN, align 4
  %9 = load i32, i32* @PICTRL_INIOFF, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @PICTRL_INIT_STATE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PICTRL_COM_SIGNAL_OFF, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PICTRL_DAC_SIGNAL_OFF, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @corgi_ssp_lcdtg_send(i32 %7, i32 %16)
  %18 = load i32, i32* @POWERREG0_ADRS, align 4
  %19 = load i32, i32* @POWER0_COM_DCLK, align 4
  %20 = load i32, i32* @POWER0_COM_DOUT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @POWER0_DAC_OFF, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @POWER0_COM_OFF, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @POWER0_VCC5_OFF, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @corgi_ssp_lcdtg_send(i32 %18, i32 %27)
  %29 = load i32, i32* @POWERREG1_ADRS, align 4
  %30 = load i32, i32* @POWER1_VW_OFF, align 4
  %31 = load i32, i32* @POWER1_GVSS_OFF, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @POWER1_VDD_OFF, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @corgi_ssp_lcdtg_send(i32 %29, i32 %34)
  %36 = load i32, i32* @POWERREG1_ADRS, align 4
  %37 = load i32, i32* @POWER1_VW_OFF, align 4
  %38 = load i32, i32* @POWER1_GVSS_OFF, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @POWER1_VDD_ON, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @corgi_ssp_lcdtg_send(i32 %36, i32 %41)
  %43 = call i32 @mdelay(i32 3)
  %44 = load i32, i32* @POWERREG0_ADRS, align 4
  %45 = load i32, i32* @POWER0_COM_DCLK, align 4
  %46 = load i32, i32* @POWER0_COM_DOUT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @POWER0_DAC_ON, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @POWER0_COM_OFF, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @POWER0_VCC5_OFF, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @corgi_ssp_lcdtg_send(i32 %44, i32 %53)
  %55 = load i32, i32* @PICTRL_ADRS, align 4
  %56 = load i32, i32* @PICTRL_INIT_STATE, align 4
  %57 = load i32, i32* @PICTRL_COM_SIGNAL_OFF, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @corgi_ssp_lcdtg_send(i32 %55, i32 %58)
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sharpsl_param, i32 0, i32 0), align 4
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %6
  %64 = load i32, i32* @DEFAULT_COMADJ, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %6
  %66 = load i32, i32* @POWER0_DAC_ON, align 4
  %67 = load i32, i32* @POWER0_COM_OFF, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @POWER0_VCC5_OFF, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @lcdtg_set_common_voltage(i32 %70, i32 %71)
  %73 = load i32, i32* @POWERREG0_ADRS, align 4
  %74 = load i32, i32* @POWER0_COM_DCLK, align 4
  %75 = load i32, i32* @POWER0_COM_DOUT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @POWER0_DAC_ON, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @POWER0_COM_OFF, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @POWER0_VCC5_ON, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @corgi_ssp_lcdtg_send(i32 %73, i32 %82)
  %84 = load i32, i32* @POWERREG1_ADRS, align 4
  %85 = load i32, i32* @POWER1_VW_OFF, align 4
  %86 = load i32, i32* @POWER1_GVSS_ON, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @POWER1_VDD_ON, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @corgi_ssp_lcdtg_send(i32 %84, i32 %89)
  %91 = call i32 @mdelay(i32 2)
  %92 = load i32, i32* @PICTRL_ADRS, align 4
  %93 = load i32, i32* @PICTRL_INIT_STATE, align 4
  %94 = call i32 @corgi_ssp_lcdtg_send(i32 %92, i32 %93)
  %95 = load i32, i32* @POWERREG0_ADRS, align 4
  %96 = load i32, i32* @POWER0_COM_DCLK, align 4
  %97 = load i32, i32* @POWER0_COM_DOUT, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @POWER0_DAC_ON, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @POWER0_COM_ON, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @POWER0_VCC5_ON, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @corgi_ssp_lcdtg_send(i32 %95, i32 %104)
  %106 = load i32, i32* @POWERREG1_ADRS, align 4
  %107 = load i32, i32* @POWER1_VW_ON, align 4
  %108 = load i32, i32* @POWER1_GVSS_ON, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @POWER1_VDD_ON, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @corgi_ssp_lcdtg_send(i32 %106, i32 %111)
  %113 = load i32, i32* @PICTRL_ADRS, align 4
  %114 = call i32 @corgi_ssp_lcdtg_send(i32 %113, i32 0)
  %115 = load i32, i32* %2, align 4
  %116 = call i32 @lcdtg_set_phadadj(i32 %115)
  %117 = load i32, i32* @POLCTRL_ADRS, align 4
  %118 = load i32, i32* @POLCTRL_SYNC_POL_RISE, align 4
  %119 = load i32, i32* @POLCTRL_EN_POL_RISE, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @POLCTRL_DATA_POL_RISE, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @POLCTRL_SYNC_ACT_L, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @POLCTRL_EN_ACT_H, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @corgi_ssp_lcdtg_send(i32 %117, i32 %126)
  %128 = call i32 @udelay(i32 1000)
  store i32 1, i32* @lcd_inited, align 4
  br label %132

129:                                              ; preds = %1
  %130 = load i32, i32* %2, align 4
  %131 = call i32 @lcdtg_set_phadadj(i32 %130)
  br label %132

132:                                              ; preds = %129, %65
  %133 = load i32, i32* %2, align 4
  switch i32 %133, label %139 [
    i32 480, label %134
    i32 640, label %134
    i32 240, label %138
    i32 320, label %138
  ]

134:                                              ; preds = %132, %132
  %135 = load i32, i32* @RESCTL_ADRS, align 4
  %136 = load i32, i32* @RESCTL_VGA, align 4
  %137 = call i32 @corgi_ssp_lcdtg_send(i32 %135, i32 %136)
  br label %143

138:                                              ; preds = %132, %132
  br label %139

139:                                              ; preds = %132, %138
  %140 = load i32, i32* @RESCTL_ADRS, align 4
  %141 = load i32, i32* @RESCTL_QVGA, align 4
  %142 = call i32 @corgi_ssp_lcdtg_send(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %134
  ret void
}

declare dso_local i32 @corgi_ssp_lcdtg_send(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @lcdtg_set_common_voltage(i32, i32) #1

declare dso_local i32 @lcdtg_set_phadadj(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
