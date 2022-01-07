; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_vm.c_ttm_bo_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_vm.c_ttm_bo_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i32, i32, i32, %struct.ttm_buffer_object*, i32*, i32 }
%struct.ttm_buffer_object = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ttm_bo_driver* }
%struct.ttm_bo_driver = type { i32 (%struct.ttm_buffer_object*, %struct.file.0*)* }
%struct.file.0 = type opaque
%struct.ttm_bo_device = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not find buffer object to map\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ttm_bo_vm_ops = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_mmap(%struct.file* %0, %struct.vm_area_struct* %1, %struct.ttm_bo_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.ttm_bo_device*, align 8
  %8 = alloca %struct.ttm_bo_driver*, align 8
  %9 = alloca %struct.ttm_buffer_object*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store %struct.ttm_bo_device* %2, %struct.ttm_bo_device** %7, align 8
  %11 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %12 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %11, i32 0, i32 0
  %13 = call i32 @read_lock(i32* %12)
  %14 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = call %struct.ttm_buffer_object* @ttm_bo_vm_lookup_rb(%struct.ttm_bo_device* %14, i32 %17, i32 %26)
  store %struct.ttm_buffer_object* %27, %struct.ttm_buffer_object** %9, align 8
  %28 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %29 = icmp ne %struct.ttm_buffer_object* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %35 = call i32 @ttm_bo_reference(%struct.ttm_buffer_object* %34)
  br label %36

36:                                               ; preds = %33, %3
  %37 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %38 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %37, i32 0, i32 0
  %39 = call i32 @read_unlock(i32* %38)
  %40 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %41 = icmp eq %struct.ttm_buffer_object* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %100

49:                                               ; preds = %36
  %50 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %51 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %53, align 8
  store %struct.ttm_bo_driver* %54, %struct.ttm_bo_driver** %8, align 8
  %55 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %8, align 8
  %56 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %55, i32 0, i32 0
  %57 = load i32 (%struct.ttm_buffer_object*, %struct.file.0*)*, i32 (%struct.ttm_buffer_object*, %struct.file.0*)** %56, align 8
  %58 = icmp ne i32 (%struct.ttm_buffer_object*, %struct.file.0*)* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load i32, i32* @EPERM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  br label %97

66:                                               ; preds = %49
  %67 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %8, align 8
  %68 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %67, i32 0, i32 0
  %69 = load i32 (%struct.ttm_buffer_object*, %struct.file.0*)*, i32 (%struct.ttm_buffer_object*, %struct.file.0*)** %68, align 8
  %70 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %71 = load %struct.file*, %struct.file** %5, align 8
  %72 = bitcast %struct.file* %71 to %struct.file.0*
  %73 = call i32 %69(%struct.ttm_buffer_object* %70, %struct.file.0* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %97

80:                                               ; preds = %66
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %81, i32 0, i32 4
  store i32* @ttm_bo_vm_ops, i32** %82, align 8
  %83 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 3
  store %struct.ttm_buffer_object* %83, %struct.ttm_buffer_object** %85, align 8
  %86 = load i32, i32* @VM_RESERVED, align 4
  %87 = load i32, i32* @VM_IO, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @VM_MIXEDMAP, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @VM_DONTEXPAND, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  store i32 0, i32* %4, align 4
  br label %100

97:                                               ; preds = %79, %63
  %98 = call i32 @ttm_bo_unref(%struct.ttm_buffer_object** %9)
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %97, %80, %45
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.ttm_buffer_object* @ttm_bo_vm_lookup_rb(%struct.ttm_bo_device*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ttm_bo_reference(%struct.ttm_buffer_object*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ttm_bo_unref(%struct.ttm_buffer_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
