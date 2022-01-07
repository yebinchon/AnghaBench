; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dw_dmac.c_dwc_tx_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dw_dmac.c_dwc_tx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dw_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dw_dma_chan = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"tx_submit: started %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"tx_submit: queued %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_async_tx_descriptor*)* @dwc_tx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_tx_submit(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca %struct.dma_async_tx_descriptor*, align 8
  %3 = alloca %struct.dw_desc*, align 8
  %4 = alloca %struct.dw_dma_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %2, align 8
  %6 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %7 = call %struct.dw_desc* @txd_to_dw_desc(%struct.dma_async_tx_descriptor* %6)
  store %struct.dw_desc* %7, %struct.dw_desc** %3, align 8
  %8 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %9 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dw_dma_chan* @to_dw_dma_chan(i32 %10)
  store %struct.dw_dma_chan* %11, %struct.dw_dma_chan** %4, align 8
  %12 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %13 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %16 = load %struct.dw_desc*, %struct.dw_desc** %3, align 8
  %17 = call i32 @dwc_assign_cookie(%struct.dw_dma_chan* %15, %struct.dw_desc* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %19 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %18, i32 0, i32 2
  %20 = call i64 @list_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %1
  %23 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %24 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @chan2dev(i32 %25)
  %27 = load %struct.dw_desc*, %struct.dw_desc** %3, align 8
  %28 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_vdbg(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %33 = load %struct.dw_desc*, %struct.dw_desc** %3, align 8
  %34 = call i32 @dwc_dostart(%struct.dw_dma_chan* %32, %struct.dw_desc* %33)
  %35 = load %struct.dw_desc*, %struct.dw_desc** %3, align 8
  %36 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %35, i32 0, i32 0
  %37 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %38 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %37, i32 0, i32 2
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  br label %55

40:                                               ; preds = %1
  %41 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %42 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @chan2dev(i32 %43)
  %45 = load %struct.dw_desc*, %struct.dw_desc** %3, align 8
  %46 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_vdbg(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.dw_desc*, %struct.dw_desc** %3, align 8
  %51 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %50, i32 0, i32 0
  %52 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %53 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %52, i32 0, i32 1
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  br label %55

55:                                               ; preds = %40, %22
  %56 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %57 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.dw_desc* @txd_to_dw_desc(%struct.dma_async_tx_descriptor*) #1

declare dso_local %struct.dw_dma_chan* @to_dw_dma_chan(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dwc_assign_cookie(%struct.dw_dma_chan*, %struct.dw_desc*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @chan2dev(i32) #1

declare dso_local i32 @dwc_dostart(%struct.dw_dma_chan*, %struct.dw_desc*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
