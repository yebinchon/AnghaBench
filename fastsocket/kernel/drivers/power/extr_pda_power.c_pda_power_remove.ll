; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_pda_power.c_pda_power_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_pda_power.c_pda_power_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32)*, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { i32 }

@pdata = common dso_local global %struct.TYPE_5__* null, align 8
@usb_irq = common dso_local global %struct.TYPE_4__* null, align 8
@pda_psy_usb = common dso_local global i32 0, align 4
@ac_irq = common dso_local global %struct.TYPE_6__* null, align 8
@pda_psy_ac = common dso_local global i32 0, align 4
@polling = common dso_local global i64 0, align 8
@polling_timer = common dso_local global i32 0, align 4
@charger_timer = common dso_local global i32 0, align 4
@supply_timer = common dso_local global i32 0, align 4
@ac_draw = common dso_local global i32* null, align 8
@dev = common dso_local global i32 0, align 4
@transceiver = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pda_power_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pda_power_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pdata, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @usb_irq, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @usb_irq, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @free_irq(i32 %13, i32* @pda_psy_usb)
  br label %15

15:                                               ; preds = %10, %7, %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pdata, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ac_irq, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ac_irq, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @free_irq(i32 %26, i32* @pda_psy_ac)
  br label %28

28:                                               ; preds = %23, %20, %15
  %29 = load i64, i64* @polling, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @del_timer_sync(i32* @polling_timer)
  br label %33

33:                                               ; preds = %31, %28
  %34 = call i32 @del_timer_sync(i32* @charger_timer)
  %35 = call i32 @del_timer_sync(i32* @supply_timer)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pdata, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = call i32 @power_supply_unregister(i32* @pda_psy_usb)
  br label %42

42:                                               ; preds = %40, %33
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pdata, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @power_supply_unregister(i32* @pda_psy_ac)
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i32*, i32** @ac_draw, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32*, i32** @ac_draw, align 8
  %54 = call i32 @regulator_put(i32* %53)
  store i32* null, i32** @ac_draw, align 8
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pdata, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32 (i32)*, i32 (i32)** %57, align 8
  %59 = icmp ne i32 (i32)* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pdata, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32 (i32)*, i32 (i32)** %62, align 8
  %64 = load i32, i32* @dev, align 4
  %65 = call i32 %63(i32 %64)
  br label %66

66:                                               ; preds = %60, %55
  ret i32 0
}

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @power_supply_unregister(i32*) #1

declare dso_local i32 @regulator_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
