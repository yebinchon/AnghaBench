; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_set_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_set_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.nouveau_bo* }
%struct.nouveau_bo = type { i32, %struct.ttm_buffer_object }
%struct.ttm_buffer_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_GART = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@TTM_PL_TT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_gem_object*, i32, i32, i32)* @nouveau_gem_set_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_gem_set_domain(%struct.drm_gem_object* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_bo*, align 8
  %11 = alloca %struct.ttm_buffer_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %16 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %15, i32 0, i32 0
  %17 = load %struct.nouveau_bo*, %struct.nouveau_bo** %16, align 8
  store %struct.nouveau_bo* %17, %struct.nouveau_bo** %10, align 8
  %18 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %19 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %18, i32 0, i32 1
  store %struct.ttm_buffer_object* %19, %struct.ttm_buffer_object** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %22 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %20, %23
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  br label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = and i32 %24, %32
  store i32 %33, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %109

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @NOUVEAU_GEM_DOMAIN_VRAM, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %46 = load i32, i32* %14, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @NOUVEAU_GEM_DOMAIN_GART, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %55 = load i32, i32* %14, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @NOUVEAU_GEM_DOMAIN_VRAM, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %64 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TTM_PL_VRAM, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %71 = load i32, i32* %13, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %13, align 4
  br label %104

73:                                               ; preds = %62, %57
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @NOUVEAU_GEM_DOMAIN_GART, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %80 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TTM_PL_TT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %13, align 4
  br label %103

89:                                               ; preds = %78, %73
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @NOUVEAU_GEM_DOMAIN_VRAM, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %96 = load i32, i32* %13, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %13, align 4
  br label %102

98:                                               ; preds = %89
  %99 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %100 = load i32, i32* %13, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %102, %85
  br label %104

104:                                              ; preds = %103, %69
  %105 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @nouveau_bo_placement_set(%struct.nouveau_bo* %105, i32 %106, i32 %107)
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %104, %36
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @nouveau_bo_placement_set(%struct.nouveau_bo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
