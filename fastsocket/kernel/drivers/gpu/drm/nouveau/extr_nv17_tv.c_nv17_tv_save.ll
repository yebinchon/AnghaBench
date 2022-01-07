; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_tv.c_nv17_tv_save.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_tv.c_nv17_tv_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nv17_tv_encoder = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@NV_PRAMDAC_DACCLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @nv17_tv_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv17_tv_save(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nv17_tv_encoder*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %6 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %5, i32 0, i32 0
  %7 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = call %struct.nv17_tv_encoder* @to_tv_enc(%struct.drm_encoder* %8)
  store %struct.nv17_tv_encoder* %9, %struct.nv17_tv_encoder** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = load i64, i64* @NV_PRAMDAC_DACCLK, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %13 = call i64 @nv04_dac_output_offset(%struct.drm_encoder* %12)
  %14 = add nsw i64 %11, %13
  %15 = call i32 @NVReadRAMDAC(%struct.drm_device* %10, i32 0, i64 %14)
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %17 = call %struct.TYPE_8__* @nouveau_encoder(%struct.drm_encoder* %16)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %4, align 8
  %22 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %21, i32 0, i32 0
  %23 = call i32 @nv17_tv_state_save(%struct.drm_device* %20, %struct.TYPE_7__* %22)
  %24 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %4, align 8
  %25 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %4, align 8
  %29 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  ret void
}

declare dso_local %struct.nv17_tv_encoder* @to_tv_enc(%struct.drm_encoder*) #1

declare dso_local i32 @NVReadRAMDAC(%struct.drm_device*, i32, i64) #1

declare dso_local i64 @nv04_dac_output_offset(%struct.drm_encoder*) #1

declare dso_local %struct.TYPE_8__* @nouveau_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @nv17_tv_state_save(%struct.drm_device*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
