; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91mci_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AT91_MCI_CR = common dso_local global i32 0, align 4
@AT91_MCI_MCIEN = common dso_local global i32 0, align 4
@AT91_MCI_IDR = common dso_local global i32 0, align 4
@AT91_MCI_DTOR = common dso_local global i32 0, align 4
@AT91_MCI_DTOMUL_1M = common dso_local global i32 0, align 4
@AT91_MCI_DTOCYC = common dso_local global i32 0, align 4
@AT91_MCI_PDCMODE = common dso_local global i32 0, align 4
@AT91_MCI_RDPROOF = common dso_local global i32 0, align 4
@AT91_MCI_WRPROOF = common dso_local global i32 0, align 4
@AT91_MCI_MR = common dso_local global i32 0, align 4
@AT91_MCI_SDCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91mci_host*)* @at91_mci_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_mci_enable(%struct.at91mci_host* %0) #0 {
  %2 = alloca %struct.at91mci_host*, align 8
  %3 = alloca i32, align 4
  store %struct.at91mci_host* %0, %struct.at91mci_host** %2, align 8
  %4 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %5 = load i32, i32* @AT91_MCI_CR, align 4
  %6 = load i32, i32* @AT91_MCI_MCIEN, align 4
  %7 = call i32 @at91_mci_write(%struct.at91mci_host* %4, i32 %5, i32 %6)
  %8 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %9 = load i32, i32* @AT91_MCI_IDR, align 4
  %10 = call i32 @at91_mci_write(%struct.at91mci_host* %8, i32 %9, i32 -1)
  %11 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %12 = load i32, i32* @AT91_MCI_DTOR, align 4
  %13 = load i32, i32* @AT91_MCI_DTOMUL_1M, align 4
  %14 = load i32, i32* @AT91_MCI_DTOCYC, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @at91_mci_write(%struct.at91mci_host* %11, i32 %12, i32 %15)
  %17 = load i32, i32* @AT91_MCI_PDCMODE, align 4
  %18 = or i32 %17, 842
  store i32 %18, i32* %3, align 4
  %19 = call i64 (...) @cpu_is_at91sam9260()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = call i64 (...) @cpu_is_at91sam9263()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21, %1
  %25 = load i32, i32* @AT91_MCI_RDPROOF, align 4
  %26 = load i32, i32* @AT91_MCI_WRPROOF, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %24, %21
  %31 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %32 = load i32, i32* @AT91_MCI_MR, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @at91_mci_write(%struct.at91mci_host* %31, i32 %32, i32 %33)
  %35 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %36 = load i32, i32* @AT91_MCI_SDCR, align 4
  %37 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %38 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @at91_mci_write(%struct.at91mci_host* %35, i32 %36, i32 %41)
  ret void
}

declare dso_local i32 @at91_mci_write(%struct.at91mci_host*, i32, i32) #1

declare dso_local i64 @cpu_is_at91sam9260(...) #1

declare dso_local i64 @cpu_is_at91sam9263(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
