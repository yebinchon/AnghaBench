; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm47xx/extr_gpio.c_gpio_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm47xx/extr_gpio.c_gpio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ssb_bcm47xx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BCM47XX_CHIPCO_GPIO_LINES = common dso_local global i32 0, align 4
@BCM47XX_EXTIF_GPIO_LINES = common dso_local global i32 0, align 4
@gpio_in_use = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gpio_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i64 @ssb_chipco_available(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ssb_bcm47xx, i32 0, i32 1))
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @BCM47XX_CHIPCO_GPIO_LINES, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %22

10:                                               ; preds = %5, %1
  %11 = call i64 @ssb_extif_available(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ssb_bcm47xx, i32 0, i32 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @BCM47XX_EXTIF_GPIO_LINES, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %22

18:                                               ; preds = %13, %10
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @gpio_in_use, align 4
  %21 = call i32 @clear_bit(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %17, %9
  ret void
}

declare dso_local i64 @ssb_chipco_available(i32*) #1

declare dso_local i64 @ssb_extif_available(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
