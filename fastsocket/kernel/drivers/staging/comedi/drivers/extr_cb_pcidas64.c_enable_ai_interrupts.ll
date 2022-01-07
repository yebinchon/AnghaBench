; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_enable_ai_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_enable_ai_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_cmd = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i64 }

@EN_ADC_OVERRUN_BIT = common dso_local global i32 0, align 4
@EN_ADC_DONE_INTR_BIT = common dso_local global i32 0, align 4
@EN_ADC_ACTIVE_INTR_BIT = common dso_local global i32 0, align 4
@EN_ADC_STOP_INTR_BIT = common dso_local global i32 0, align 4
@TRIG_WAKE_EOS = common dso_local global i32 0, align 4
@LAYOUT_4020 = common dso_local global i64 0, align 8
@ADC_INTR_EOSCAN_BITS = common dso_local global i32 0, align 4
@EN_ADC_INTR_SRC_BIT = common dso_local global i32 0, align 4
@INTR_ENABLE_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"intr enable bits 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @enable_ai_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_ai_interrupts(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %7 = load i32, i32* @EN_ADC_OVERRUN_BIT, align 4
  %8 = load i32, i32* @EN_ADC_DONE_INTR_BIT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @EN_ADC_ACTIVE_INTR_BIT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @EN_ADC_STOP_INTR_BIT, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = call %struct.TYPE_4__* @board(%struct.comedi_device* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LAYOUT_4020, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* @ADC_INTR_EOSCAN_BITS, align 4
  %29 = load i32, i32* @EN_ADC_INTR_SRC_BIT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %27, %20
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %41 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %40)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 8
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %50 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %49)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @INTR_ENABLE_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writew(i32 %48, i64 %54)
  %56 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %57 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 0
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  ret void
}

declare dso_local %struct.TYPE_4__* @board(%struct.comedi_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_3__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @DEBUG_PRINT(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
