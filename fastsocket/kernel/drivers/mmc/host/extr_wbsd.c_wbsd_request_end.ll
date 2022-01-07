; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_wbsd.c_wbsd_request_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_wbsd.c_wbsd_request_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i64, i32, i32, i32* }
%struct.mmc_request = type { i32 }

@WBSD_IDX_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbsd_host*, %struct.mmc_request*)* @wbsd_request_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_request_end(%struct.wbsd_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.wbsd_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca i64, align 8
  store %struct.wbsd_host* %0, %struct.wbsd_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %7 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = call i64 (...) @claim_dma_lock()
  store i64 %11, i64* %5, align 8
  %12 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %13 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @disable_dma(i64 %14)
  %16 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %17 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @clear_dma_ff(i64 %18)
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @release_dma_lock(i64 %20)
  %22 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %23 = load i32, i32* @WBSD_IDX_DMA, align 4
  %24 = call i32 @wbsd_write_index(%struct.wbsd_host* %22, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %10, %2
  %26 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %27 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %29 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %32 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %35 = call i32 @mmc_request_done(i32 %33, %struct.mmc_request* %34)
  %36 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %37 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %36, i32 0, i32 1
  %38 = call i32 @spin_lock(i32* %37)
  ret void
}

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i64) #1

declare dso_local i32 @clear_dma_ff(i64) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @wbsd_write_index(%struct.wbsd_host*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
