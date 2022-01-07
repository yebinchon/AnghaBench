; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_detect_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_detect_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00 = type { i32 }

@NO_IRQ = common dso_local global i32 0, align 4
@UCB_IE_RIS = common dso_local global i32 0, align 4
@UCB_IE_ADC = common dso_local global i32 0, align 4
@UCB_IE_FAL = common dso_local global i32 0, align 4
@UCB_IE_CLEAR = common dso_local global i32 0, align 4
@UCB_ADC_CR = common dso_local global i32 0, align 4
@UCB_ADC_ENA = common dso_local global i32 0, align 4
@UCB_ADC_START = common dso_local global i32 0, align 4
@UCB_ADC_DATA = common dso_local global i32 0, align 4
@UCB_ADC_DAT_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucb1x00*)* @ucb1x00_detect_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_detect_irq(%struct.ucb1x00* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucb1x00*, align 8
  %4 = alloca i64, align 8
  store %struct.ucb1x00* %0, %struct.ucb1x00** %3, align 8
  %5 = call i64 (...) @probe_irq_on()
  store i64 %5, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @probe_irq_off(i64 %9)
  %11 = load i32, i32* @NO_IRQ, align 4
  store i32 %11, i32* %2, align 4
  br label %63

12:                                               ; preds = %1
  %13 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %14 = load i32, i32* @UCB_IE_RIS, align 4
  %15 = load i32, i32* @UCB_IE_ADC, align 4
  %16 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %13, i32 %14, i32 %15)
  %17 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %18 = load i32, i32* @UCB_IE_FAL, align 4
  %19 = load i32, i32* @UCB_IE_ADC, align 4
  %20 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %17, i32 %18, i32 %19)
  %21 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %22 = load i32, i32* @UCB_IE_CLEAR, align 4
  %23 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %21, i32 %22, i32 65535)
  %24 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %25 = load i32, i32* @UCB_IE_CLEAR, align 4
  %26 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %24, i32 %25, i32 0)
  %27 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %28 = load i32, i32* @UCB_ADC_CR, align 4
  %29 = load i32, i32* @UCB_ADC_ENA, align 4
  %30 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %27, i32 %28, i32 %29)
  %31 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %32 = load i32, i32* @UCB_ADC_CR, align 4
  %33 = load i32, i32* @UCB_ADC_ENA, align 4
  %34 = load i32, i32* @UCB_ADC_START, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %44, %12
  %38 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %39 = load i32, i32* @UCB_ADC_DATA, align 4
  %40 = call i32 @ucb1x00_reg_read(%struct.ucb1x00* %38, i32 %39)
  %41 = load i32, i32* @UCB_ADC_DAT_VAL, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %37

45:                                               ; preds = %37
  %46 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %47 = load i32, i32* @UCB_ADC_CR, align 4
  %48 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %46, i32 %47, i32 0)
  %49 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %50 = load i32, i32* @UCB_IE_RIS, align 4
  %51 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %49, i32 %50, i32 0)
  %52 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %53 = load i32, i32* @UCB_IE_FAL, align 4
  %54 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %52, i32 %53, i32 0)
  %55 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %56 = load i32, i32* @UCB_IE_CLEAR, align 4
  %57 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %55, i32 %56, i32 65535)
  %58 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %59 = load i32, i32* @UCB_IE_CLEAR, align 4
  %60 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %58, i32 %59, i32 0)
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @probe_irq_off(i64 %61)
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %45, %8
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @probe_irq_on(...) #1

declare dso_local i32 @probe_irq_off(i64) #1

declare dso_local i32 @ucb1x00_reg_write(%struct.ucb1x00*, i32, i32) #1

declare dso_local i32 @ucb1x00_reg_read(%struct.ucb1x00*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
