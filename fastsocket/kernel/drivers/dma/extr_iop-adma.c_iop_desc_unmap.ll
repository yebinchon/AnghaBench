; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_iop-adma.c_iop_desc_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_iop-adma.c_iop_desc_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_adma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.iop_adma_desc_slot = type { i32, i32, %struct.iop_adma_desc_slot*, %struct.dma_async_tx_descriptor }
%struct.dma_async_tx_descriptor = type { i32 }

@DMA_COMPL_SKIP_DEST_UNMAP = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_COMPL_SKIP_SRC_UNMAP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iop_adma_chan*, %struct.iop_adma_desc_slot*)* @iop_desc_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iop_desc_unmap(%struct.iop_adma_chan* %0, %struct.iop_adma_desc_slot* %1) #0 {
  %3 = alloca %struct.iop_adma_chan*, align 8
  %4 = alloca %struct.iop_adma_desc_slot*, align 8
  %5 = alloca %struct.dma_async_tx_descriptor*, align 8
  %6 = alloca %struct.iop_adma_desc_slot*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.iop_adma_chan* %0, %struct.iop_adma_chan** %3, align 8
  store %struct.iop_adma_desc_slot* %1, %struct.iop_adma_desc_slot** %4, align 8
  %14 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %15 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %14, i32 0, i32 3
  store %struct.dma_async_tx_descriptor* %15, %struct.dma_async_tx_descriptor** %5, align 8
  %16 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %17 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %16, i32 0, i32 2
  %18 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %17, align 8
  store %struct.iop_adma_desc_slot* %18, %struct.iop_adma_desc_slot** %6, align 8
  %19 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %3, align 8
  %20 = getelementptr inbounds %struct.iop_adma_chan, %struct.iop_adma_chan* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.device* %24, %struct.device** %7, align 8
  %25 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %6, align 8
  %26 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %29 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %6, align 8
  %32 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %6, align 8
  %35 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %3, align 8
  %36 = call i64 @iop_desc_get_dest_addr(%struct.iop_adma_desc_slot* %34, %struct.iop_adma_chan* %35)
  store i64 %36, i64* %12, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @DMA_COMPL_SKIP_DEST_UNMAP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  store i32 %45, i32* %13, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @dma_unmap_page(%struct.device* %49, i64 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %2
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @DMA_COMPL_SKIP_SRC_UNMAP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %73, %72, %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %10, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %6, align 8
  %66 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %3, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @iop_desc_get_src_addr(%struct.iop_adma_desc_slot* %65, %struct.iop_adma_chan* %66, i32 %67)
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %60

73:                                               ; preds = %64
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @DMA_TO_DEVICE, align 4
  %78 = call i32 @dma_unmap_page(%struct.device* %74, i64 %75, i32 %76, i32 %77)
  br label %60

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79, %54
  %81 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %82 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %81, i32 0, i32 2
  store %struct.iop_adma_desc_slot* null, %struct.iop_adma_desc_slot** %82, align 8
  ret void
}

declare dso_local i64 @iop_desc_get_dest_addr(%struct.iop_adma_desc_slot*, %struct.iop_adma_chan*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i32, i32) #1

declare dso_local i64 @iop_desc_get_src_addr(%struct.iop_adma_desc_slot*, %struct.iop_adma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
