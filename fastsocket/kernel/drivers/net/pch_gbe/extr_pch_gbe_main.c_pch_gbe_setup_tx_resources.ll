; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_setup_tx_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_setup_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.pch_gbe_tx_ring = type { i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.pch_gbe_tx_desc = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Unable to allocate memory for the buffer information\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Unable to allocate memory for the transmit descriptor ring\0A\00", align 1
@DSC_INIT16 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [92 x i8] c"tx_ring->desc = 0x%p  tx_ring->dma = 0x%08llx\0Anext_to_clean = 0x%08x  next_to_use = 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pch_gbe_setup_tx_resources(%struct.pch_gbe_adapter* %0, %struct.pch_gbe_tx_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pch_gbe_adapter*, align 8
  %5 = alloca %struct.pch_gbe_tx_ring*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pch_gbe_tx_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %4, align 8
  store %struct.pch_gbe_tx_ring* %1, %struct.pch_gbe_tx_ring** %5, align 8
  %10 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  %13 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %14 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 4, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @vzalloc(i32 %17)
  %19 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %20 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %22 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %104

29:                                               ; preds = %2
  %30 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %31 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %32, 4
  %34 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %35 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %39 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %42 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %41, i32 0, i32 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @dma_alloc_coherent(i32* %37, i32 %40, i64* %42, i32 %43)
  %45 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %46 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %48 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %29
  %52 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %53 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @vfree(i32 %54)
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %104

59:                                               ; preds = %29
  %60 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %61 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %64 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memset(i32 %62, i32 0, i32 %65)
  %67 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %68 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %70 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %72 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %71, i32 0, i32 6
  %73 = call i32 @spin_lock_init(i32* %72)
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %87, %59
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %77 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call %struct.pch_gbe_tx_desc* @PCH_GBE_TX_DESC(%struct.pch_gbe_tx_ring* byval(%struct.pch_gbe_tx_ring) align 8 %81, i32 %82)
  store %struct.pch_gbe_tx_desc* %83, %struct.pch_gbe_tx_desc** %7, align 8
  %84 = load i32, i32* @DSC_INIT16, align 4
  %85 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %7, align 8
  %86 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %74

90:                                               ; preds = %74
  %91 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %92 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %95 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %98 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %101 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @pr_debug(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i64 0, i64 0), i32 %93, i64 %96, i64 %99, i64 %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %90, %51, %25
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.pch_gbe_tx_desc* @PCH_GBE_TX_DESC(%struct.pch_gbe_tx_ring* byval(%struct.pch_gbe_tx_ring) align 8, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
