; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_sor_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_sor_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_encoder = type { i32 }
%struct.nouveau_connector = type { i64, %struct.drm_display_mode* }

@DRM_MODE_SCALE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @nv50_sor_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_sor_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.nouveau_encoder*, align 8
  %8 = alloca %struct.nouveau_connector*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %11 = call %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder* %10)
  store %struct.nouveau_encoder* %11, %struct.nouveau_encoder** %7, align 8
  %12 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %13 = call %struct.nouveau_connector* @nouveau_encoder_connector_get(%struct.nouveau_encoder* %12)
  store %struct.nouveau_connector* %13, %struct.nouveau_connector** %8, align 8
  %14 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %15 = icmp ne %struct.nouveau_connector* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %3
  %17 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %18 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %17, i32 0, i32 1
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %18, align 8
  %20 = icmp ne %struct.drm_display_mode* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %16
  %22 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %23 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DRM_MODE_SCALE_NONE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %33 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %34 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %33, i32 0, i32 1
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %34, align 8
  %36 = bitcast %struct.drm_display_mode* %32 to i8*
  %37 = bitcast %struct.drm_display_mode* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %27, %21
  br label %43

43:                                               ; preds = %42, %16, %3
  ret i32 1
}

declare dso_local %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.nouveau_connector* @nouveau_encoder_connector_get(%struct.nouveau_encoder*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
