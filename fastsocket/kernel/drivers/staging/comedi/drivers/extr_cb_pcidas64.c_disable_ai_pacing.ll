; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_disable_ai_pacing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_disable_ai_pacing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@ADC_SW_GATE_BIT = common dso_local global i32 0, align 4
@ADC_CONTROL1_REG = common dso_local global i64 0, align 8
@ADC_DMA_DISABLE_BIT = common dso_local global i32 0, align 4
@ADC_SOFT_GATE_BITS = common dso_local global i32 0, align 4
@ADC_GATE_LEVEL_BIT = common dso_local global i32 0, align 4
@ADC_CONTROL0_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @disable_ai_pacing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_ai_pacing(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = call i32 @disable_ai_interrupts(%struct.comedi_device* %4)
  %6 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 0
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load i32, i32* @ADC_SW_GATE_BIT, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %11
  store i32 %16, i32* %14, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %18 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %22 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ADC_CONTROL1_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writew(i32 %20, i64 %26)
  %28 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* @ADC_DMA_DISABLE_BIT, align 4
  %33 = load i32, i32* @ADC_SOFT_GATE_BITS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ADC_GATE_LEVEL_BIT, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %38 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ADC_CONTROL0_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writew(i32 %36, i64 %42)
  ret void
}

declare dso_local i32 @disable_ai_interrupts(%struct.comedi_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
