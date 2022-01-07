; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_disable_ai_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_disable_ai_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@EN_ADC_INTR_SRC_BIT = common dso_local global i32 0, align 4
@EN_ADC_DONE_INTR_BIT = common dso_local global i32 0, align 4
@EN_ADC_ACTIVE_INTR_BIT = common dso_local global i32 0, align 4
@EN_ADC_STOP_INTR_BIT = common dso_local global i32 0, align 4
@EN_ADC_OVERRUN_BIT = common dso_local global i32 0, align 4
@ADC_INTR_SRC_MASK = common dso_local global i32 0, align 4
@INTR_ENABLE_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"intr enable bits 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @disable_ai_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_ai_interrupts(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load i32, i32* @EN_ADC_INTR_SRC_BIT, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* @EN_ADC_DONE_INTR_BIT, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load i32, i32* @EN_ADC_ACTIVE_INTR_BIT, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = load i32, i32* @EN_ADC_STOP_INTR_BIT, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load i32, i32* @EN_ADC_OVERRUN_BIT, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = load i32, i32* @ADC_INTR_SRC_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %26 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %24
  store i32 %29, i32* %27, align 8
  %30 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %31 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %35 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @INTR_ENABLE_REG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writew(i32 %33, i64 %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 0
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %46 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %48)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DEBUG_PRINT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
