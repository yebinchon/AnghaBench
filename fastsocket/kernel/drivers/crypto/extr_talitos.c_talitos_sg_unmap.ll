; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_sg_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_sg_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_edesc = type { i32, i32, i64, i64 }
%struct.scatterlist = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.talitos_edesc*, %struct.scatterlist*, %struct.scatterlist*)* @talitos_sg_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @talitos_sg_unmap(%struct.device* %0, %struct.talitos_edesc* %1, %struct.scatterlist* %2, %struct.scatterlist* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.talitos_edesc*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.talitos_edesc* %1, %struct.talitos_edesc** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %8, align 8
  %11 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %12 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %17

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %16, %15
  %18 = phi i32 [ %13, %15 ], [ 1, %16 ]
  store i32 %18, i32* %9, align 4
  %19 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %20 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %23
  %26 = phi i32 [ %21, %23 ], [ 1, %24 ]
  store i32 %26, i32* %10, align 4
  %27 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %28 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %29 = icmp ne %struct.scatterlist* %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %25
  %31 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %32 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  %39 = call i32 @talitos_unmap_sg_chain(%struct.device* %36, %struct.scatterlist* %37, i32 %38)
  br label %46

40:                                               ; preds = %30
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @DMA_TO_DEVICE, align 4
  %45 = call i32 @dma_unmap_sg(%struct.device* %41, %struct.scatterlist* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %48 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %54 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %55 = call i32 @talitos_unmap_sg_chain(%struct.device* %52, %struct.scatterlist* %53, i32 %54)
  br label %62

56:                                               ; preds = %46
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %61 = call i32 @dma_unmap_sg(%struct.device* %57, %struct.scatterlist* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %51
  br label %80

63:                                               ; preds = %25
  %64 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %65 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %71 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %72 = call i32 @talitos_unmap_sg_chain(%struct.device* %69, %struct.scatterlist* %70, i32 %71)
  br label %79

73:                                               ; preds = %63
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %78 = call i32 @dma_unmap_sg(%struct.device* %74, %struct.scatterlist* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %68
  br label %80

80:                                               ; preds = %79, %62
  ret void
}

declare dso_local i32 @talitos_unmap_sg_chain(%struct.device*, %struct.scatterlist*, i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
