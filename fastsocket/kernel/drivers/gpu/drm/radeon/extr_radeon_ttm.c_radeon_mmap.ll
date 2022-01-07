; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.file = type { %struct.drm_file* }
%struct.drm_file = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.vm_area_struct = type { i64, %struct.TYPE_9__* }

@DRM_FILE_PAGE_OFFSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ttm_vm_ops = common dso_local global %struct.TYPE_9__* null, align 8
@radeon_ttm_vm_ops = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@radeon_ttm_fault = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DRM_FILE_PAGE_OFFSET, align 8
  %13 = icmp slt i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = call i32 @drm_mmap(%struct.file* %18, %struct.vm_area_struct* %19)
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %2
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load %struct.drm_file*, %struct.drm_file** %23, align 8
  store %struct.drm_file* %24, %struct.drm_file** %6, align 8
  %25 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %26 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.radeon_device*, %struct.radeon_device** %30, align 8
  store %struct.radeon_device* %31, %struct.radeon_device** %7, align 8
  %32 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %33 = icmp eq %struct.radeon_device* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %66

37:                                               ; preds = %21
  %38 = load %struct.file*, %struct.file** %4, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %40 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = call i32 @ttm_bo_mmap(%struct.file* %38, %struct.vm_area_struct* %39, i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %66

51:                                               ; preds = %37
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ttm_vm_ops, align 8
  %53 = icmp eq %struct.TYPE_9__* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** @ttm_vm_ops, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ttm_vm_ops, align 8
  %62 = bitcast %struct.TYPE_9__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_9__* @radeon_ttm_vm_ops to i8*), i8* align 8 %62, i64 8, i1 false)
  store i32* @radeon_ttm_fault, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @radeon_ttm_vm_ops, i32 0, i32 0), align 8
  br label %63

63:                                               ; preds = %57, %51
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 1
  store %struct.TYPE_9__* @radeon_ttm_vm_ops, %struct.TYPE_9__** %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %49, %34, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @drm_mmap(%struct.file*, %struct.vm_area_struct*) #1

declare dso_local i32 @ttm_bo_mmap(%struct.file*, %struct.vm_area_struct*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
