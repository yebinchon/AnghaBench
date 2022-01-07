; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_kmap_ttm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_kmap_ttm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_tt*, %struct.ttm_mem_reg }
%struct.ttm_tt = type { i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ttm_tt*)* }
%struct.ttm_mem_reg = type { i32 }
%struct.ttm_bo_kmap_obj = type { i32, i32, i32 }

@tt_unpopulated = common dso_local global i64 0, align 8
@TTM_PL_FLAG_CACHED = common dso_local global i32 0, align 4
@ttm_bo_map_kmap = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@ttm_bo_map_vmap = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i64, i64, %struct.ttm_bo_kmap_obj*)* @ttm_bo_kmap_ttm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_kmap_ttm(%struct.ttm_buffer_object* %0, i64 %1, i64 %2, %struct.ttm_bo_kmap_obj* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ttm_bo_kmap_obj*, align 8
  %10 = alloca %struct.ttm_mem_reg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ttm_tt*, align 8
  %13 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ttm_bo_kmap_obj* %3, %struct.ttm_bo_kmap_obj** %9, align 8
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 1
  store %struct.ttm_mem_reg* %15, %struct.ttm_mem_reg** %10, align 8
  %16 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %17 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %16, i32 0, i32 0
  %18 = load %struct.ttm_tt*, %struct.ttm_tt** %17, align 8
  store %struct.ttm_tt* %18, %struct.ttm_tt** %12, align 8
  %19 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %20 = icmp ne %struct.ttm_tt* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %25 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @tt_unpopulated, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %4
  %30 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %31 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.ttm_tt*)*, i32 (%struct.ttm_tt*)** %35, align 8
  %37 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %38 = call i32 %36(%struct.ttm_tt* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %5, align 4
  br label %113

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %4
  %45 = load i64, i64* %8, align 8
  %46 = icmp eq i64 %45, 1
  br i1 %46, label %47, label %72

47:                                               ; preds = %44
  %48 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %49 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TTM_PL_FLAG_CACHED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %47
  %55 = load i32, i32* @ttm_bo_map_kmap, align 4
  %56 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %57 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %59 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %65 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %67 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @kmap(i32 %68)
  %70 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %71 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %102

72:                                               ; preds = %47, %44
  %73 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %74 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TTM_PL_FLAG_CACHED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @PAGE_KERNEL, align 4
  br label %87

81:                                               ; preds = %72
  %82 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %83 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PAGE_KERNEL, align 4
  %86 = call i32 @ttm_io_prot(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %79
  %88 = phi i32 [ %80, %79 ], [ %86, %81 ]
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* @ttm_bo_map_vmap, align 4
  %90 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %91 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %93 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i64, i64* %8, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @vmap(i32* %96, i64 %97, i32 0, i32 %98)
  %100 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %101 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %87, %54
  %103 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %104 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  br label %111

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %107
  %112 = phi i32 [ %109, %107 ], [ 0, %110 ]
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %41
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kmap(i32) #1

declare dso_local i32 @ttm_io_prot(i32, i32) #1

declare dso_local i32 @vmap(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
