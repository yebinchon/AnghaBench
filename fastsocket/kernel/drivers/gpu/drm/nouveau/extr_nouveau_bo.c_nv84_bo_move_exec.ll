; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv84_bo_move_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv84_bo_move_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_mem_reg = type { i32, %struct.nouveau_mem* }
%struct.nouveau_mem = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NvSubCopy = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, %struct.ttm_buffer_object*, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*)* @nv84_bo_move_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv84_bo_move_exec(%struct.nouveau_channel* %0, %struct.ttm_buffer_object* %1, %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca %struct.nouveau_channel*, align 8
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca %struct.ttm_mem_reg*, align 8
  %8 = alloca %struct.ttm_mem_reg*, align 8
  %9 = alloca %struct.nouveau_mem*, align 8
  %10 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %5, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %6, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %7, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %8, align 8
  %11 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %12 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 1
  %13 = load %struct.nouveau_mem*, %struct.nouveau_mem** %12, align 8
  store %struct.nouveau_mem* %13, %struct.nouveau_mem** %9, align 8
  %14 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %15 = call i32 @RING_SPACE(%struct.nouveau_channel* %14, i32 7)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %4
  %19 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %20 = load i32, i32* @NvSubCopy, align 4
  %21 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %19, i32 %20, i32 772, i32 6)
  %22 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %23 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %24 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = call i32 @OUT_RING(%struct.nouveau_channel* %22, i32 %27)
  %29 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %30 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %31 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @upper_32_bits(i32 %35)
  %37 = call i32 @OUT_RING(%struct.nouveau_channel* %29, i32 %36)
  %38 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %39 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %40 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @lower_32_bits(i32 %44)
  %46 = call i32 @OUT_RING(%struct.nouveau_channel* %38, i32 %45)
  %47 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %48 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %49 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @upper_32_bits(i32 %53)
  %55 = call i32 @OUT_RING(%struct.nouveau_channel* %47, i32 %54)
  %56 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %57 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %58 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @lower_32_bits(i32 %62)
  %64 = call i32 @OUT_RING(%struct.nouveau_channel* %56, i32 %63)
  %65 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %66 = call i32 @OUT_RING(%struct.nouveau_channel* %65, i32 0)
  br label %67

67:                                               ; preds = %18, %4
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
