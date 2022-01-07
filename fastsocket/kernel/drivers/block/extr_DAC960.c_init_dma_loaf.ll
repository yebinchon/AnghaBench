; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_init_dma_loaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_init_dma_loaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.dma_loaf = type { i64, i32, i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.dma_loaf*, i64)* @init_dma_loaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_dma_loaf(%struct.pci_dev* %0, %struct.dma_loaf* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.dma_loaf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.dma_loaf* %1, %struct.dma_loaf** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i8* @pci_alloc_consistent(%struct.pci_dev* %10, i64 %11, i32* %9)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.dma_loaf*, %struct.dma_loaf** %6, align 8
  %19 = getelementptr inbounds %struct.dma_loaf, %struct.dma_loaf* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load %struct.dma_loaf*, %struct.dma_loaf** %6, align 8
  %21 = getelementptr inbounds %struct.dma_loaf, %struct.dma_loaf* %20, i32 0, i32 4
  store i8* %17, i8** %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.dma_loaf*, %struct.dma_loaf** %6, align 8
  %24 = getelementptr inbounds %struct.dma_loaf, %struct.dma_loaf* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.dma_loaf*, %struct.dma_loaf** %6, align 8
  %26 = getelementptr inbounds %struct.dma_loaf, %struct.dma_loaf* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.dma_loaf*, %struct.dma_loaf** %6, align 8
  %29 = getelementptr inbounds %struct.dma_loaf, %struct.dma_loaf* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @memset(i8* %30, i32 0, i64 %31)
  store i32 1, i32* %4, align 4
  br label %33

33:                                               ; preds = %16, %15
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i8* @pci_alloc_consistent(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
