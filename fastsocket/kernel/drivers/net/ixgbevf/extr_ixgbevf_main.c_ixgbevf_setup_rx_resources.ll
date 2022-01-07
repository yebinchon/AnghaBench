; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_setup_rx_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_setup_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ixgbevf_ring = type { i32, i32, i64, i64, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbevf_setup_rx_resources(%struct.ixgbevf_adapter* %0, %struct.ixgbevf_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbevf_adapter*, align 8
  %5 = alloca %struct.ixgbevf_ring*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %4, align 8
  store %struct.ixgbevf_ring* %1, %struct.ixgbevf_ring** %5, align 8
  %8 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %12 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32* @vzalloc(i32 %17)
  %19 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %20 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %19, i32 0, i32 4
  store i32* %18, i32** %20, align 8
  %21 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %22 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %68

26:                                               ; preds = %2
  %27 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %28 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %34 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %36 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ALIGN(i32 %37, i32 4096)
  %39 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %40 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %44 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %47 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %46, i32 0, i32 6
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @dma_alloc_coherent(i32* %42, i32 %45, i32* %47, i32 %48)
  %50 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %51 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %53 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %26
  %57 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %58 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @vfree(i32* %59)
  %61 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %62 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %61, i32 0, i32 4
  store i32* null, i32** %62, align 8
  br label %68

63:                                               ; preds = %26
  %64 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %65 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %67 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  store i32 0, i32* %3, align 4
  br label %71

68:                                               ; preds = %56, %25
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
