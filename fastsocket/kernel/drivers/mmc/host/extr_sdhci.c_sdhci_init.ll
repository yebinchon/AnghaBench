; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SDHCI_RESET_ALL = common dso_local global i32 0, align 4
@SDHCI_INT_ALL_MASK = common dso_local global i32 0, align 4
@SDHCI_INT_BUS_POWER = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_END_BIT = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_CRC = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_TIMEOUT = common dso_local global i32 0, align 4
@SDHCI_INT_INDEX = common dso_local global i32 0, align 4
@SDHCI_INT_END_BIT = common dso_local global i32 0, align 4
@SDHCI_INT_CRC = common dso_local global i32 0, align 4
@SDHCI_INT_TIMEOUT = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_END = common dso_local global i32 0, align 4
@SDHCI_INT_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_init(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %3 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %4 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %5 = call i32 @sdhci_reset(%struct.sdhci_host* %3, i32 %4)
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %7 = load i32, i32* @SDHCI_INT_ALL_MASK, align 4
  %8 = load i32, i32* @SDHCI_INT_BUS_POWER, align 4
  %9 = load i32, i32* @SDHCI_INT_DATA_END_BIT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SDHCI_INT_DATA_CRC, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SDHCI_INT_DATA_TIMEOUT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SDHCI_INT_INDEX, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SDHCI_INT_END_BIT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SDHCI_INT_CRC, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SDHCI_INT_TIMEOUT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SDHCI_INT_DATA_END, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SDHCI_INT_RESPONSE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @sdhci_clear_set_irqs(%struct.sdhci_host* %6, i32 %7, i32 %26)
  ret void
}

declare dso_local i32 @sdhci_reset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_clear_set_irqs(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
