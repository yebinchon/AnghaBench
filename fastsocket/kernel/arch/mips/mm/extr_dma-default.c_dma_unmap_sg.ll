; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_dma-default.c_dma_unmap_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_dma-default.c_dma_unmap_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32, i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_unmap_sg(%struct.device* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @DMA_NONE, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %51, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call i32 @plat_device_is_coherent(%struct.device* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %30 = call i64 @sg_virt(%struct.scatterlist* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %36 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @__dma_sync(i64 %34, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %28
  br label %41

41:                                               ; preds = %40, %24, %20
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %44 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %47 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @plat_unmap_dma_mem(%struct.device* %42, i32 %45, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %55 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %54, i32 1
  store %struct.scatterlist* %55, %struct.scatterlist** %6, align 8
  br label %16

56:                                               ; preds = %16
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @plat_device_is_coherent(%struct.device*) #1

declare dso_local i64 @sg_virt(%struct.scatterlist*) #1

declare dso_local i32 @__dma_sync(i64, i32, i32) #1

declare dso_local i32 @plat_unmap_dma_mem(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
