; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_unmap_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_unmap_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }
%struct.tx_ring_desc = type { i32* }

@tx_done = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unmapping OAL area.\0A\00", align 1
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unmapping frag %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.tx_ring_desc*, i32)* @ql_unmap_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_unmap_send(%struct.ql_adapter* %0, %struct.tx_ring_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca %struct.tx_ring_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store %struct.tx_ring_desc* %1, %struct.tx_ring_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %85, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %88

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 7
  br i1 %17, label %18, label %54

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 7
  br i1 %20, label %21, label %54

21:                                               ; preds = %18, %12
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 7
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %26 = load i32, i32* @tx_done, align 4
  %27 = load i32, i32* @KERN_DEBUG, align 4
  %28 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %29 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %25, i32 %26, i32 %27, i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %24, %21
  %33 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %5, align 8
  %37 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* @mapaddr, align 4
  %43 = call i32 @pci_unmap_addr(i32* %41, i32 %42)
  %44 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %5, align 8
  %45 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* @maplen, align 4
  %51 = call i32 @pci_unmap_len(i32* %49, i32 %50)
  %52 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %53 = call i32 @pci_unmap_single(i32 %35, i32 %43, i32 %51, i32 %52)
  br label %84

54:                                               ; preds = %18, %15
  %55 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %56 = load i32, i32* @tx_done, align 4
  %57 = load i32, i32* @KERN_DEBUG, align 4
  %58 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %59 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %55, i32 %56, i32 %57, i32 %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %5, align 8
  %67 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* @mapaddr, align 4
  %73 = call i32 @pci_unmap_addr(i32* %71, i32 %72)
  %74 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %5, align 8
  %75 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* @maplen, align 4
  %81 = call i32 @pci_unmap_len(i32* %79, i32 %80)
  %82 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %83 = call i32 @pci_unmap_page(i32 %65, i32 %73, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %54, %32
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %8

88:                                               ; preds = %8
  ret void
}

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_addr(i32*, i32) #1

declare dso_local i32 @pci_unmap_len(i32*, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
