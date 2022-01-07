; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_init_stc_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_init_stc_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ADC_QUEUE_CONFIG_BIT = common dso_local global i32 0, align 4
@ADC_CONTROL1_REG = common dso_local global i64 0, align 8
@ADC_SAMPLE_INTERVAL_UPPER_REG = common dso_local global i64 0, align 8
@SLOW_DAC_BIT = common dso_local global i32 0, align 4
@DMA_CH_SELECT_BIT = common dso_local global i32 0, align 4
@LAYOUT_4020 = common dso_local global i64 0, align 8
@INTERNAL_CLOCK_4020_BITS = common dso_local global i32 0, align 4
@HW_CONFIG_REG = common dso_local global i64 0, align 8
@DAQ_SYNC_REG = common dso_local global i64 0, align 8
@CALIBRATION_REG = common dso_local global i64 0, align 8
@DAC_FIFO_BITS = common dso_local global i32 0, align 4
@DAC_OUTPUT_ENABLE_BIT = common dso_local global i32 0, align 4
@EN_DAC_DONE_INTR_BIT = common dso_local global i32 0, align 4
@EN_DAC_UNDERRUN_BIT = common dso_local global i32 0, align 4
@INTR_ENABLE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @init_stc_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_stc_registers(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load i32, i32* @ADC_QUEUE_CONFIG_BIT, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %9
  store i32 %14, i32* %12, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %16 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %20 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ADC_CONTROL1_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writew(i32 %18, i64 %24)
  %26 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %27 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ADC_SAMPLE_INTERVAL_UPPER_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writew(i32 255, i64 %31)
  %33 = load i32, i32* @SLOW_DAC_BIT, align 4
  %34 = load i32, i32* @DMA_CH_SELECT_BIT, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %3, align 4
  %36 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %37 = call %struct.TYPE_6__* @board(%struct.comedi_device* %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LAYOUT_4020, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %1
  %43 = load i32, i32* @INTERNAL_CLOCK_4020_BITS, align 4
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %1
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %49 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %48)
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 4
  %53 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %54 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %58 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %57)
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @HW_CONFIG_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writew(i32 %56, i64 %62)
  %64 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %65 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %64)
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DAQ_SYNC_REG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writew(i32 0, i64 %69)
  %71 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %72 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %71)
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CALIBRATION_REG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writew(i32 0, i64 %76)
  %78 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 0
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* @DAC_FIFO_BITS, align 4
  %83 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %84 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %83)
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %82
  store i32 %87, i32* %85, align 4
  %88 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %89 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %90 = call %struct.TYPE_6__* @board(%struct.comedi_device* %89)
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @set_ai_fifo_segment_length(%struct.comedi_device* %88, i32 %94)
  %96 = load i32, i32* @DAC_OUTPUT_ENABLE_BIT, align 4
  %97 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %98 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %97)
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 4
  store i32 %96, i32* %99, align 8
  %100 = load i32, i32* @EN_DAC_DONE_INTR_BIT, align 4
  %101 = load i32, i32* @EN_DAC_UNDERRUN_BIT, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %104 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %103)
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  %106 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %107 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %106)
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %111 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %110)
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @INTR_ENABLE_REG, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writew(i32 %109, i64 %115)
  %117 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %118 = call i32 @disable_ai_pacing(%struct.comedi_device* %117)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_5__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local %struct.TYPE_6__* @board(%struct.comedi_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_ai_fifo_segment_length(%struct.comedi_device*, i32) #1

declare dso_local i32 @disable_ai_pacing(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
