; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-pci.c_flexcop_pci_dma_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-pci.c_flexcop_pci_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_pci = type { i32, i32, i32*, i32 }

@FC_DEFAULT_DMA1_BUFSIZE = common dso_local global i32 0, align 4
@FC_DEFAULT_DMA2_BUFSIZE = common dso_local global i32 0, align 4
@FC_SRAM_DEST_MEDIA = common dso_local global i32 0, align 4
@FC_SRAM_DEST_NET = common dso_local global i32 0, align 4
@FC_SRAM_DEST_TARGET_DMA1 = common dso_local global i32 0, align 4
@FC_SRAM_DEST_CAO = common dso_local global i32 0, align 4
@FC_SRAM_DEST_CAI = common dso_local global i32 0, align 4
@FC_SRAM_DEST_TARGET_DMA2 = common dso_local global i32 0, align 4
@FC_PCI_DMA_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_pci*)* @flexcop_pci_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_pci_dma_init(%struct.flexcop_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flexcop_pci*, align 8
  %4 = alloca i32, align 4
  store %struct.flexcop_pci* %0, %struct.flexcop_pci** %3, align 8
  %5 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %6 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %9 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* @FC_DEFAULT_DMA1_BUFSIZE, align 4
  %13 = call i32 @flexcop_dma_allocate(i32 %7, i32* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %20 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %23 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* @FC_DEFAULT_DMA2_BUFSIZE, align 4
  %27 = call i32 @flexcop_dma_allocate(i32 %21, i32* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %18
  %31 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %32 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = call i32 @flexcop_dma_free(i32* %34)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %60

37:                                               ; preds = %18
  %38 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %39 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FC_SRAM_DEST_MEDIA, align 4
  %42 = load i32, i32* @FC_SRAM_DEST_NET, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @FC_SRAM_DEST_TARGET_DMA1, align 4
  %45 = call i32 @flexcop_sram_set_dest(i32 %40, i32 %43, i32 %44)
  %46 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %47 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FC_SRAM_DEST_CAO, align 4
  %50 = load i32, i32* @FC_SRAM_DEST_CAI, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @FC_SRAM_DEST_TARGET_DMA2, align 4
  %53 = call i32 @flexcop_sram_set_dest(i32 %48, i32 %51, i32 %52)
  %54 = load i32, i32* @FC_PCI_DMA_INIT, align 4
  %55 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %56 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %37, %30, %16
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @flexcop_dma_allocate(i32, i32*, i32) #1

declare dso_local i32 @flexcop_dma_free(i32*) #1

declare dso_local i32 @flexcop_sram_set_dest(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
