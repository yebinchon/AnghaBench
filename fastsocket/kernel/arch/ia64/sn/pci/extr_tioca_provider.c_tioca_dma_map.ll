; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/extr_tioca_provider.c_tioca_dma_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/extr_tioca_provider.c_tioca_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }

@SN_DMA_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_dev*, i64, i64, i32)* @tioca_dma_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tioca_dma_map(%struct.pci_dev* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @SN_DMA_MSI, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %45

16:                                               ; preds = %4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @tioca_dma_d64(i64 %22)
  store i64 %23, i64* %10, align 8
  br label %35

24:                                               ; preds = %16
  %25 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 281474976710655
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @tioca_dma_d48(%struct.pci_dev* %30, i64 %31)
  store i64 %32, i64* %10, align 8
  br label %34

33:                                               ; preds = %24
  store i64 0, i64* %10, align 8
  br label %34

34:                                               ; preds = %33, %29
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @tioca_dma_mapped(%struct.pci_dev* %39, i64 %40, i64 %41)
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i64, i64* %10, align 8
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %43, %15
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local i64 @tioca_dma_d64(i64) #1

declare dso_local i64 @tioca_dma_d48(%struct.pci_dev*, i64) #1

declare dso_local i64 @tioca_dma_mapped(%struct.pci_dev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
