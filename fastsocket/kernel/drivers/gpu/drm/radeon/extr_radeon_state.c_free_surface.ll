; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_free_surface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_free_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.radeon_virt_surface* }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.radeon_virt_surface = type { i32, i64, i32, %struct.drm_file* }

@RADEON_MAX_SURFACES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, %struct.TYPE_6__*, i32)* @free_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_surface(%struct.drm_file* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_virt_surface*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %130, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @RADEON_MAX_SURFACES, align 4
  %13 = mul nsw i32 2, %12
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %133

15:                                               ; preds = %10
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %18, i64 %20
  store %struct.radeon_virt_surface* %21, %struct.radeon_virt_surface** %8, align 8
  %22 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %23 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %22, i32 0, i32 3
  %24 = load %struct.drm_file*, %struct.drm_file** %23, align 8
  %25 = icmp ne %struct.drm_file* %24, null
  br i1 %25, label %26, label %129

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %29 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %128

32:                                               ; preds = %26
  %33 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %34 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %35 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %34, i32 0, i32 3
  %36 = load %struct.drm_file*, %struct.drm_file** %35, align 8
  %37 = icmp eq %struct.drm_file* %33, %36
  br i1 %37, label %38, label %128

38:                                               ; preds = %32
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %43 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %49 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %38
  %53 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %54 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %60 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %55, i32* %63, align 8
  br label %64

64:                                               ; preds = %52, %38
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %69 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %75 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %64
  %79 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %80 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %86 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i32 %81, i32* %89, align 4
  br label %90

90:                                               ; preds = %78, %64
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %95 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %98, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %105 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %90
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %116 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %111, %90
  %121 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %122 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %121, i32 0, i32 3
  store %struct.drm_file* null, %struct.drm_file** %122, align 8
  %123 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %124 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %127 = call i32 @radeon_apply_surface_regs(i64 %125, %struct.TYPE_6__* %126)
  store i32 0, i32* %4, align 4
  br label %134

128:                                              ; preds = %32, %26
  br label %129

129:                                              ; preds = %128, %15
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %10

133:                                              ; preds = %10
  store i32 1, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %120
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @radeon_apply_surface_regs(i64, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
