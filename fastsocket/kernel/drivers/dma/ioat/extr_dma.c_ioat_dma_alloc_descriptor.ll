; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.c_ioat_dma_alloc_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.c_ioat_dma_alloc_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_desc_sw = type { %struct.TYPE_4__, %struct.ioat_dma_descriptor*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ioat_dma_descriptor = type { i32 }
%struct.ioat_dma_chan = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.ioatdma_device* }
%struct.ioatdma_device = type { i32 }

@ioat1_tx_submit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ioat_desc_sw* (%struct.ioat_dma_chan*, i32)* @ioat_dma_alloc_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ioat_desc_sw* @ioat_dma_alloc_descriptor(%struct.ioat_dma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.ioat_desc_sw*, align 8
  %4 = alloca %struct.ioat_dma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ioat_dma_descriptor*, align 8
  %7 = alloca %struct.ioat_desc_sw*, align 8
  %8 = alloca %struct.ioatdma_device*, align 8
  %9 = alloca i32, align 4
  store %struct.ioat_dma_chan* %0, %struct.ioat_dma_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ioat_dma_chan*, %struct.ioat_dma_chan** %4, align 8
  %11 = getelementptr inbounds %struct.ioat_dma_chan, %struct.ioat_dma_chan* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.ioatdma_device*, %struct.ioatdma_device** %12, align 8
  store %struct.ioatdma_device* %13, %struct.ioatdma_device** %8, align 8
  %14 = load %struct.ioatdma_device*, %struct.ioatdma_device** %8, align 8
  %15 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.ioat_dma_descriptor* @pci_pool_alloc(i32 %16, i32 %17, i32* %9)
  store %struct.ioat_dma_descriptor* %18, %struct.ioat_dma_descriptor** %6, align 8
  %19 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %6, align 8
  %20 = icmp ne %struct.ioat_dma_descriptor* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store %struct.ioat_desc_sw* null, %struct.ioat_desc_sw** %3, align 8
  br label %68

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.ioat_desc_sw* @kzalloc(i32 24, i32 %27)
  store %struct.ioat_desc_sw* %28, %struct.ioat_desc_sw** %7, align 8
  %29 = load %struct.ioat_desc_sw*, %struct.ioat_desc_sw** %7, align 8
  %30 = icmp ne %struct.ioat_desc_sw* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.ioatdma_device*, %struct.ioatdma_device** %8, align 8
  %37 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @pci_pool_free(i32 %38, %struct.ioat_dma_descriptor* %39, i32 %40)
  store %struct.ioat_desc_sw* null, %struct.ioat_desc_sw** %3, align 8
  br label %68

42:                                               ; preds = %26
  %43 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %6, align 8
  %44 = call i32 @memset(%struct.ioat_dma_descriptor* %43, i32 0, i32 4)
  %45 = load %struct.ioat_desc_sw*, %struct.ioat_desc_sw** %7, align 8
  %46 = getelementptr inbounds %struct.ioat_desc_sw, %struct.ioat_desc_sw* %45, i32 0, i32 2
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.ioat_desc_sw*, %struct.ioat_desc_sw** %7, align 8
  %49 = getelementptr inbounds %struct.ioat_desc_sw, %struct.ioat_desc_sw* %48, i32 0, i32 0
  %50 = load %struct.ioat_dma_chan*, %struct.ioat_dma_chan** %4, align 8
  %51 = getelementptr inbounds %struct.ioat_dma_chan, %struct.ioat_dma_chan* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_4__* %49, i32* %52)
  %54 = load i32, i32* @ioat1_tx_submit, align 4
  %55 = load %struct.ioat_desc_sw*, %struct.ioat_desc_sw** %7, align 8
  %56 = getelementptr inbounds %struct.ioat_desc_sw, %struct.ioat_desc_sw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %6, align 8
  %59 = load %struct.ioat_desc_sw*, %struct.ioat_desc_sw** %7, align 8
  %60 = getelementptr inbounds %struct.ioat_desc_sw, %struct.ioat_desc_sw* %59, i32 0, i32 1
  store %struct.ioat_dma_descriptor* %58, %struct.ioat_dma_descriptor** %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.ioat_desc_sw*, %struct.ioat_desc_sw** %7, align 8
  %63 = getelementptr inbounds %struct.ioat_desc_sw, %struct.ioat_desc_sw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.ioat_desc_sw*, %struct.ioat_desc_sw** %7, align 8
  %66 = call i32 @set_desc_id(%struct.ioat_desc_sw* %65, i32 -1)
  %67 = load %struct.ioat_desc_sw*, %struct.ioat_desc_sw** %7, align 8
  store %struct.ioat_desc_sw* %67, %struct.ioat_desc_sw** %3, align 8
  br label %68

68:                                               ; preds = %42, %35, %25
  %69 = load %struct.ioat_desc_sw*, %struct.ioat_desc_sw** %3, align 8
  ret %struct.ioat_desc_sw* %69
}

declare dso_local %struct.ioat_dma_descriptor* @pci_pool_alloc(i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ioat_desc_sw* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_pool_free(i32, %struct.ioat_dma_descriptor*, i32) #1

declare dso_local i32 @memset(%struct.ioat_dma_descriptor*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @set_desc_id(%struct.ioat_desc_sw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
