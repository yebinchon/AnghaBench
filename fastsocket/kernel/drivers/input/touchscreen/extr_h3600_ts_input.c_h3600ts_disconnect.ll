; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_h3600_ts_input.c_h3600ts_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_h3600_ts_input.c_h3600ts_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.h3600_dev = type { i32 }

@IRQ_GPIO_BITSY_ACTION_BUTTON = common dso_local global i32 0, align 4
@IRQ_GPIO_BITSY_NPOWER_BUTTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @h3600ts_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h3600ts_disconnect(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.h3600_dev*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %4 = load %struct.serio*, %struct.serio** %2, align 8
  %5 = call %struct.h3600_dev* @serio_get_drvdata(%struct.serio* %4)
  store %struct.h3600_dev* %5, %struct.h3600_dev** %3, align 8
  %6 = load i32, i32* @IRQ_GPIO_BITSY_ACTION_BUTTON, align 4
  %7 = load %struct.h3600_dev*, %struct.h3600_dev** %3, align 8
  %8 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %7, i32 0, i32 0
  %9 = call i32 @free_irq(i32 %6, i32* %8)
  %10 = load i32, i32* @IRQ_GPIO_BITSY_NPOWER_BUTTON, align 4
  %11 = load %struct.h3600_dev*, %struct.h3600_dev** %3, align 8
  %12 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %11, i32 0, i32 0
  %13 = call i32 @free_irq(i32 %10, i32* %12)
  %14 = load %struct.h3600_dev*, %struct.h3600_dev** %3, align 8
  %15 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @input_get_device(i32 %16)
  %18 = load %struct.h3600_dev*, %struct.h3600_dev** %3, align 8
  %19 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @input_unregister_device(i32 %20)
  %22 = load %struct.serio*, %struct.serio** %2, align 8
  %23 = call i32 @serio_close(%struct.serio* %22)
  %24 = load %struct.serio*, %struct.serio** %2, align 8
  %25 = call i32 @serio_set_drvdata(%struct.serio* %24, i32* null)
  %26 = load %struct.h3600_dev*, %struct.h3600_dev** %3, align 8
  %27 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @input_put_device(i32 %28)
  %30 = load %struct.h3600_dev*, %struct.h3600_dev** %3, align 8
  %31 = call i32 @kfree(%struct.h3600_dev* %30)
  ret void
}

declare dso_local %struct.h3600_dev* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @input_get_device(i32) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, i32*) #1

declare dso_local i32 @input_put_device(i32) #1

declare dso_local i32 @kfree(%struct.h3600_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
