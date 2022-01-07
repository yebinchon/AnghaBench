; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_hw.h_NVWriteVgaAttr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_hw.h_NVWriteVgaAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }

@NV_PRMCIO_INP0__COLOR = common dso_local global i64 0, align 8
@NV_PRMCIO_SIZE = common dso_local global i32 0, align 4
@NV_PRMCIO_ARX = common dso_local global i64 0, align 8
@NV_PRMCIO_AR__WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, i32, i32)* @NVWriteVgaAttr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NVWriteVgaAttr(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %10)
  store %struct.nouveau_device* %11, %struct.nouveau_device** %9, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @NVGetEnablePalette(%struct.drm_device* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, -33
  store i32 %18, i32* %7, align 4
  br label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, 32
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %24 = load i64, i64* @NV_PRMCIO_INP0__COLOR, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @NV_PRMCIO_SIZE, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %24, %28
  %30 = call i32 @nv_rd08(%struct.nouveau_device* %23, i64 %29)
  %31 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %32 = load i64, i64* @NV_PRMCIO_ARX, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @NV_PRMCIO_SIZE, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %32, %36
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @nv_wr08(%struct.nouveau_device* %31, i64 %37, i32 %38)
  %40 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %41 = load i64, i64* @NV_PRMCIO_AR__WRITE, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @NV_PRMCIO_SIZE, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %41, %45
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @nv_wr08(%struct.nouveau_device* %40, i64 %46, i32 %47)
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local i64 @NVGetEnablePalette(%struct.drm_device*, i32) #1

declare dso_local i32 @nv_rd08(%struct.nouveau_device*, i64) #1

declare dso_local i32 @nv_wr08(%struct.nouveau_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
