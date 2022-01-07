; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_tosakbd.c_tosakbd_activate_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_tosakbd.c_tosakbd_activate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOSA_GPIO_HIGH_STROBE_BIT = common dso_local global i32 0, align 4
@GPSR1 = common dso_local global i32 0, align 4
@GPDR1 = common dso_local global i32 0, align 4
@TOSA_GPIO_LOW_STROBE_BIT = common dso_local global i32 0, align 4
@GPSR2 = common dso_local global i32 0, align 4
@GPDR2 = common dso_local global i32 0, align 4
@KB_DISCHARGE_DELAY = common dso_local global i32 0, align 4
@TOSA_GPIO_ALL_SENSE_BIT = common dso_local global i32 0, align 4
@GEDR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tosakbd_activate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tosakbd_activate_all() #0 {
  %1 = load i32, i32* @TOSA_GPIO_HIGH_STROBE_BIT, align 4
  store i32 %1, i32* @GPSR1, align 4
  %2 = load i32, i32* @TOSA_GPIO_HIGH_STROBE_BIT, align 4
  %3 = load i32, i32* @GPDR1, align 4
  %4 = or i32 %3, %2
  store i32 %4, i32* @GPDR1, align 4
  %5 = load i32, i32* @TOSA_GPIO_LOW_STROBE_BIT, align 4
  store i32 %5, i32* @GPSR2, align 4
  %6 = load i32, i32* @TOSA_GPIO_LOW_STROBE_BIT, align 4
  %7 = load i32, i32* @GPDR2, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* @GPDR2, align 4
  %9 = load i32, i32* @KB_DISCHARGE_DELAY, align 4
  %10 = call i32 @udelay(i32 %9)
  %11 = load i32, i32* @TOSA_GPIO_ALL_SENSE_BIT, align 4
  %12 = load i32, i32* @GEDR2, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* @GEDR2, align 4
  ret void
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
