; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_best_single_encoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_best_single_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32*, i32 }
%struct.drm_mode_object = type { i32 }

@DRM_MODE_OBJECT_ENCODER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_encoder* (%struct.drm_connector*)* @radeon_best_single_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_mode_object*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @DRM_MODE_OBJECT_ENCODER, align 4
  %20 = call %struct.drm_mode_object* @drm_mode_object_find(i32 %17, i32 %18, i32 %19)
  store %struct.drm_mode_object* %20, %struct.drm_mode_object** %5, align 8
  %21 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %22 = icmp ne %struct.drm_mode_object* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store %struct.drm_encoder* null, %struct.drm_encoder** %2, align 8
  br label %29

24:                                               ; preds = %14
  %25 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %26 = call %struct.drm_encoder* @obj_to_encoder(%struct.drm_mode_object* %25)
  store %struct.drm_encoder* %26, %struct.drm_encoder** %6, align 8
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  store %struct.drm_encoder* %27, %struct.drm_encoder** %2, align 8
  br label %29

28:                                               ; preds = %1
  store %struct.drm_encoder* null, %struct.drm_encoder** %2, align 8
  br label %29

29:                                               ; preds = %28, %24, %23
  %30 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  ret %struct.drm_encoder* %30
}

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(i32, i32, i32) #1

declare dso_local %struct.drm_encoder* @obj_to_encoder(%struct.drm_mode_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
