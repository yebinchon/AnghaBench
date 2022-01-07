; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_reset_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_reset_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91mci_host = type { i32 }

@AT91_MCI_IMR = common dso_local global i32 0, align 4
@AT91_MCI_IDR = common dso_local global i32 0, align 4
@AT91_MCI_MR = common dso_local global i32 0, align 4
@AT91_MCI_SDCR = common dso_local global i32 0, align 4
@AT91_MCI_DTOR = common dso_local global i32 0, align 4
@AT91_MCI_CR = common dso_local global i32 0, align 4
@AT91_MCI_MCIDIS = common dso_local global i32 0, align 4
@AT91_MCI_SWRST = common dso_local global i32 0, align 4
@AT91_MCI_MCIEN = common dso_local global i32 0, align 4
@AT91_MCI_IER = common dso_local global i32 0, align 4
@AT91_MCI_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91mci_host*)* @at91_reset_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_reset_host(%struct.at91mci_host* %0) #0 {
  %2 = alloca %struct.at91mci_host*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.at91mci_host* %0, %struct.at91mci_host** %2, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %11 = load i32, i32* @AT91_MCI_IMR, align 4
  %12 = call i32 @at91_mci_read(%struct.at91mci_host* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %14 = load i32, i32* @AT91_MCI_IDR, align 4
  %15 = call i32 @at91_mci_write(%struct.at91mci_host* %13, i32 %14, i32 -1)
  %16 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %17 = load i32, i32* @AT91_MCI_MR, align 4
  %18 = call i32 @at91_mci_read(%struct.at91mci_host* %16, i32 %17)
  %19 = and i32 %18, 32767
  store i32 %19, i32* %4, align 4
  %20 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %21 = load i32, i32* @AT91_MCI_SDCR, align 4
  %22 = call i32 @at91_mci_read(%struct.at91mci_host* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %24 = load i32, i32* @AT91_MCI_DTOR, align 4
  %25 = call i32 @at91_mci_read(%struct.at91mci_host* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %27 = load i32, i32* @AT91_MCI_CR, align 4
  %28 = load i32, i32* @AT91_MCI_MCIDIS, align 4
  %29 = load i32, i32* @AT91_MCI_SWRST, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @at91_mci_write(%struct.at91mci_host* %26, i32 %27, i32 %30)
  %32 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %33 = load i32, i32* @AT91_MCI_CR, align 4
  %34 = load i32, i32* @AT91_MCI_MCIEN, align 4
  %35 = call i32 @at91_mci_write(%struct.at91mci_host* %32, i32 %33, i32 %34)
  %36 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %37 = load i32, i32* @AT91_MCI_MR, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @at91_mci_write(%struct.at91mci_host* %36, i32 %37, i32 %38)
  %40 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %41 = load i32, i32* @AT91_MCI_SDCR, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @at91_mci_write(%struct.at91mci_host* %40, i32 %41, i32 %42)
  %44 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %45 = load i32, i32* @AT91_MCI_DTOR, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @at91_mci_write(%struct.at91mci_host* %44, i32 %45, i32 %46)
  %48 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %49 = load i32, i32* @AT91_MCI_IER, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @at91_mci_write(%struct.at91mci_host* %48, i32 %49, i32 %50)
  %52 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %53 = load i32, i32* @AT91_MCI_SR, align 4
  %54 = call i32 @at91_mci_read(%struct.at91mci_host* %52, i32 %53)
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @local_irq_restore(i64 %55)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @at91_mci_read(%struct.at91mci_host*, i32) #1

declare dso_local i32 @at91_mci_write(%struct.at91mci_host*, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
