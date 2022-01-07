; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dma.c_dma_region_offset_to_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dma.c_dma_region_offset_to_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_region = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dma_region_offset_to_bus(%struct.dma_region* %0, i64 %1) #0 {
  %3 = alloca %struct.dma_region*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.scatterlist*, align 8
  store %struct.dma_region* %0, %struct.dma_region** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.dma_region*, %struct.dma_region** %3, align 8
  %8 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %7, i32 0, i32 0
  %9 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %10 = load %struct.dma_region*, %struct.dma_region** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @dma_region_find(%struct.dma_region* %10, i64 %11, i32 0, i64* %5)
  %13 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %9, i64 %12
  store %struct.scatterlist* %13, %struct.scatterlist** %6, align 8
  %14 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %15 = call i64 @sg_dma_address(%struct.scatterlist* %14)
  %16 = load i64, i64* %5, align 8
  %17 = add i64 %15, %16
  ret i64 %17
}

declare dso_local i64 @dma_region_find(%struct.dma_region*, i64, i32, i64*) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
