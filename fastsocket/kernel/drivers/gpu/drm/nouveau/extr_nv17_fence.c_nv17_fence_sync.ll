; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_fence.c_nv17_fence_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_fence.c_nv17_fence_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fence = type { i32 }
%struct.nouveau_channel = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.nv10_fence_priv* }
%struct.nv10_fence_priv = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@NV11_SUBCHAN_DMA_SEMAPHORE = common dso_local global i32 0, align 4
@NvSema = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv17_fence_sync(%struct.nouveau_fence* %0, %struct.nouveau_channel* %1, %struct.nouveau_channel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_fence*, align 8
  %6 = alloca %struct.nouveau_channel*, align 8
  %7 = alloca %struct.nouveau_channel*, align 8
  %8 = alloca %struct.nv10_fence_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_fence* %0, %struct.nouveau_fence** %5, align 8
  store %struct.nouveau_channel* %1, %struct.nouveau_channel** %6, align 8
  store %struct.nouveau_channel* %2, %struct.nouveau_channel** %7, align 8
  %11 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %12 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %14, align 8
  store %struct.nv10_fence_priv* %15, %struct.nv10_fence_priv** %8, align 8
  %16 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %17 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @mutex_trylock(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %94

25:                                               ; preds = %3
  %26 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %8, align 8
  %27 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %26, i32 0, i32 1
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %8, align 8
  %30 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %8, align 8
  %33 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 2
  store i32 %35, i32* %33, align 4
  %36 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %8, align 8
  %37 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %40 = call i32 @RING_SPACE(%struct.nouveau_channel* %39, i32 5)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %25
  %44 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %45 = load i32, i32* @NV11_SUBCHAN_DMA_SEMAPHORE, align 4
  %46 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %44, i32 0, i32 %45, i32 4)
  %47 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %48 = load i32, i32* @NvSema, align 4
  %49 = call i32 @OUT_RING(%struct.nouveau_channel* %47, i32 %48)
  %50 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %51 = call i32 @OUT_RING(%struct.nouveau_channel* %50, i32 0)
  %52 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 0
  %55 = call i32 @OUT_RING(%struct.nouveau_channel* %52, i32 %54)
  %56 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @OUT_RING(%struct.nouveau_channel* %56, i32 %58)
  %60 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %61 = call i32 @FIRE_RING(%struct.nouveau_channel* %60)
  br label %62

62:                                               ; preds = %43, %25
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %88, label %65

65:                                               ; preds = %62
  %66 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %67 = call i32 @RING_SPACE(%struct.nouveau_channel* %66, i32 5)
  store i32 %67, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %88, label %69

69:                                               ; preds = %65
  %70 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %71 = load i32, i32* @NV11_SUBCHAN_DMA_SEMAPHORE, align 4
  %72 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %70, i32 0, i32 %71, i32 4)
  %73 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %74 = load i32, i32* @NvSema, align 4
  %75 = call i32 @OUT_RING(%struct.nouveau_channel* %73, i32 %74)
  %76 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %77 = call i32 @OUT_RING(%struct.nouveau_channel* %76, i32 0)
  %78 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @OUT_RING(%struct.nouveau_channel* %78, i32 %80)
  %82 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 2
  %85 = call i32 @OUT_RING(%struct.nouveau_channel* %82, i32 %84)
  %86 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %87 = call i32 @FIRE_RING(%struct.nouveau_channel* %86)
  br label %88

88:                                               ; preds = %69, %65, %62
  %89 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %90 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %88, %22
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
