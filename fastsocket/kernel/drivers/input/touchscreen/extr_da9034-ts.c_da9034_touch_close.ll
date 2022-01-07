; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_da9034-ts.c_da9034_touch_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_da9034-ts.c_da9034_touch_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.da9034_touch = type { i32, i32, i32, i32 }

@DA9034_EVENT_PEN_DOWN = common dso_local global i32 0, align 4
@DA9034_EVENT_TSI_READY = common dso_local global i32 0, align 4
@STATE_IDLE = common dso_local global i32 0, align 4
@DA9034_MANUAL_CTRL = common dso_local global i32 0, align 4
@DA9034_LDO_ADC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @da9034_touch_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9034_touch_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.da9034_touch*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = call %struct.da9034_touch* @input_get_drvdata(%struct.input_dev* %4)
  store %struct.da9034_touch* %5, %struct.da9034_touch** %3, align 8
  %6 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %7 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %10 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %9, i32 0, i32 3
  %11 = load i32, i32* @DA9034_EVENT_PEN_DOWN, align 4
  %12 = load i32, i32* @DA9034_EVENT_TSI_READY, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @da903x_unregister_notifier(i32 %8, i32* %10, i32 %13)
  %15 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %16 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %15, i32 0, i32 2
  %17 = call i32 @cancel_delayed_work_sync(i32* %16)
  %18 = load i32, i32* @STATE_IDLE, align 4
  %19 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %20 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %22 = call i32 @stop_tsi(%struct.da9034_touch* %21)
  %23 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %24 = call i32 @detect_pen_down(%struct.da9034_touch* %23, i32 0)
  %25 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %26 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DA9034_MANUAL_CTRL, align 4
  %29 = load i32, i32* @DA9034_LDO_ADC_EN, align 4
  %30 = call i32 @da903x_clr_bits(i32 %27, i32 %28, i32 %29)
  ret void
}

declare dso_local %struct.da9034_touch* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @da903x_unregister_notifier(i32, i32*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @stop_tsi(%struct.da9034_touch*) #1

declare dso_local i32 @detect_pen_down(%struct.da9034_touch*, i32) #1

declare dso_local i32 @da903x_clr_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
