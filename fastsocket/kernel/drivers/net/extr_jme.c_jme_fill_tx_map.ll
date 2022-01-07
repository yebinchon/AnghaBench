; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_fill_tx_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_fill_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.txdesc = type { %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i8*, i8*, i32, i32 }
%struct.jme_buffer_info = type { i32, i64 }
%struct.page = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@TXFLAG_OWN = common dso_local global i32 0, align 4
@TXFLAG_64BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.txdesc*, %struct.jme_buffer_info*, %struct.page*, i32, i32, i64)* @jme_fill_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_fill_tx_map(%struct.pci_dev* %0, %struct.txdesc* %1, %struct.jme_buffer_info* %2, %struct.page* %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.txdesc*, align 8
  %10 = alloca %struct.jme_buffer_info*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %8, align 8
  store %struct.txdesc* %1, %struct.txdesc** %9, align 8
  store %struct.jme_buffer_info* %2, %struct.jme_buffer_info** %10, align 8
  store %struct.page* %3, %struct.page** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %17 = load %struct.page*, %struct.page** %11, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %21 = call i64 @pci_map_page(%struct.pci_dev* %16, %struct.page* %17, i32 %18, i32 %19, i32 %20)
  store i64 %21, i64* %15, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %23 = load i64, i64* %15, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %26 = call i32 @pci_dma_sync_single_for_device(%struct.pci_dev* %22, i64 %23, i32 %24, i32 %25)
  %27 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %28 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %32 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @TXFLAG_OWN, align 4
  %36 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %37 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %7
  %42 = load i32, i32* @TXFLAG_64BIT, align 4
  br label %44

43:                                               ; preds = %7
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %47 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @cpu_to_le16(i32 %51)
  %53 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %54 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load i64, i64* %15, align 8
  %57 = trunc i64 %56 to i32
  %58 = ashr i32 %57, 32
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %61 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load i64, i64* %15, align 8
  %64 = trunc i64 %63 to i32
  %65 = sext i32 %64 to i64
  %66 = and i64 %65, 4294967295
  %67 = trunc i64 %66 to i32
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %70 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %10, align 8
  %74 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %10, align 8
  %77 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  ret void
}

declare dso_local i64 @pci_map_page(%struct.pci_dev*, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(%struct.pci_dev*, i64, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
