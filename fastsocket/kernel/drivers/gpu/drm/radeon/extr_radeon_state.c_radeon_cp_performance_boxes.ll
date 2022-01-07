; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_performance_boxes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_performance_boxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64, i32, i32, i64 }
%struct.drm_radeon_master_private = type { i32 }

@RADEON_BOX_WAIT_IDLE = common dso_local global i32 0, align 4
@RADEON_BOX_FLIP = common dso_local global i32 0, align 4
@RADEON_BOX_TEXTURE_LOAD = common dso_local global i32 0, align 4
@RADEON_BOX_DMA_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.drm_radeon_master_private*)* @radeon_cp_performance_boxes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_cp_performance_boxes(%struct.TYPE_5__* %0, %struct.drm_radeon_master_private* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.drm_radeon_master_private*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.drm_radeon_master_private* %1, %struct.drm_radeon_master_private** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %14, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %10, %2
  %21 = load i32, i32* @RADEON_BOX_WAIT_IDLE, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %21
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %20, %10
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* @RADEON_BOX_WAIT_IDLE, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %33, %27
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @RADEON_BOX_FLIP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %4, align 8
  %51 = call i32 @radeon_clear_box(%struct.TYPE_5__* %49, %struct.drm_radeon_master_private* %50, i32 4, i32 4, i32 8, i32 8, i32 255, i32 0, i32 255)
  br label %52

52:                                               ; preds = %48, %40
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @RADEON_BOX_WAIT_IDLE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %4, align 8
  %63 = call i32 @radeon_clear_box(%struct.TYPE_5__* %61, %struct.drm_radeon_master_private* %62, i32 16, i32 4, i32 8, i32 8, i32 255, i32 0, i32 0)
  br label %64

64:                                               ; preds = %60, %52
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @RADEON_BOX_TEXTURE_LOAD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %4, align 8
  %75 = call i32 @radeon_clear_box(%struct.TYPE_5__* %73, %struct.drm_radeon_master_private* %74, i32 40, i32 4, i32 8, i32 8, i32 255, i32 255, i32 0)
  br label %76

76:                                               ; preds = %72, %64
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @RADEON_BOX_DMA_IDLE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %76
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %4, align 8
  %87 = call i32 @radeon_clear_box(%struct.TYPE_5__* %85, %struct.drm_radeon_master_private* %86, i32 64, i32 4, i32 8, i32 8, i32 0, i32 255, i32 0)
  br label %88

88:                                               ; preds = %84, %76
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %88
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 100
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  store i32 100, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %94
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %4, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @radeon_clear_box(%struct.TYPE_5__* %105, %struct.drm_radeon_master_private* %106, i32 4, i32 16, i32 %110, i32 4, i32 196, i32 128, i32 128)
  br label %112

112:                                              ; preds = %104, %88
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = call i32 @memset(%struct.TYPE_6__* %114, i32 0, i32 40)
  ret void
}

declare dso_local i32 @radeon_clear_box(%struct.TYPE_5__*, %struct.drm_radeon_master_private*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
