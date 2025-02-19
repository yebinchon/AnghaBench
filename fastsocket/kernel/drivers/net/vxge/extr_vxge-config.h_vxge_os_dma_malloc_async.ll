; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-config.h_vxge_os_dma_malloc_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-config.h_vxge_os_dma_malloc_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i8*, i64)* @vxge_os_dma_malloc_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_os_dma_malloc_async(%struct.pci_dev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i64 (...) @in_interrupt()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = load i32, i32* @GFP_DMA, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %7, align 4
  br label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load i32, i32* @GFP_DMA, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @kmalloc(i64 %20, i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i32 @vxge_hw_blockpool_block_add(i8* %23, i8* %24, i64 %25, %struct.pci_dev* %26, %struct.pci_dev* %27)
  ret void
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @vxge_hw_blockpool_block_add(i8*, i8*, i64, %struct.pci_dev*, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
