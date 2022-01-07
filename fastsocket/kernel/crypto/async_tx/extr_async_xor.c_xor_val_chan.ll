; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_async_xor.c_xor_val_chan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_async_xor.c_xor_val_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.async_submit_ctl = type { i32 }
%struct.page = type { i32 }

@DMA_XOR_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.async_submit_ctl*, %struct.page*, %struct.page**, i32, i64)* @xor_val_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @xor_val_chan(%struct.async_submit_ctl* %0, %struct.page* %1, %struct.page** %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.async_submit_ctl*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.async_submit_ctl* %0, %struct.async_submit_ctl** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store %struct.page** %2, %struct.page*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %11 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %6, align 8
  %12 = load i32, i32* @DMA_XOR_VAL, align 4
  %13 = load %struct.page**, %struct.page*** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i64, i64* %10, align 8
  %16 = call %struct.dma_chan* @async_tx_find_channel(%struct.async_submit_ctl* %11, i32 %12, %struct.page** %7, i32 1, %struct.page** %13, i32 %14, i64 %15)
  ret %struct.dma_chan* %16
}

declare dso_local %struct.dma_chan* @async_tx_find_channel(%struct.async_submit_ctl*, i32, %struct.page**, i32, %struct.page**, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
