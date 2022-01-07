; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_setup_rx_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_setup_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.igbvf_ring = type { i32, i32, i32*, %struct.igbvf_adapter*, i64, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Unable to allocate memory for the receive descriptor ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igbvf_setup_rx_resources(%struct.igbvf_adapter* %0, %struct.igbvf_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.igbvf_adapter*, align 8
  %5 = alloca %struct.igbvf_ring*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %4, align 8
  store %struct.igbvf_ring* %1, %struct.igbvf_ring** %5, align 8
  %9 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %13 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32* @vmalloc(i32 %18)
  %20 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %21 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %23 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %70

27:                                               ; preds = %2
  %28 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %29 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @memset(i32* %30, i32 0, i32 %31)
  store i32 4, i32* %8, align 4
  %33 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %34 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %39 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %41 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ALIGN(i32 %42, i32 4096)
  %44 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %45 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %49 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %52 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %51, i32 0, i32 7
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @dma_alloc_coherent(i32* %47, i32 %50, i32* %52, i32 %53)
  %55 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %56 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %58 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %27
  br label %70

62:                                               ; preds = %27
  %63 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %64 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  %65 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %66 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %68 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %69 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %68, i32 0, i32 3
  store %struct.igbvf_adapter* %67, %struct.igbvf_adapter** %69, align 8
  store i32 0, i32* %3, align 4
  br label %84

70:                                               ; preds = %61, %26
  %71 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %72 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @vfree(i32* %73)
  %75 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %76 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %75, i32 0, i32 2
  store i32* null, i32** %76, align 8
  %77 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %77, i32 0, i32 0
  %79 = load %struct.pci_dev*, %struct.pci_dev** %78, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %70, %62
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
