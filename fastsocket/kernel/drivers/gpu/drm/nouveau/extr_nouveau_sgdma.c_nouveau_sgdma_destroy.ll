; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_sgdma.c_nouveau_sgdma_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_sgdma.c_nouveau_sgdma_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32 }
%struct.nouveau_sgdma_be = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_tt*)* @nouveau_sgdma_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_sgdma_destroy(%struct.ttm_tt* %0) #0 {
  %2 = alloca %struct.ttm_tt*, align 8
  %3 = alloca %struct.nouveau_sgdma_be*, align 8
  store %struct.ttm_tt* %0, %struct.ttm_tt** %2, align 8
  %4 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %5 = bitcast %struct.ttm_tt* %4 to %struct.nouveau_sgdma_be*
  store %struct.nouveau_sgdma_be* %5, %struct.nouveau_sgdma_be** %3, align 8
  %6 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %7 = icmp ne %struct.ttm_tt* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_sgdma_be, %struct.nouveau_sgdma_be* %9, i32 0, i32 0
  %11 = call i32 @ttm_dma_tt_fini(i32* %10)
  %12 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %3, align 8
  %13 = call i32 @kfree(%struct.nouveau_sgdma_be* %12)
  br label %14

14:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @ttm_dma_tt_fini(i32*) #1

declare dso_local i32 @kfree(%struct.nouveau_sgdma_be*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
