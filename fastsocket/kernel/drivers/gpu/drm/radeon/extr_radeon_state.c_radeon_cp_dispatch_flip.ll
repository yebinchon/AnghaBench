; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_dispatch_flip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_dispatch_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.drm_master = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.drm_sarea = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pfCurrentPage=%d\0A\00", align 1
@RADEON_BOX_FLIP = common dso_local global i32 0, align 4
@RADEON_CRTC_OFFSET = common dso_local global i32 0, align 4
@RADEON_CRTC2_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_cp_dispatch_flip(%struct.drm_device* %0, %struct.drm_master* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_master*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.drm_radeon_master_private*, align 8
  %7 = alloca %struct.drm_sarea*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_master* %1, %struct.drm_master** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %5, align 8
  %12 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %13 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %12, i32 0, i32 0
  %14 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %13, align 8
  store %struct.drm_radeon_master_private* %14, %struct.drm_radeon_master_private** %6, align 8
  %15 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %6, align 8
  %16 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.drm_sarea*
  store %struct.drm_sarea* %20, %struct.drm_sarea** %7, align 8
  %21 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %6, align 8
  %22 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i32 [ %30, %27 ], [ %34, %31 ]
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @RING_LOCALS, align 4
  %38 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %6, align 8
  %39 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %35
  %49 = load i32, i32* @RADEON_BOX_FLIP, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %6, align 8
  %57 = call i32 @radeon_cp_performance_boxes(%struct.TYPE_11__* %55, %struct.drm_radeon_master_private* %56)
  br label %58

58:                                               ; preds = %48, %35
  %59 = call i32 @BEGIN_RING(i32 6)
  %60 = call i32 (...) @RADEON_WAIT_UNTIL_3D_IDLE()
  %61 = load i32, i32* @RADEON_CRTC_OFFSET, align 4
  %62 = load %struct.drm_sarea*, %struct.drm_sarea** %7, align 8
  %63 = getelementptr inbounds %struct.drm_sarea, %struct.drm_sarea* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %65, %68
  %70 = load %struct.drm_sarea*, %struct.drm_sarea** %7, align 8
  %71 = getelementptr inbounds %struct.drm_sarea, %struct.drm_sarea* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 2
  %78 = mul nsw i32 %73, %77
  %79 = add nsw i32 %69, %78
  %80 = and i32 %79, -8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i32 @OUT_RING_REG(i32 %61, i32 %82)
  %84 = load i32, i32* @RADEON_CRTC2_OFFSET, align 4
  %85 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %6, align 8
  %86 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %89, %90
  %92 = call i32 @OUT_RING_REG(i32 %84, i32 %91)
  %93 = call i32 (...) @ADVANCE_RING()
  %94 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %6, align 8
  %95 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %6, align 8
  %101 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 1, %104
  %106 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %6, align 8
  %107 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 4
  %110 = call i32 @BEGIN_RING(i32 2)
  %111 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %6, align 8
  %112 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @RADEON_FRAME_AGE(i32 %115)
  %117 = call i32 (...) @ADVANCE_RING()
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @radeon_cp_performance_boxes(%struct.TYPE_11__*, %struct.drm_radeon_master_private*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @RADEON_WAIT_UNTIL_3D_IDLE(...) #1

declare dso_local i32 @OUT_RING_REG(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @RADEON_FRAME_AGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
