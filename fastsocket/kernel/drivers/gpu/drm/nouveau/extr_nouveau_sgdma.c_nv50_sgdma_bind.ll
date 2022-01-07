; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_sgdma.c_nv50_sgdma_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_sgdma.c_nv50_sgdma_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i64 }
%struct.ttm_mem_reg = type { %struct.nouveau_mem* }
%struct.nouveau_mem = type { i32, i64 }
%struct.nouveau_sgdma_be = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_tt*, %struct.ttm_mem_reg*)* @nv50_sgdma_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_sgdma_bind(%struct.ttm_tt* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca %struct.ttm_mem_reg*, align 8
  %5 = alloca %struct.nouveau_sgdma_be*, align 8
  %6 = alloca %struct.nouveau_mem*, align 8
  store %struct.ttm_tt* %0, %struct.ttm_tt** %3, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %4, align 8
  %7 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %8 = bitcast %struct.ttm_tt* %7 to %struct.nouveau_sgdma_be*
  store %struct.nouveau_sgdma_be* %8, %struct.nouveau_sgdma_be** %5, align 8
  %9 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %10 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %9, i32 0, i32 0
  %11 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  store %struct.nouveau_mem* %11, %struct.nouveau_mem** %6, align 8
  %12 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %13 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %18 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.nouveau_mem*, %struct.nouveau_mem** %6, align 8
  %21 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  br label %29

22:                                               ; preds = %2
  %23 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %5, align 8
  %24 = getelementptr inbounds %struct.nouveau_sgdma_be, %struct.nouveau_sgdma_be* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nouveau_mem*, %struct.nouveau_mem** %6, align 8
  %28 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %22, %16
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
