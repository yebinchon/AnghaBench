; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-av.c_ciintf_deinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-av.c_ciintf_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget_av = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@SAA7146_GPIO_INPUT = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@MASK_27 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.budget_av*)* @ciintf_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciintf_deinit(%struct.budget_av* %0) #0 {
  %2 = alloca %struct.budget_av*, align 8
  %3 = alloca %struct.saa7146_dev*, align 8
  store %struct.budget_av* %0, %struct.budget_av** %2, align 8
  %4 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %5 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  store %struct.saa7146_dev* %7, %struct.saa7146_dev** %3, align 8
  %8 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %9 = load i32, i32* @SAA7146_GPIO_INPUT, align 4
  %10 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %8, i32 0, i32 %9)
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %12 = load i32, i32* @SAA7146_GPIO_INPUT, align 4
  %13 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %11, i32 1, i32 %12)
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %15 = load i32, i32* @SAA7146_GPIO_INPUT, align 4
  %16 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %14, i32 2, i32 %15)
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %18 = load i32, i32* @SAA7146_GPIO_INPUT, align 4
  %19 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %17, i32 3, i32 %18)
  %20 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %21 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %20, i32 0, i32 0
  %22 = call i32 @dvb_ca_en50221_release(i32* %21)
  %23 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %24 = load i32, i32* @MC1, align 4
  %25 = load i32, i32* @MASK_27, align 4
  %26 = call i32 @saa7146_write(%struct.saa7146_dev* %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @dvb_ca_en50221_release(i32*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
