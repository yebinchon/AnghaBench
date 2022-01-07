; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dma.c_dma_region_sync_for_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dma.c_dma_region_sync_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_region = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_region_sync_for_device(%struct.dma_region* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dma_region*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.dma_region* %0, %struct.dma_region** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i64 1, i64* %6, align 8
  br label %13

13:                                               ; preds = %12, %3
  %14 = load %struct.dma_region*, %struct.dma_region** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @dma_region_find(%struct.dma_region* %14, i64 %15, i32 0, i64* %9)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.dma_region*, %struct.dma_region** %4, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = add i64 %18, %19
  %21 = sub i64 %20, 1
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dma_region_find(%struct.dma_region* %17, i64 %21, i32 %22, i64* %9)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.dma_region*, %struct.dma_region** %4, align 8
  %25 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.dma_region*, %struct.dma_region** %4, align 8
  %28 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %33, %34
  %36 = add nsw i32 %35, 1
  %37 = load %struct.dma_region*, %struct.dma_region** %4, align 8
  %38 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pci_dma_sync_sg_for_device(i32 %26, i32* %32, i32 %36, i32 %39)
  ret void
}

declare dso_local i32 @dma_region_find(%struct.dma_region*, i64, i32, i64*) #1

declare dso_local i32 @pci_dma_sync_sg_for_device(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
