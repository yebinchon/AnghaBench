; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mc13783-core.c_mc13783_adc_set_ts_irq_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mc13783-core.c_mc13783_adc_set_ts_irq_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc13783 = type { i32 }

@MC13783_ADC0_ADREFEN = common dso_local global i32 0, align 4
@MC13783_ADC0_ADREFMODE = common dso_local global i32 0, align 4
@MC13783_ADC0_TSMOD0 = common dso_local global i32 0, align 4
@MC13783_ADC1_ADEN = common dso_local global i32 0, align 4
@MC13783_ADC1_ADTRIGIGN = common dso_local global i32 0, align 4
@MC13783_REG_ADC_0 = common dso_local global i32 0, align 4
@MC13783_REG_ADC_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mc13783*)* @mc13783_adc_set_ts_irq_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mc13783_adc_set_ts_irq_mode(%struct.mc13783* %0) #0 {
  %2 = alloca %struct.mc13783*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mc13783* %0, %struct.mc13783** %2, align 8
  %5 = load i32, i32* @MC13783_ADC0_ADREFEN, align 4
  %6 = load i32, i32* @MC13783_ADC0_ADREFMODE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MC13783_ADC0_TSMOD0, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @MC13783_ADC1_ADEN, align 4
  %11 = load i32, i32* @MC13783_ADC1_ADTRIGIGN, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mc13783*, %struct.mc13783** %2, align 8
  %14 = load i32, i32* @MC13783_REG_ADC_0, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @mc13783_reg_write(%struct.mc13783* %13, i32 %14, i32 %15)
  %17 = load %struct.mc13783*, %struct.mc13783** %2, align 8
  %18 = load i32, i32* @MC13783_REG_ADC_1, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @mc13783_reg_write(%struct.mc13783* %17, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @mc13783_reg_write(%struct.mc13783*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
