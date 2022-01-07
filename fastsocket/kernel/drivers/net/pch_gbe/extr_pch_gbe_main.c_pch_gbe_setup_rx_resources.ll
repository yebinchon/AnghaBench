; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_setup_rx_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_setup_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.pch_gbe_rx_ring = type { i32, i32, i64, i64, i64, i32, i32 }
%struct.pch_gbe_rx_desc = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Unable to allocate memory for the receive descriptor ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DSC_INIT16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"rx_ring->desc = 0x%p  rx_ring->dma = 0x%08llx next_to_clean = 0x%08x  next_to_use = 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pch_gbe_setup_rx_resources(%struct.pch_gbe_adapter* %0, %struct.pch_gbe_rx_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pch_gbe_adapter*, align 8
  %5 = alloca %struct.pch_gbe_rx_ring*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pch_gbe_rx_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %4, align 8
  store %struct.pch_gbe_rx_ring* %1, %struct.pch_gbe_rx_ring** %5, align 8
  %10 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  %13 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %14 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 4, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @vzalloc(i32 %17)
  %19 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %20 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %22 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %101

29:                                               ; preds = %2
  %30 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %31 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %32, 4
  %34 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %35 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %39 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %42 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %41, i32 0, i32 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @dma_alloc_coherent(i32* %37, i32 %40, i64* %42, i32 %43)
  %45 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %46 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %48 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %29
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %54 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @vfree(i32 %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %101

59:                                               ; preds = %29
  %60 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %61 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %64 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memset(i32 %62, i32 0, i32 %65)
  %67 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %68 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %70 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %84, %59
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %74 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call %struct.pch_gbe_rx_desc* @PCH_GBE_RX_DESC(%struct.pch_gbe_rx_ring* byval(%struct.pch_gbe_rx_ring) align 8 %78, i32 %79)
  store %struct.pch_gbe_rx_desc* %80, %struct.pch_gbe_rx_desc** %7, align 8
  %81 = load i32, i32* @DSC_INIT16, align 4
  %82 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %7, align 8
  %83 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %71

87:                                               ; preds = %71
  %88 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %89 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %92 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %95 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %98 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @pr_debug(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %90, i64 %93, i64 %96, i64 %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %87, %51, %25
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.pch_gbe_rx_desc* @PCH_GBE_RX_DESC(%struct.pch_gbe_rx_ring* byval(%struct.pch_gbe_rx_ring) align 8, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
