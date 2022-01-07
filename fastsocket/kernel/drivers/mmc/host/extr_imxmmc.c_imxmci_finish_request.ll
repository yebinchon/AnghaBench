; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_finish_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_finish_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxmci_host = type { i32, i32, i32*, i32*, i32*, i32, i32, i64, i32 }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IMXMCI_PEND_WAIT_RESP_m = common dso_local global i32 0, align 4
@IMXMCI_PEND_DMA_END_m = common dso_local global i32 0, align 4
@IMXMCI_PEND_DMA_DATA_m = common dso_local global i32 0, align 4
@IMXMCI_PEND_CPU_DATA_m = common dso_local global i32 0, align 4
@IMXMCI_INT_MASK_DEFAULT = common dso_local global i32 0, align 4
@MMC_REG_INT_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imxmci_host*, %struct.mmc_request*)* @imxmci_finish_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imxmci_finish_request(%struct.imxmci_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.imxmci_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca i64, align 8
  store %struct.imxmci_host* %0, %struct.imxmci_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %7 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %6, i32 0, i32 6
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load i32, i32* @IMXMCI_PEND_WAIT_RESP_m, align 4
  %11 = load i32, i32* @IMXMCI_PEND_DMA_END_m, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @IMXMCI_PEND_DMA_DATA_m, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @IMXMCI_PEND_CPU_DATA_m, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %19 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* @IMXMCI_INT_MASK_DEFAULT, align 4
  %23 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %24 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 8
  %25 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %26 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %29 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MMC_REG_INT_MASK, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writew(i32 %27, i64 %32)
  %34 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %35 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %34, i32 0, i32 6
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %39 = icmp ne %struct.mmc_request* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %2
  %41 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %52 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %45, %40, %2
  %54 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %55 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %54, i32 0, i32 4
  store i32* null, i32** %55, align 8
  %56 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %57 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %56, i32 0, i32 3
  store i32* null, i32** %57, align 8
  %58 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %59 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %61 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %64 = call i32 @mmc_request_done(i32 %62, %struct.mmc_request* %63)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
