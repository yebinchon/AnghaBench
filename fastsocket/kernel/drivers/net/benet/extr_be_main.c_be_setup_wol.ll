; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_setup_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_setup_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.be_dma_mem = type { i32, i32, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PCICFG_PM_CONTROL_OFFSET = common dso_local global i32 0, align 4
@PCICFG_PM_CONTROL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not enable Wake-on-lan\0A\00", align 1
@PCI_D3hot = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, i32)* @be_setup_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_setup_wol(%struct.be_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_dma_mem, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @ETH_ALEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = call i32 @memset(i32* %14, i32 0, i32 %15)
  %17 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  store i32 4, i32* %17, align 8
  %18 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load i32, i32* @__GFP_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call i32* @dma_alloc_coherent(i32* %21, i32 %23, i32* %24, i32 %27)
  %29 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  store i32* %28, i32** %29, align 8
  %30 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %108

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %82

37:                                               ; preds = %34
  %38 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* @PCICFG_PM_CONTROL_OFFSET, align 4
  %42 = load i32, i32* @PCICFG_PM_CONTROL_MASK, align 4
  %43 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %40, i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %37
  %47 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dma_free_coherent(i32* %55, i32 %57, i32* %59, i32 %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %108

64:                                               ; preds = %37
  %65 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %66 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @be_cmd_enable_magic_wol(%struct.be_adapter* %65, i32* %70, %struct.be_dma_mem* %6)
  store i32 %71, i32* %7, align 4
  %72 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i32, i32* @PCI_D3hot, align 4
  %76 = call i32 @pci_enable_wake(%struct.TYPE_5__* %74, i32 %75, i32 1)
  %77 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* @PCI_D3cold, align 4
  %81 = call i32 @pci_enable_wake(%struct.TYPE_5__* %79, i32 %80, i32 1)
  br label %95

82:                                               ; preds = %34
  %83 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %84 = call i32 @be_cmd_enable_magic_wol(%struct.be_adapter* %83, i32* %14, %struct.be_dma_mem* %6)
  store i32 %84, i32* %7, align 4
  %85 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %86 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* @PCI_D3hot, align 4
  %89 = call i32 @pci_enable_wake(%struct.TYPE_5__* %87, i32 %88, i32 0)
  %90 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %91 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i32, i32* @PCI_D3cold, align 4
  %94 = call i32 @pci_enable_wake(%struct.TYPE_5__* %92, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %82, %64
  %96 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %97 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dma_free_coherent(i32* %99, i32 %101, i32* %103, i32 %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %108

108:                                              ; preds = %95, %46, %33
  %109 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #2

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #2

declare dso_local i32 @be_cmd_enable_magic_wol(%struct.be_adapter*, i32*, %struct.be_dma_mem*) #2

declare dso_local i32 @pci_enable_wake(%struct.TYPE_5__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
