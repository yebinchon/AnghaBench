; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pxa.c_pxa_periodic_irq_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pxa.c_pxa_periodic_irq_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pxa_rtc = type { i32 }

@RTSR_PIALE = common dso_local global i32 0, align 4
@RTSR_PICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @pxa_periodic_irq_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_periodic_irq_set_state(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pxa_rtc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.pxa_rtc* @dev_get_drvdata(%struct.device* %6)
  store %struct.pxa_rtc* %7, %struct.pxa_rtc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.pxa_rtc*, %struct.pxa_rtc** %5, align 8
  %12 = load i32, i32* @RTSR_PIALE, align 4
  %13 = load i32, i32* @RTSR_PICE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @rtsr_set_bits(%struct.pxa_rtc* %11, i32 %14)
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.pxa_rtc*, %struct.pxa_rtc** %5, align 8
  %18 = load i32, i32* @RTSR_PIALE, align 4
  %19 = load i32, i32* @RTSR_PICE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @rtsr_clear_bits(%struct.pxa_rtc* %17, i32 %20)
  br label %22

22:                                               ; preds = %16, %10
  ret i32 0
}

declare dso_local %struct.pxa_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtsr_set_bits(%struct.pxa_rtc*, i32) #1

declare dso_local i32 @rtsr_clear_bits(%struct.pxa_rtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
