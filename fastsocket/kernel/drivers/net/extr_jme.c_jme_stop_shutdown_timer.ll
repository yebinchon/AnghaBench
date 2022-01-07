; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_stop_shutdown_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_stop_shutdown_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32 }

@JME_TMCSR = common dso_local global i32 0, align 4
@JME_TIMER2 = common dso_local global i32 0, align 4
@JME_FLAG_SHUTDOWN = common dso_local global i32 0, align 4
@JME_APMC = common dso_local global i32 0, align 4
@JME_APMC_PCIE_SD_EN = common dso_local global i32 0, align 4
@JME_APMC_EPIEN_CTRL = common dso_local global i32 0, align 4
@JME_APMC_EPIEN_CTRL_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_stop_shutdown_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_stop_shutdown_timer(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %4 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %5 = load i32, i32* @JME_TMCSR, align 4
  %6 = call i32 @jwrite32f(%struct.jme_adapter* %4, i32 %5, i32 0)
  %7 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %8 = load i32, i32* @JME_TIMER2, align 4
  %9 = call i32 @jwrite32f(%struct.jme_adapter* %7, i32 %8, i32 0)
  %10 = load i32, i32* @JME_FLAG_SHUTDOWN, align 4
  %11 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %11, i32 0, i32 0
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  %14 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %15 = load i32, i32* @JME_APMC, align 4
  %16 = call i32 @jread32(%struct.jme_adapter* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @JME_APMC_PCIE_SD_EN, align 4
  %18 = load i32, i32* @JME_APMC_EPIEN_CTRL, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %24 = load i32, i32* @JME_APMC, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @JME_APMC_EPIEN_CTRL_DIS, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @jwrite32f(%struct.jme_adapter* %23, i32 %24, i32 %27)
  %29 = call i32 (...) @wmb()
  %30 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %31 = load i32, i32* @JME_APMC, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @jwrite32f(%struct.jme_adapter* %30, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @jwrite32f(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @jread32(%struct.jme_adapter*, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
