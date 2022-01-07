; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_adc_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_adc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00 = type { i32, i32 }

@UCB_ADC_ENA = common dso_local global i32 0, align 4
@UCB_ADC_CR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucb1x00_adc_disable(%struct.ucb1x00* %0) #0 {
  %2 = alloca %struct.ucb1x00*, align 8
  store %struct.ucb1x00* %0, %struct.ucb1x00** %2, align 8
  %3 = load i32, i32* @UCB_ADC_ENA, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %6 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, %4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %10 = load i32, i32* @UCB_ADC_CR, align 4
  %11 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %12 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %9, i32 %10, i32 %13)
  %15 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %16 = call i32 @ucb1x00_disable(%struct.ucb1x00* %15)
  %17 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %18 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %17, i32 0, i32 0
  %19 = call i32 @up(i32* %18)
  ret void
}

declare dso_local i32 @ucb1x00_reg_write(%struct.ucb1x00*, i32, i32) #1

declare dso_local i32 @ucb1x00_disable(%struct.ucb1x00*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
