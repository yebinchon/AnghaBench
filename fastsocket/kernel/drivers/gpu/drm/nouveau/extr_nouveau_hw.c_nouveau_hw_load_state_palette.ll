; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_hw.c_nouveau_hw_load_state_palette.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_hw.c_nouveau_hw_load_state_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nv04_mode_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.nouveau_device = type { i32 }

@NV_PRMDIO_SIZE = common dso_local global i32 0, align 4
@NV_PRMDIO_PIXEL_MASK = common dso_local global i64 0, align 8
@NV_PRMDIO_PIXEL_MASK_MASK = common dso_local global i32 0, align 4
@NV_PRMDIO_WRITE_MODE_ADDRESS = common dso_local global i64 0, align 8
@NV_PRMDIO_PALETTE_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_hw_load_state_palette(%struct.drm_device* %0, i32 %1, %struct.nv04_mode_state* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv04_mode_state*, align 8
  %7 = alloca %struct.nouveau_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nv04_mode_state* %2, %struct.nv04_mode_state** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %10)
  store %struct.nouveau_device* %11, %struct.nouveau_device** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NV_PRMDIO_SIZE, align 4
  %14 = mul nsw i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %16 = load i64, i64* @NV_PRMDIO_PIXEL_MASK, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = load i32, i32* @NV_PRMDIO_PIXEL_MASK_MASK, align 4
  %21 = call i32 @nv_wr08(%struct.nouveau_device* %15, i64 %19, i32 %20)
  %22 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %23 = load i64, i64* @NV_PRMDIO_WRITE_MODE_ADDRESS, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @nv_wr08(%struct.nouveau_device* %22, i64 %26, i32 0)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %50, %3
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 768
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %33 = load i64, i64* @NV_PRMDIO_PALETTE_DATA, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %6, align 8
  %38 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nv_wr08(%struct.nouveau_device* %32, i64 %36, i32 %48)
  br label %50

50:                                               ; preds = %31
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %28

53:                                               ; preds = %28
  %54 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @NVSetEnablePalette(%struct.drm_device* %54, i32 %55, i32 0)
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local i32 @nv_wr08(%struct.nouveau_device*, i64, i32) #1

declare dso_local i32 @NVSetEnablePalette(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
