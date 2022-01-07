; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_adc_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_adc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00 = type { i32 }

@UCB_ADC_SYNC_ENA = common dso_local global i32 0, align 4
@UCB_ADC_CR = common dso_local global i32 0, align 4
@UCB_ADC_START = common dso_local global i32 0, align 4
@UCB_ADC_DATA = common dso_local global i32 0, align 4
@UCB_ADC_DAT_VAL = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucb1x00_adc_read(%struct.ucb1x00* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ucb1x00*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ucb1x00* %0, %struct.ucb1x00** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* @UCB_ADC_SYNC_ENA, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %10, %3
  %15 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %16 = load i32, i32* @UCB_ADC_CR, align 4
  %17 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %18 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %15, i32 %16, i32 %21)
  %23 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %24 = load i32, i32* @UCB_ADC_CR, align 4
  %25 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %26 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @UCB_ADC_START, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %23, i32 %24, i32 %31)
  br label %33

33:                                               ; preds = %42, %14
  %34 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %35 = load i32, i32* @UCB_ADC_DATA, align 4
  %36 = call i32 @ucb1x00_reg_read(%struct.ucb1x00* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @UCB_ADC_DAT_VAL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %44 = call i32 @set_current_state(i32 %43)
  %45 = call i32 @schedule_timeout(i32 1)
  br label %33

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @UCB_ADC_DAT(i32 %47)
  ret i32 %48
}

declare dso_local i32 @ucb1x00_reg_write(%struct.ucb1x00*, i32, i32) #1

declare dso_local i32 @ucb1x00_reg_read(%struct.ucb1x00*, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @UCB_ADC_DAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
