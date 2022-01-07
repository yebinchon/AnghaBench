; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_cp_dispatch_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_cp_dispatch_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32, i64, i64, i64 }
%struct.drm_file = type { %struct.drm_master* }
%struct.drm_master = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i32, %struct.drm_clip_rect* }
%struct.drm_clip_rect = type { i32, i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RADEON_COLOR_FORMAT_ARGB8888 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"unable to allocate vertex buffer for swap buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%d,%d-%d,%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_cp_dispatch_swap(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.drm_master*, align 8
  %7 = alloca %struct.drm_radeon_master_private*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_clip_rect*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %5, align 8
  %24 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %25 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %24, i32 0, i32 0
  %26 = load %struct.drm_master*, %struct.drm_master** %25, align 8
  store %struct.drm_master* %26, %struct.drm_master** %6, align 8
  %27 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %28 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %27, i32 0, i32 0
  %29 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %28, align 8
  store %struct.drm_radeon_master_private* %29, %struct.drm_radeon_master_private** %7, align 8
  %30 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %7, align 8
  %31 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %8, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %37, align 8
  store %struct.drm_clip_rect* %38, %struct.drm_clip_rect** %10, align 8
  %39 = load i32, i32* @RING_LOCALS, align 4
  %40 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RADEON_COLOR_FORMAT_ARGB8888, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  store i32 4, i32* %12, align 4
  br label %48

47:                                               ; preds = %2
  store i32 2, i32* %12, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %13, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %14, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  store i64 %66, i64* %15, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  store i64 %73, i64* %16, align 8
  br label %95

74:                                               ; preds = %48
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %13, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %14, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  store i64 %87, i64* %15, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  store i64 %94, i64* %16, align 8
  br label %95

95:                                               ; preds = %74, %53
  %96 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %97 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %98 = call i64 @r600_prepare_blit_copy(%struct.drm_device* %96, %struct.drm_file* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %170

102:                                              ; preds = %95
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %154, %102
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %157

107:                                              ; preds = %103
  %108 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %108, i64 %110
  %112 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %17, align 4
  %114 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %114, i64 %116
  %118 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %18, align 4
  %120 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %10, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %120, i64 %122
  %124 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %17, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %19, align 4
  %128 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %10, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %128, i64 %130
  %132 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %18, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %20, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* %20, align 4
  %140 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %136, i32 %137, i32 %138, i32 %139)
  %141 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %142 = load i64, i64* %15, align 8
  %143 = load i64, i64* %16, align 8
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @r600_blit_swap(%struct.drm_device* %141, i64 %142, i64 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %107
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %103

157:                                              ; preds = %103
  %158 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %159 = call i32 @r600_done_blit_copy(%struct.drm_device* %158)
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  %164 = call i32 @BEGIN_RING(i32 3)
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @R600_FRAME_AGE(i32 %167)
  %169 = call i32 (...) @ADVANCE_RING()
  br label %170

170:                                              ; preds = %157, %100
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i64 @r600_prepare_blit_copy(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @r600_blit_swap(%struct.drm_device*, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @r600_done_blit_copy(%struct.drm_device*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @R600_FRAME_AGE(i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
