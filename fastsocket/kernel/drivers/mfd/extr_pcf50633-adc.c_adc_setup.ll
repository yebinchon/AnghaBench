; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_pcf50633-adc.c_adc_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_pcf50633-adc.c_adc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32 }

@PCF50633_ADCC1_ADCMUX_MASK = common dso_local global i32 0, align 4
@PCF50633_REG_ADCC2 = common dso_local global i32 0, align 4
@PCF50633_REG_ADCC3 = common dso_local global i32 0, align 4
@PCF50633_REG_ADCC1 = common dso_local global i32 0, align 4
@PCF50633_ADCC1_ADCSTART = common dso_local global i32 0, align 4
@PCF50633_ADCC1_RES_10BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcf50633*, i32, i32)* @adc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adc_setup(%struct.pcf50633* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pcf50633*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pcf50633* %0, %struct.pcf50633** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @PCF50633_ADCC1_ADCMUX_MASK, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %5, align 4
  %10 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %11 = load i32, i32* @PCF50633_REG_ADCC2, align 4
  %12 = call i32 @pcf50633_reg_write(%struct.pcf50633* %10, i32 %11, i32 0)
  %13 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %14 = load i32, i32* @PCF50633_REG_ADCC3, align 4
  %15 = call i32 @pcf50633_reg_write(%struct.pcf50633* %13, i32 %14, i32 1)
  %16 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %17 = load i32, i32* @PCF50633_REG_ADCC1, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PCF50633_ADCC1_ADCSTART, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PCF50633_ADCC1_RES_10BIT, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @pcf50633_reg_write(%struct.pcf50633* %16, i32 %17, i32 %24)
  ret void
}

declare dso_local i32 @pcf50633_reg_write(%struct.pcf50633*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
