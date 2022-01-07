; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_alloc_proxy_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_alloc_proxy_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx4_ib_qp = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.mlx4_ib_qp*)* @alloc_proxy_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_proxy_bufs(%struct.ib_device* %0, %struct.mlx4_ib_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.mlx4_ib_qp*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.mlx4_ib_qp* %1, %struct.mlx4_ib_qp** %5, align 8
  %7 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %8 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kmalloc(i32 %13, i32 %14)
  %16 = bitcast i8* %15 to %struct.TYPE_5__*
  %17 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %17, i32 0, i32 0
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %18, align 8
  %19 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %114

26:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %74, %26
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %27
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kmalloc(i32 4, i32 %35)
  %37 = bitcast i8* %36 to %struct.TYPE_5__*
  %38 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %44, align 8
  %45 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %34
  br label %78

55:                                               ; preds = %34
  %56 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %57 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %66 = call i32 @ib_dma_map_single(%struct.ib_device* %56, %struct.TYPE_5__* %64, i32 4, i32 %65)
  %67 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %68 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32 %66, i32* %73, align 8
  br label %74

74:                                               ; preds = %55
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %27

77:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %114

78:                                               ; preds = %54
  br label %79

79:                                               ; preds = %82, %78
  %80 = load i32, i32* %6, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %6, align 4
  %85 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %86 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %87 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %95 = call i32 @ib_dma_unmap_single(%struct.ib_device* %85, i32 %93, i32 4, i32 %94)
  %96 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %97 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = call i32 @kfree(%struct.TYPE_5__* %103)
  br label %79

105:                                              ; preds = %79
  %106 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %107 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = call i32 @kfree(%struct.TYPE_5__* %108)
  %110 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %111 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %110, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %111, align 8
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %105, %77, %23
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ib_dma_map_single(%struct.ib_device*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
