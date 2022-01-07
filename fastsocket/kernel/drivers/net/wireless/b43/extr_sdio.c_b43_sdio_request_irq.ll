; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_sdio.c_b43_sdio_request_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_sdio.c_b43_sdio_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { %struct.sdio_func* }
%struct.sdio_func = type { i32 }
%struct.b43_sdio = type { void (%struct.b43_wldev*)*, %struct.b43_wldev* }

@b43_sdio_interrupt_dispatcher = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_sdio_request_irq(%struct.b43_wldev* %0, void (%struct.b43_wldev*)* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca void (%struct.b43_wldev*)*, align 8
  %5 = alloca %struct.ssb_bus*, align 8
  %6 = alloca %struct.sdio_func*, align 8
  %7 = alloca %struct.b43_sdio*, align 8
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store void (%struct.b43_wldev*)* %1, void (%struct.b43_wldev*)** %4, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.ssb_bus*, %struct.ssb_bus** %14, align 8
  store %struct.ssb_bus* %15, %struct.ssb_bus** %5, align 8
  %16 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %17 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %16, i32 0, i32 0
  %18 = load %struct.sdio_func*, %struct.sdio_func** %17, align 8
  store %struct.sdio_func* %18, %struct.sdio_func** %6, align 8
  %19 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %20 = call %struct.b43_sdio* @sdio_get_drvdata(%struct.sdio_func* %19)
  store %struct.b43_sdio* %20, %struct.b43_sdio** %7, align 8
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %22 = load %struct.b43_sdio*, %struct.b43_sdio** %7, align 8
  %23 = getelementptr inbounds %struct.b43_sdio, %struct.b43_sdio* %22, i32 0, i32 1
  store %struct.b43_wldev* %21, %struct.b43_wldev** %23, align 8
  %24 = load void (%struct.b43_wldev*)*, void (%struct.b43_wldev*)** %4, align 8
  %25 = load %struct.b43_sdio*, %struct.b43_sdio** %7, align 8
  %26 = getelementptr inbounds %struct.b43_sdio, %struct.b43_sdio* %25, i32 0, i32 0
  store void (%struct.b43_wldev*)* %24, void (%struct.b43_wldev*)** %26, align 8
  %27 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %28 = call i32 @sdio_claim_host(%struct.sdio_func* %27)
  %29 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %30 = load i32, i32* @b43_sdio_interrupt_dispatcher, align 4
  %31 = call i32 @sdio_claim_irq(%struct.sdio_func* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %33 = call i32 @sdio_release_host(%struct.sdio_func* %32)
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local %struct.b43_sdio* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_claim_irq(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
