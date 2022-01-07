; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dma.c_dma_region_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dma.c_dma_region_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_region = type { i64, i32*, i32*, i32*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_region_free(%struct.dma_region* %0) #0 {
  %2 = alloca %struct.dma_region*, align 8
  store %struct.dma_region* %0, %struct.dma_region** %2, align 8
  %3 = load %struct.dma_region*, %struct.dma_region** %2, align 8
  %4 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load %struct.dma_region*, %struct.dma_region** %2, align 8
  %9 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.dma_region*, %struct.dma_region** %2, align 8
  %12 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.dma_region*, %struct.dma_region** %2, align 8
  %15 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dma_region*, %struct.dma_region** %2, align 8
  %18 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pci_unmap_sg(i32* %10, i32* %13, i64 %16, i32 %19)
  %21 = load %struct.dma_region*, %struct.dma_region** %2, align 8
  %22 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.dma_region*, %struct.dma_region** %2, align 8
  %24 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %23, i32 0, i32 3
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %7, %1
  %26 = load %struct.dma_region*, %struct.dma_region** %2, align 8
  %27 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @vfree(i32* %28)
  %30 = load %struct.dma_region*, %struct.dma_region** %2, align 8
  %31 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.dma_region*, %struct.dma_region** %2, align 8
  %33 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @vfree(i32* %34)
  %36 = load %struct.dma_region*, %struct.dma_region** %2, align 8
  %37 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.dma_region*, %struct.dma_region** %2, align 8
  %39 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  ret void
}

declare dso_local i32 @pci_unmap_sg(i32*, i32*, i64, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
