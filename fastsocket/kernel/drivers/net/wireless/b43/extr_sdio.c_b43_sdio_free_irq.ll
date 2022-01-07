; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_sdio.c_b43_sdio_free_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_sdio.c_b43_sdio_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { %struct.sdio_func* }
%struct.sdio_func = type { i32 }
%struct.b43_sdio = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_sdio_free_irq(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.b43_sdio*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.ssb_bus*, %struct.ssb_bus** %11, align 8
  store %struct.ssb_bus* %12, %struct.ssb_bus** %3, align 8
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %14 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %13, i32 0, i32 0
  %15 = load %struct.sdio_func*, %struct.sdio_func** %14, align 8
  store %struct.sdio_func* %15, %struct.sdio_func** %4, align 8
  %16 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %17 = call %struct.b43_sdio* @sdio_get_drvdata(%struct.sdio_func* %16)
  store %struct.b43_sdio* %17, %struct.b43_sdio** %5, align 8
  %18 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %19 = call i32 @sdio_claim_host(%struct.sdio_func* %18)
  %20 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %21 = call i32 @sdio_release_irq(%struct.sdio_func* %20)
  %22 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %23 = call i32 @sdio_release_host(%struct.sdio_func* %22)
  %24 = load %struct.b43_sdio*, %struct.b43_sdio** %5, align 8
  %25 = getelementptr inbounds %struct.b43_sdio, %struct.b43_sdio* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.b43_sdio*, %struct.b43_sdio** %5, align 8
  %27 = getelementptr inbounds %struct.b43_sdio, %struct.b43_sdio* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  ret void
}

declare dso_local %struct.b43_sdio* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
