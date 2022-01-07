; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_set_transfer_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_set_transfer_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SDHCI_INT_DATA_AVAIL = common dso_local global i32 0, align 4
@SDHCI_INT_SPACE_AVAIL = common dso_local global i32 0, align 4
@SDHCI_INT_DMA_END = common dso_local global i32 0, align 4
@SDHCI_INT_ADMA_ERROR = common dso_local global i32 0, align 4
@SDHCI_REQ_USE_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_set_transfer_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_set_transfer_irqs(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %5 = load i32, i32* @SDHCI_INT_DATA_AVAIL, align 4
  %6 = load i32, i32* @SDHCI_INT_SPACE_AVAIL, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @SDHCI_INT_DMA_END, align 4
  %9 = load i32, i32* @SDHCI_INT_ADMA_ERROR, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %12 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SDHCI_REQ_USE_DMA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @sdhci_clear_set_irqs(%struct.sdhci_host* %18, i32 %19, i32 %20)
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @sdhci_clear_set_irqs(%struct.sdhci_host* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @sdhci_clear_set_irqs(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
