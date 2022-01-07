; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_iop-adma.c_iop_adma_run_tx_complete_actions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_iop-adma.c_iop_adma_run_tx_complete_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_adma_desc_slot = type { i64, i64, %struct.dma_async_tx_descriptor }
%struct.dma_async_tx_descriptor = type { i64, i32, i32 (i32)* }
%struct.iop_adma_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iop_adma_desc_slot*, %struct.iop_adma_chan*, i64)* @iop_adma_run_tx_complete_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iop_adma_run_tx_complete_actions(%struct.iop_adma_desc_slot* %0, %struct.iop_adma_chan* %1, i64 %2) #0 {
  %4 = alloca %struct.iop_adma_desc_slot*, align 8
  %5 = alloca %struct.iop_adma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  store %struct.iop_adma_desc_slot* %0, %struct.iop_adma_desc_slot** %4, align 8
  store %struct.iop_adma_chan* %1, %struct.iop_adma_chan** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %9 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %8, i32 0, i32 2
  store %struct.dma_async_tx_descriptor* %9, %struct.dma_async_tx_descriptor** %7, align 8
  %10 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %11 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %17 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %3
  %21 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %22 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %25 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %27 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %26, i32 0, i32 2
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = icmp ne i32 (i32)* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %32 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %31, i32 0, i32 2
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %35 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %33(i32 %36)
  br label %38

38:                                               ; preds = %30, %20
  %39 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %40 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %45 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %50 = call i64 @iop_desc_is_pq(%struct.iop_adma_desc_slot* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %54 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %55 = call i32 @iop_desc_unmap_pq(%struct.iop_adma_chan* %53, %struct.iop_adma_desc_slot* %54)
  br label %60

56:                                               ; preds = %48
  %57 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %58 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %59 = call i32 @iop_desc_unmap(%struct.iop_adma_chan* %57, %struct.iop_adma_desc_slot* %58)
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %43, %38
  br label %62

62:                                               ; preds = %61, %3
  %63 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %64 = call i32 @dma_run_dependencies(%struct.dma_async_tx_descriptor* %63)
  %65 = load i64, i64* %6, align 8
  ret i64 %65
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @iop_desc_is_pq(%struct.iop_adma_desc_slot*) #1

declare dso_local i32 @iop_desc_unmap_pq(%struct.iop_adma_chan*, %struct.iop_adma_desc_slot*) #1

declare dso_local i32 @iop_desc_unmap(%struct.iop_adma_chan*, %struct.iop_adma_desc_slot*) #1

declare dso_local i32 @dma_run_dependencies(%struct.dma_async_tx_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
