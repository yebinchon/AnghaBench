; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm8350_power.c_free_charger_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm8350_power.c_free_charger_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }

@WM8350_IRQ_CHG_BAT_HOT = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_BAT_COLD = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_BAT_FAIL = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_TO = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_END = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_START = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_VBATT_LT_3P9 = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_VBATT_LT_3P1 = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_VBATT_LT_2P85 = common dso_local global i32 0, align 4
@WM8350_IRQ_EXT_USB_FB = common dso_local global i32 0, align 4
@WM8350_IRQ_EXT_WALL_FB = common dso_local global i32 0, align 4
@WM8350_IRQ_EXT_BAT_FB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm8350*)* @free_charger_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_charger_irq(%struct.wm8350* %0) #0 {
  %2 = alloca %struct.wm8350*, align 8
  store %struct.wm8350* %0, %struct.wm8350** %2, align 8
  %3 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %4 = load i32, i32* @WM8350_IRQ_CHG_BAT_HOT, align 4
  %5 = call i32 @wm8350_mask_irq(%struct.wm8350* %3, i32 %4)
  %6 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %7 = load i32, i32* @WM8350_IRQ_CHG_BAT_HOT, align 4
  %8 = call i32 @wm8350_free_irq(%struct.wm8350* %6, i32 %7)
  %9 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %10 = load i32, i32* @WM8350_IRQ_CHG_BAT_COLD, align 4
  %11 = call i32 @wm8350_mask_irq(%struct.wm8350* %9, i32 %10)
  %12 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %13 = load i32, i32* @WM8350_IRQ_CHG_BAT_COLD, align 4
  %14 = call i32 @wm8350_free_irq(%struct.wm8350* %12, i32 %13)
  %15 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %16 = load i32, i32* @WM8350_IRQ_CHG_BAT_FAIL, align 4
  %17 = call i32 @wm8350_mask_irq(%struct.wm8350* %15, i32 %16)
  %18 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %19 = load i32, i32* @WM8350_IRQ_CHG_BAT_FAIL, align 4
  %20 = call i32 @wm8350_free_irq(%struct.wm8350* %18, i32 %19)
  %21 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %22 = load i32, i32* @WM8350_IRQ_CHG_TO, align 4
  %23 = call i32 @wm8350_mask_irq(%struct.wm8350* %21, i32 %22)
  %24 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %25 = load i32, i32* @WM8350_IRQ_CHG_TO, align 4
  %26 = call i32 @wm8350_free_irq(%struct.wm8350* %24, i32 %25)
  %27 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %28 = load i32, i32* @WM8350_IRQ_CHG_END, align 4
  %29 = call i32 @wm8350_mask_irq(%struct.wm8350* %27, i32 %28)
  %30 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %31 = load i32, i32* @WM8350_IRQ_CHG_END, align 4
  %32 = call i32 @wm8350_free_irq(%struct.wm8350* %30, i32 %31)
  %33 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %34 = load i32, i32* @WM8350_IRQ_CHG_START, align 4
  %35 = call i32 @wm8350_mask_irq(%struct.wm8350* %33, i32 %34)
  %36 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %37 = load i32, i32* @WM8350_IRQ_CHG_START, align 4
  %38 = call i32 @wm8350_free_irq(%struct.wm8350* %36, i32 %37)
  %39 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %40 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_3P9, align 4
  %41 = call i32 @wm8350_mask_irq(%struct.wm8350* %39, i32 %40)
  %42 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %43 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_3P9, align 4
  %44 = call i32 @wm8350_free_irq(%struct.wm8350* %42, i32 %43)
  %45 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %46 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_3P1, align 4
  %47 = call i32 @wm8350_mask_irq(%struct.wm8350* %45, i32 %46)
  %48 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %49 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_3P1, align 4
  %50 = call i32 @wm8350_free_irq(%struct.wm8350* %48, i32 %49)
  %51 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %52 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_2P85, align 4
  %53 = call i32 @wm8350_mask_irq(%struct.wm8350* %51, i32 %52)
  %54 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %55 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_2P85, align 4
  %56 = call i32 @wm8350_free_irq(%struct.wm8350* %54, i32 %55)
  %57 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %58 = load i32, i32* @WM8350_IRQ_EXT_USB_FB, align 4
  %59 = call i32 @wm8350_mask_irq(%struct.wm8350* %57, i32 %58)
  %60 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %61 = load i32, i32* @WM8350_IRQ_EXT_USB_FB, align 4
  %62 = call i32 @wm8350_free_irq(%struct.wm8350* %60, i32 %61)
  %63 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %64 = load i32, i32* @WM8350_IRQ_EXT_WALL_FB, align 4
  %65 = call i32 @wm8350_mask_irq(%struct.wm8350* %63, i32 %64)
  %66 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %67 = load i32, i32* @WM8350_IRQ_EXT_WALL_FB, align 4
  %68 = call i32 @wm8350_free_irq(%struct.wm8350* %66, i32 %67)
  %69 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %70 = load i32, i32* @WM8350_IRQ_EXT_BAT_FB, align 4
  %71 = call i32 @wm8350_mask_irq(%struct.wm8350* %69, i32 %70)
  %72 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %73 = load i32, i32* @WM8350_IRQ_EXT_BAT_FB, align 4
  %74 = call i32 @wm8350_free_irq(%struct.wm8350* %72, i32 %73)
  ret void
}

declare dso_local i32 @wm8350_mask_irq(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_free_irq(%struct.wm8350*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
