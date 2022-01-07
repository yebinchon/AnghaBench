; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1400_core.c_ucb1400_adc_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1400_core.c_ucb1400_adc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@UCB_ADC_SYNC_ENA = common dso_local global i32 0, align 4
@UCB_ADC_CR = common dso_local global i32 0, align 4
@UCB_ADC_ENA = common dso_local global i32 0, align 4
@UCB_ADC_START = common dso_local global i32 0, align 4
@UCB_ADC_DATA = common dso_local global i32 0, align 4
@UCB_ADC_DAT_VALID = common dso_local global i32 0, align 4
@UCB_ADC_DAT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucb1400_adc_read(%struct.snd_ac97* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
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
  %15 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %16 = load i32, i32* @UCB_ADC_CR, align 4
  %17 = load i32, i32* @UCB_ADC_ENA, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ucb1400_reg_write(%struct.snd_ac97* %15, i32 %16, i32 %19)
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %22 = load i32, i32* @UCB_ADC_CR, align 4
  %23 = load i32, i32* @UCB_ADC_ENA, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @UCB_ADC_START, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @ucb1400_reg_write(%struct.snd_ac97* %21, i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %37, %14
  %30 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %31 = load i32, i32* @UCB_ADC_DATA, align 4
  %32 = call i32 @ucb1400_reg_read(%struct.snd_ac97* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @UCB_ADC_DAT_VALID, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %29

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @UCB_ADC_DAT_MASK, align 4
  %42 = and i32 %40, %41
  ret i32 %42
}

declare dso_local i32 @ucb1400_reg_write(%struct.snd_ac97*, i32, i32) #1

declare dso_local i32 @ucb1400_reg_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
