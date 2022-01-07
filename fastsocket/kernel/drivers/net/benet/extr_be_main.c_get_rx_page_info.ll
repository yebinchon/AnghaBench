; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_get_rx_page_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_get_rx_page_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_page_info = type { i32, i32 }
%struct.be_rx_obj = type { %struct.be_rx_page_info*, %struct.be_queue_info, %struct.be_adapter* }
%struct.be_queue_info = type { i32 }
%struct.be_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bus = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.be_rx_page_info* (%struct.be_rx_obj*, i64)* @get_rx_page_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj* %0, i64 %1) #0 {
  %3 = alloca %struct.be_rx_obj*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca %struct.be_rx_page_info*, align 8
  %7 = alloca %struct.be_queue_info*, align 8
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %9 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %8, i32 0, i32 2
  %10 = load %struct.be_adapter*, %struct.be_adapter** %9, align 8
  store %struct.be_adapter* %10, %struct.be_adapter** %5, align 8
  %11 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %12 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %11, i32 0, i32 1
  store %struct.be_queue_info* %12, %struct.be_queue_info** %7, align 8
  %13 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %14 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %13, i32 0, i32 0
  %15 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %15, i64 %16
  store %struct.be_rx_page_info* %17, %struct.be_rx_page_info** %6, align 8
  %18 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %6, align 8
  %19 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %6, align 8
  %26 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %2
  %30 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %31 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %6, align 8
  %35 = load i32, i32* @bus, align 4
  %36 = call i32 @pci_unmap_addr(%struct.be_rx_page_info* %34, i32 %35)
  %37 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = call i32 @dma_unmap_page(i32* %33, i32 %36, i32 %39, i32 %40)
  %42 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %6, align 8
  %43 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %29, %2
  %45 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %46 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %45, i32 0, i32 0
  %47 = call i32 @atomic_dec(i32* %46)
  %48 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %6, align 8
  ret %struct.be_rx_page_info* %48
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_addr(%struct.be_rx_page_info*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
