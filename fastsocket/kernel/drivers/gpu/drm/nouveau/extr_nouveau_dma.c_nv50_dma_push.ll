; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_dma.c_nv50_dma_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_dma.c_nv50_dma_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.nouveau_bo* }
%struct.nouveau_bo = type { i32 }
%struct.nouveau_vma = type { i64 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_dma_push(%struct.nouveau_channel* %0, %struct.nouveau_bo* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nouveau_channel*, align 8
  %6 = alloca %struct.nouveau_bo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_bo*, align 8
  %10 = alloca %struct.nouveau_vma*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %5, align 8
  store %struct.nouveau_bo* %1, %struct.nouveau_bo** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %14 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  store %struct.nouveau_bo* %16, %struct.nouveau_bo** %9, align 8
  %17 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %18 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %20, 2
  %22 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %23 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.nouveau_bo*, %struct.nouveau_bo** %6, align 8
  %28 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %29 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_6__* @nv_client(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.nouveau_vma* @nouveau_bo_vma_find(%struct.nouveau_bo* %27, i32 %33)
  store %struct.nouveau_vma* %34, %struct.nouveau_vma** %10, align 8
  %35 = load %struct.nouveau_vma*, %struct.nouveau_vma** %10, align 8
  %36 = icmp ne %struct.nouveau_vma* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.nouveau_vma*, %struct.nouveau_vma** %10, align 8
  %41 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  store i64 %45, i64* %12, align 8
  %46 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %47 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 1
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @lower_32_bits(i64 %56)
  %58 = call i32 @nouveau_bo_wr32(%struct.nouveau_bo* %53, i32 %54, i32 %57)
  %59 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @upper_32_bits(i64 %62)
  %64 = load i32, i32* %8, align 4
  %65 = shl i32 %64, 8
  %66 = or i32 %63, %65
  %67 = call i32 @nouveau_bo_wr32(%struct.nouveau_bo* %59, i32 %60, i32 %66)
  %68 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %69 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  %73 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %74 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %72, %76
  %78 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %79 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = call i32 (...) @DRM_MEMORYBARRIER()
  %82 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %83 = call i32 @nouveau_bo_rd32(%struct.nouveau_bo* %82, i32 0)
  %84 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %85 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %88 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @nv_wo32(i32 %86, i32 140, i32 %90)
  %92 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %93 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 8
  ret void
}

declare dso_local %struct.nouveau_vma* @nouveau_bo_vma_find(%struct.nouveau_bo*, i32) #1

declare dso_local %struct.TYPE_6__* @nv_client(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @nouveau_bo_wr32(%struct.nouveau_bo*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @DRM_MEMORYBARRIER(...) #1

declare dso_local i32 @nouveau_bo_rd32(%struct.nouveau_bo*, i32) #1

declare dso_local i32 @nv_wo32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
