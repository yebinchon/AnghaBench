; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm8350_power.c_wm8350_init_charger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm8350_power.c_wm8350_init_charger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }

@WM8350_IRQ_CHG_BAT_HOT = common dso_local global i32 0, align 4
@wm8350_charger_handler = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_BAT_COLD = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_BAT_FAIL = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_TO = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_END = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_START = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_FAST_RDY = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_VBATT_LT_3P9 = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_VBATT_LT_3P1 = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_VBATT_LT_2P85 = common dso_local global i32 0, align 4
@WM8350_IRQ_EXT_USB_FB = common dso_local global i32 0, align 4
@WM8350_IRQ_EXT_WALL_FB = common dso_local global i32 0, align 4
@WM8350_IRQ_EXT_BAT_FB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm8350*)* @wm8350_init_charger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8350_init_charger(%struct.wm8350* %0) #0 {
  %2 = alloca %struct.wm8350*, align 8
  store %struct.wm8350* %0, %struct.wm8350** %2, align 8
  %3 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %4 = load i32, i32* @WM8350_IRQ_CHG_BAT_HOT, align 4
  %5 = load i32, i32* @wm8350_charger_handler, align 4
  %6 = call i32 @wm8350_register_irq(%struct.wm8350* %3, i32 %4, i32 %5, i32* null)
  %7 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %8 = load i32, i32* @WM8350_IRQ_CHG_BAT_HOT, align 4
  %9 = call i32 @wm8350_unmask_irq(%struct.wm8350* %7, i32 %8)
  %10 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %11 = load i32, i32* @WM8350_IRQ_CHG_BAT_COLD, align 4
  %12 = load i32, i32* @wm8350_charger_handler, align 4
  %13 = call i32 @wm8350_register_irq(%struct.wm8350* %10, i32 %11, i32 %12, i32* null)
  %14 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %15 = load i32, i32* @WM8350_IRQ_CHG_BAT_COLD, align 4
  %16 = call i32 @wm8350_unmask_irq(%struct.wm8350* %14, i32 %15)
  %17 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %18 = load i32, i32* @WM8350_IRQ_CHG_BAT_FAIL, align 4
  %19 = load i32, i32* @wm8350_charger_handler, align 4
  %20 = call i32 @wm8350_register_irq(%struct.wm8350* %17, i32 %18, i32 %19, i32* null)
  %21 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %22 = load i32, i32* @WM8350_IRQ_CHG_BAT_FAIL, align 4
  %23 = call i32 @wm8350_unmask_irq(%struct.wm8350* %21, i32 %22)
  %24 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %25 = load i32, i32* @WM8350_IRQ_CHG_TO, align 4
  %26 = load i32, i32* @wm8350_charger_handler, align 4
  %27 = call i32 @wm8350_register_irq(%struct.wm8350* %24, i32 %25, i32 %26, i32* null)
  %28 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %29 = load i32, i32* @WM8350_IRQ_CHG_TO, align 4
  %30 = call i32 @wm8350_unmask_irq(%struct.wm8350* %28, i32 %29)
  %31 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %32 = load i32, i32* @WM8350_IRQ_CHG_END, align 4
  %33 = load i32, i32* @wm8350_charger_handler, align 4
  %34 = call i32 @wm8350_register_irq(%struct.wm8350* %31, i32 %32, i32 %33, i32* null)
  %35 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %36 = load i32, i32* @WM8350_IRQ_CHG_END, align 4
  %37 = call i32 @wm8350_unmask_irq(%struct.wm8350* %35, i32 %36)
  %38 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %39 = load i32, i32* @WM8350_IRQ_CHG_START, align 4
  %40 = load i32, i32* @wm8350_charger_handler, align 4
  %41 = call i32 @wm8350_register_irq(%struct.wm8350* %38, i32 %39, i32 %40, i32* null)
  %42 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %43 = load i32, i32* @WM8350_IRQ_CHG_START, align 4
  %44 = call i32 @wm8350_unmask_irq(%struct.wm8350* %42, i32 %43)
  %45 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %46 = load i32, i32* @WM8350_IRQ_CHG_FAST_RDY, align 4
  %47 = load i32, i32* @wm8350_charger_handler, align 4
  %48 = call i32 @wm8350_register_irq(%struct.wm8350* %45, i32 %46, i32 %47, i32* null)
  %49 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %50 = load i32, i32* @WM8350_IRQ_CHG_FAST_RDY, align 4
  %51 = call i32 @wm8350_unmask_irq(%struct.wm8350* %49, i32 %50)
  %52 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %53 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_3P9, align 4
  %54 = load i32, i32* @wm8350_charger_handler, align 4
  %55 = call i32 @wm8350_register_irq(%struct.wm8350* %52, i32 %53, i32 %54, i32* null)
  %56 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %57 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_3P9, align 4
  %58 = call i32 @wm8350_unmask_irq(%struct.wm8350* %56, i32 %57)
  %59 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %60 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_3P1, align 4
  %61 = load i32, i32* @wm8350_charger_handler, align 4
  %62 = call i32 @wm8350_register_irq(%struct.wm8350* %59, i32 %60, i32 %61, i32* null)
  %63 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %64 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_3P1, align 4
  %65 = call i32 @wm8350_unmask_irq(%struct.wm8350* %63, i32 %64)
  %66 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %67 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_2P85, align 4
  %68 = load i32, i32* @wm8350_charger_handler, align 4
  %69 = call i32 @wm8350_register_irq(%struct.wm8350* %66, i32 %67, i32 %68, i32* null)
  %70 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %71 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_2P85, align 4
  %72 = call i32 @wm8350_unmask_irq(%struct.wm8350* %70, i32 %71)
  %73 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %74 = load i32, i32* @WM8350_IRQ_EXT_USB_FB, align 4
  %75 = load i32, i32* @wm8350_charger_handler, align 4
  %76 = call i32 @wm8350_register_irq(%struct.wm8350* %73, i32 %74, i32 %75, i32* null)
  %77 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %78 = load i32, i32* @WM8350_IRQ_EXT_USB_FB, align 4
  %79 = call i32 @wm8350_unmask_irq(%struct.wm8350* %77, i32 %78)
  %80 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %81 = load i32, i32* @WM8350_IRQ_EXT_WALL_FB, align 4
  %82 = load i32, i32* @wm8350_charger_handler, align 4
  %83 = call i32 @wm8350_register_irq(%struct.wm8350* %80, i32 %81, i32 %82, i32* null)
  %84 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %85 = load i32, i32* @WM8350_IRQ_EXT_WALL_FB, align 4
  %86 = call i32 @wm8350_unmask_irq(%struct.wm8350* %84, i32 %85)
  %87 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %88 = load i32, i32* @WM8350_IRQ_EXT_BAT_FB, align 4
  %89 = load i32, i32* @wm8350_charger_handler, align 4
  %90 = call i32 @wm8350_register_irq(%struct.wm8350* %87, i32 %88, i32 %89, i32* null)
  %91 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %92 = load i32, i32* @WM8350_IRQ_EXT_BAT_FB, align 4
  %93 = call i32 @wm8350_unmask_irq(%struct.wm8350* %91, i32 %92)
  ret void
}

declare dso_local i32 @wm8350_register_irq(%struct.wm8350*, i32, i32, i32*) #1

declare dso_local i32 @wm8350_unmask_irq(%struct.wm8350*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
