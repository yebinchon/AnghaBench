; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_kunmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_kunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_kmap_obj = type { i32, i32*, i32*, %struct.ttm_buffer_object* }
%struct.ttm_buffer_object = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_bo_kunmap(%struct.ttm_bo_kmap_obj* %0) #0 {
  %2 = alloca %struct.ttm_bo_kmap_obj*, align 8
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.ttm_bo_kmap_obj* %0, %struct.ttm_bo_kmap_obj** %2, align 8
  %5 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %6 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %5, i32 0, i32 3
  %7 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  store %struct.ttm_buffer_object* %7, %struct.ttm_buffer_object** %3, align 8
  %8 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %9 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %11, align 8
  %13 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %14 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %12, i64 %16
  store %struct.ttm_mem_type_manager* %17, %struct.ttm_mem_type_manager** %4, align 8
  %18 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %19 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %64

23:                                               ; preds = %1
  %24 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %25 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %43 [
    i32 131, label %27
    i32 128, label %32
    i32 130, label %37
    i32 129, label %42
  ]

27:                                               ; preds = %23
  %28 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %29 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @iounmap(i32* %30)
  br label %45

32:                                               ; preds = %23
  %33 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %34 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @vunmap(i32* %35)
  br label %45

37:                                               ; preds = %23
  %38 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %39 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @kunmap(i32* %40)
  br label %45

42:                                               ; preds = %23
  br label %45

43:                                               ; preds = %23
  %44 = call i32 (...) @BUG()
  br label %45

45:                                               ; preds = %43, %42, %37, %32, %27
  %46 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %47 = call i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager* %46, i32 0)
  %48 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %49 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %48, i32 0, i32 3
  %50 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %49, align 8
  %51 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %54 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %53, i32 0, i32 3
  %55 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %54, align 8
  %56 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %55, i32 0, i32 0
  %57 = call i32 @ttm_mem_io_free(%struct.TYPE_3__* %52, %struct.TYPE_4__* %56)
  %58 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %59 = call i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager* %58)
  %60 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %61 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %63 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %45, %22
  ret void
}

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @vunmap(i32*) #1

declare dso_local i32 @kunmap(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager*, i32) #1

declare dso_local i32 @ttm_mem_io_free(%struct.TYPE_3__*, %struct.TYPE_4__*) #1

declare dso_local i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
