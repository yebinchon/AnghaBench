; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_spitzkbd.c_spitzkbd_activate_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_spitzkbd.c_spitzkbd_activate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPITZ_GPIO_G0_STROBE_BIT = common dso_local global i32 0, align 4
@GPSR0 = common dso_local global i32 0, align 4
@GPDR0 = common dso_local global i32 0, align 4
@SPITZ_GPIO_G1_STROBE_BIT = common dso_local global i32 0, align 4
@GPSR1 = common dso_local global i32 0, align 4
@GPDR1 = common dso_local global i32 0, align 4
@SPITZ_GPIO_G2_STROBE_BIT = common dso_local global i32 0, align 4
@GPSR2 = common dso_local global i32 0, align 4
@GPDR2 = common dso_local global i32 0, align 4
@SPITZ_GPIO_G3_STROBE_BIT = common dso_local global i32 0, align 4
@GPSR3 = common dso_local global i32 0, align 4
@GPDR3 = common dso_local global i32 0, align 4
@KB_DISCHARGE_DELAY = common dso_local global i32 0, align 4
@SPITZ_GPIO_G0_SENSE_BIT = common dso_local global i32 0, align 4
@GEDR0 = common dso_local global i32 0, align 4
@SPITZ_GPIO_G1_SENSE_BIT = common dso_local global i32 0, align 4
@GEDR1 = common dso_local global i32 0, align 4
@SPITZ_GPIO_G2_SENSE_BIT = common dso_local global i32 0, align 4
@GEDR2 = common dso_local global i32 0, align 4
@SPITZ_GPIO_G3_SENSE_BIT = common dso_local global i32 0, align 4
@GEDR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @spitzkbd_activate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spitzkbd_activate_all() #0 {
  %1 = load i32, i32* @SPITZ_GPIO_G0_STROBE_BIT, align 4
  store i32 %1, i32* @GPSR0, align 4
  %2 = load i32, i32* @SPITZ_GPIO_G0_STROBE_BIT, align 4
  %3 = load i32, i32* @GPDR0, align 4
  %4 = or i32 %3, %2
  store i32 %4, i32* @GPDR0, align 4
  %5 = load i32, i32* @SPITZ_GPIO_G1_STROBE_BIT, align 4
  store i32 %5, i32* @GPSR1, align 4
  %6 = load i32, i32* @SPITZ_GPIO_G1_STROBE_BIT, align 4
  %7 = load i32, i32* @GPDR1, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* @GPDR1, align 4
  %9 = load i32, i32* @SPITZ_GPIO_G2_STROBE_BIT, align 4
  store i32 %9, i32* @GPSR2, align 4
  %10 = load i32, i32* @SPITZ_GPIO_G2_STROBE_BIT, align 4
  %11 = load i32, i32* @GPDR2, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* @GPDR2, align 4
  %13 = load i32, i32* @SPITZ_GPIO_G3_STROBE_BIT, align 4
  store i32 %13, i32* @GPSR3, align 4
  %14 = load i32, i32* @SPITZ_GPIO_G3_STROBE_BIT, align 4
  %15 = load i32, i32* @GPDR3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* @GPDR3, align 4
  %17 = load i32, i32* @KB_DISCHARGE_DELAY, align 4
  %18 = call i32 @udelay(i32 %17)
  %19 = load i32, i32* @SPITZ_GPIO_G0_SENSE_BIT, align 4
  store i32 %19, i32* @GEDR0, align 4
  %20 = load i32, i32* @SPITZ_GPIO_G1_SENSE_BIT, align 4
  store i32 %20, i32* @GEDR1, align 4
  %21 = load i32, i32* @SPITZ_GPIO_G2_SENSE_BIT, align 4
  store i32 %21, i32* @GEDR2, align 4
  %22 = load i32, i32* @SPITZ_GPIO_G3_SENSE_BIT, align 4
  store i32 %22, i32* @GEDR3, align 4
  ret void
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
