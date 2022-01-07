; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-ci.c_msp430_ir_deinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-ci.c_msp430_ir_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget_ci = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@MASK_06 = common dso_local global i32 0, align 4
@SAA7146_GPIO_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.budget_ci*)* @msp430_ir_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msp430_ir_deinit(%struct.budget_ci* %0) #0 {
  %2 = alloca %struct.budget_ci*, align 8
  %3 = alloca %struct.saa7146_dev*, align 8
  store %struct.budget_ci* %0, %struct.budget_ci** %2, align 8
  %4 = load %struct.budget_ci*, %struct.budget_ci** %2, align 8
  %5 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  store %struct.saa7146_dev* %7, %struct.saa7146_dev** %3, align 8
  %8 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %9 = load i32, i32* @MASK_06, align 4
  %10 = call i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev* %8, i32 %9)
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %12 = load i32, i32* @SAA7146_GPIO_INPUT, align 4
  %13 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %11, i32 3, i32 %12)
  %14 = load %struct.budget_ci*, %struct.budget_ci** %2, align 8
  %15 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = call i32 @tasklet_kill(i32* %16)
  %18 = load %struct.budget_ci*, %struct.budget_ci** %2, align 8
  %19 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @rc_unregister_device(i32 %21)
  ret void
}

declare dso_local i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @rc_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
