; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_buffer_object_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_buffer_object_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i64, i32*, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, %struct.ttm_bo_device* }
%struct.ttm_bo_device = type { i32, %struct.ttm_bo_driver* }
%struct.ttm_bo_driver = type { i32* (i32*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ttm_transfered_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.ttm_buffer_object**)* @ttm_buffer_object_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_buffer_object_transfer(%struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca %struct.ttm_buffer_object**, align 8
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca %struct.ttm_bo_device*, align 8
  %8 = alloca %struct.ttm_bo_driver*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store %struct.ttm_buffer_object** %1, %struct.ttm_buffer_object*** %5, align 8
  %9 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %10 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %9, i32 0, i32 12
  %11 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  store %struct.ttm_bo_device* %11, %struct.ttm_bo_device** %7, align 8
  %12 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %13 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %12, i32 0, i32 1
  %14 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %13, align 8
  store %struct.ttm_bo_driver* %14, %struct.ttm_bo_driver** %8, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ttm_buffer_object* @kmalloc(i32 80, i32 %15)
  store %struct.ttm_buffer_object* %16, %struct.ttm_buffer_object** %6, align 8
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %18 = icmp ne %struct.ttm_buffer_object* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %83

22:                                               ; preds = %2
  %23 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %24 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %25 = bitcast %struct.ttm_buffer_object* %23 to i8*
  %26 = bitcast %struct.ttm_buffer_object* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 80, i1 false)
  %27 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %28 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %27, i32 0, i32 11
  %29 = call i32 @init_waitqueue_head(i32* %28)
  %30 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %31 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %30, i32 0, i32 10
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %34 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %33, i32 0, i32 9
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %37 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %36, i32 0, i32 8
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %40 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %39, i32 0, i32 7
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %43 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %42, i32 0, i32 6
  store i32* null, i32** %43, align 8
  %44 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %45 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %44, i32 0, i32 5
  %46 = call i32 @atomic_set(i32* %45, i32 0)
  %47 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %48 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %51 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %22
  %55 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %8, align 8
  %56 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %55, i32 0, i32 0
  %57 = load i32* (i32*)*, i32* (i32*)** %56, align 8
  %58 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %59 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = call i32* %57(i32* %60)
  %62 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %63 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %62, i32 0, i32 4
  store i32* %61, i32** %63, align 8
  br label %67

64:                                               ; preds = %22
  %65 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %66 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %65, i32 0, i32 4
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %64, %54
  %68 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %69 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %72 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %71, i32 0, i32 3
  %73 = call i32 @kref_init(i32* %72)
  %74 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %75 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %74, i32 0, i32 2
  %76 = call i32 @kref_init(i32* %75)
  %77 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %78 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %77, i32 0, i32 1
  store i32* @ttm_transfered_destroy, i32** %78, align 8
  %79 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %80 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %82 = load %struct.ttm_buffer_object**, %struct.ttm_buffer_object*** %5, align 8
  store %struct.ttm_buffer_object* %81, %struct.ttm_buffer_object** %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %67, %19
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.ttm_buffer_object* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
