; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_alloc_rx_buffers_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_alloc_rx_buffers_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.pch_gbe_rx_ring = type { i32, i32, i64, %struct.pch_gbe_buffer*, i32 }
%struct.pch_gbe_buffer = type { i32, i64 }

@PCH_GBE_RESERVE_MEMORY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Unable to allocate memory for the receive pool buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pch_gbe_adapter*, %struct.pch_gbe_rx_ring*, i32)* @pch_gbe_alloc_rx_buffers_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_alloc_rx_buffers_pool(%struct.pch_gbe_adapter* %0, %struct.pch_gbe_rx_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pch_gbe_adapter*, align 8
  %6 = alloca %struct.pch_gbe_rx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.pch_gbe_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %5, align 8
  store %struct.pch_gbe_rx_ring* %1, %struct.pch_gbe_rx_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %13, i32 0, i32 1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %8, align 8
  %16 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %20 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = mul i32 %21, %22
  %24 = load i32, i32* @PCH_GBE_RESERVE_MEMORY, align 4
  %25 = add i32 %23, %24
  store i32 %25, i32* %12, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %30 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %29, i32 0, i32 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i64 @dma_alloc_coherent(i32* %27, i32 %28, i32* %30, i32 %31)
  %33 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %34 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %36 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %3
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %82

43:                                               ; preds = %3
  %44 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %45 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @memset(i64 %46, i32 0, i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %51 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %78, %43
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %55 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %52
  %59 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %60 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %59, i32 0, i32 3
  %61 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %61, i64 %63
  store %struct.pch_gbe_buffer* %64, %struct.pch_gbe_buffer** %9, align 8
  %65 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %66 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = mul i32 %68, %69
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %67, %71
  %73 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %74 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %77 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %58
  %79 = load i32, i32* %10, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %52

81:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %39
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
