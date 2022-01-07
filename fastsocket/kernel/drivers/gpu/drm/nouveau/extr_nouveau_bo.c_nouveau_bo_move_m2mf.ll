; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_move_m2mf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_move_m2mf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel.0 = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ttm_buffer_object = type { %struct.ttm_mem_reg, i32 }
%struct.ttm_mem_reg = type { %struct.nouveau_mem* }
%struct.nouveau_mem = type { i32* }
%struct.nouveau_drm = type { %struct.TYPE_4__, i32, %struct.nouveau_channel.0* }
%struct.TYPE_4__ = type { i32 (%struct.nouveau_channel*, %struct.ttm_buffer_object*, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*)* }
%struct.nouveau_channel = type opaque
%struct.nouveau_bo = type { i32 }
%struct.TYPE_6__ = type { i64 }

@NV_50 = common dso_local global i64 0, align 8
@chan = common dso_local global %struct.nouveau_channel.0* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*)* @nouveau_bo_move_m2mf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_bo_move_m2mf(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, i32 %3, %struct.ttm_mem_reg* %4) #0 {
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ttm_mem_reg*, align 8
  %11 = alloca %struct.nouveau_drm*, align 8
  %12 = alloca %struct.nouveau_channel.0*, align 8
  %13 = alloca %struct.nouveau_bo*, align 8
  %14 = alloca %struct.ttm_mem_reg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nouveau_mem*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.ttm_mem_reg* %4, %struct.ttm_mem_reg** %10, align 8
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %18 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.nouveau_drm* @nouveau_bdev(i32 %19)
  store %struct.nouveau_drm* %20, %struct.nouveau_drm** %11, align 8
  %21 = load %struct.nouveau_drm*, %struct.nouveau_drm** %11, align 8
  %22 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %21, i32 0, i32 2
  %23 = load %struct.nouveau_channel.0*, %struct.nouveau_channel.0** %22, align 8
  store %struct.nouveau_channel.0* %23, %struct.nouveau_channel.0** %12, align 8
  store %struct.nouveau_channel.0* %23, %struct.nouveau_channel.0** %12, align 8
  %24 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %25 = call %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object* %24)
  store %struct.nouveau_bo* %25, %struct.nouveau_bo** %13, align 8
  %26 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %27 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %26, i32 0, i32 0
  store %struct.ttm_mem_reg* %27, %struct.ttm_mem_reg** %14, align 8
  %28 = load %struct.nouveau_channel.0*, %struct.nouveau_channel.0** %12, align 8
  %29 = getelementptr inbounds %struct.nouveau_channel.0, %struct.nouveau_channel.0* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.nouveau_drm*, %struct.nouveau_drm** %11, align 8
  %34 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.TYPE_6__* @nv_device(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NV_50, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %5
  %42 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %14, align 8
  %43 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %42, i32 0, i32 0
  %44 = load %struct.nouveau_mem*, %struct.nouveau_mem** %43, align 8
  store %struct.nouveau_mem* %44, %struct.nouveau_mem** %16, align 8
  %45 = load %struct.nouveau_channel.0*, %struct.nouveau_channel.0** %12, align 8
  %46 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %47 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %14, align 8
  %48 = load %struct.nouveau_mem*, %struct.nouveau_mem** %16, align 8
  %49 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = call i32 @nouveau_vma_getmap(%struct.nouveau_channel.0* %45, %struct.nouveau_bo* %46, %struct.ttm_mem_reg* %47, i32* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %91

56:                                               ; preds = %41
  %57 = load %struct.nouveau_channel.0*, %struct.nouveau_channel.0** %12, align 8
  %58 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %59 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %60 = load %struct.nouveau_mem*, %struct.nouveau_mem** %16, align 8
  %61 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = call i32 @nouveau_vma_getmap(%struct.nouveau_channel.0* %57, %struct.nouveau_bo* %58, %struct.ttm_mem_reg* %59, i32* %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %91

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %5
  %70 = load %struct.nouveau_drm*, %struct.nouveau_drm** %11, align 8
  %71 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32 (%struct.nouveau_channel*, %struct.ttm_buffer_object*, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*)*, i32 (%struct.nouveau_channel*, %struct.ttm_buffer_object*, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*)** %72, align 8
  %74 = load %struct.nouveau_channel.0*, %struct.nouveau_channel.0** %12, align 8
  %75 = bitcast %struct.nouveau_channel.0* %74 to %struct.nouveau_channel*
  %76 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %77 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %78 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %77, i32 0, i32 0
  %79 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %80 = call i32 %73(%struct.nouveau_channel* %75, %struct.ttm_buffer_object* %76, %struct.ttm_mem_reg* %78, %struct.ttm_mem_reg* %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %69
  %84 = load %struct.nouveau_channel.0*, %struct.nouveau_channel.0** %12, align 8
  %85 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %89 = call i32 @nouveau_bo_move_accel_cleanup(%struct.nouveau_channel.0* %84, %struct.nouveau_bo* %85, i32 %86, i32 %87, %struct.ttm_mem_reg* %88)
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %83, %69
  br label %91

91:                                               ; preds = %90, %67, %55
  %92 = load %struct.nouveau_channel.0*, %struct.nouveau_channel.0** %12, align 8
  %93 = getelementptr inbounds %struct.nouveau_channel.0, %struct.nouveau_channel.0* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %15, align 4
  ret i32 %97
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_6__* @nv_device(i32) #1

declare dso_local i32 @nouveau_vma_getmap(%struct.nouveau_channel.0*, %struct.nouveau_bo*, %struct.ttm_mem_reg*, i32*) #1

declare dso_local i32 @nouveau_bo_move_accel_cleanup(%struct.nouveau_channel.0*, %struct.nouveau_bo*, i32, i32, %struct.ttm_mem_reg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
