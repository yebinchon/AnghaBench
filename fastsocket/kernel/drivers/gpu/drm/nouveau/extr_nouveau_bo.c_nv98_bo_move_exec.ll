; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv98_bo_move_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv98_bo_move_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_mem_reg = type { i32, %struct.nouveau_mem* }
%struct.nouveau_mem = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NvSubCopy = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, %struct.ttm_buffer_object*, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*)* @nv98_bo_move_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv98_bo_move_exec(%struct.nouveau_channel* %0, %struct.ttm_buffer_object* %1, %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg* %3) #0 {
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
  %21 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %19, i32 %20, i32 800, i32 6)
  %22 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %23 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %24 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @upper_32_bits(i32 %28)
  %30 = call i32 @OUT_RING(%struct.nouveau_channel* %22, i32 %29)
  %31 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %32 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %33 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @lower_32_bits(i32 %37)
  %39 = call i32 @OUT_RING(%struct.nouveau_channel* %31, i32 %38)
  %40 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %41 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %42 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @upper_32_bits(i32 %46)
  %48 = call i32 @OUT_RING(%struct.nouveau_channel* %40, i32 %47)
  %49 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %50 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %51 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @lower_32_bits(i32 %55)
  %57 = call i32 @OUT_RING(%struct.nouveau_channel* %49, i32 %56)
  %58 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %59 = call i32 @OUT_RING(%struct.nouveau_channel* %58, i32 0)
  %60 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %61 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %62 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PAGE_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = call i32 @OUT_RING(%struct.nouveau_channel* %60, i32 %65)
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
