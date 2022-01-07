; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_tv.c_nv17_tv_get_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_tv.c_nv17_tv_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }
%struct.nv17_tv_norm_params = type { i64 }

@CTV_ENC_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*)* @nv17_tv_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv17_tv_get_modes(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.nv17_tv_norm_params*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %8 = call %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder* %7)
  store %struct.nv17_tv_norm_params* %8, %struct.nv17_tv_norm_params** %6, align 8
  %9 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %6, align 8
  %10 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CTV_ENC_MODE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %17 = call i32 @nv17_tv_get_hd_modes(%struct.drm_encoder* %15, %struct.drm_connector* %16)
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %21 = call i32 @nv17_tv_get_ld_modes(%struct.drm_encoder* %19, %struct.drm_connector* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder*) #1

declare dso_local i32 @nv17_tv_get_hd_modes(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local i32 @nv17_tv_get_ld_modes(%struct.drm_encoder*, %struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
