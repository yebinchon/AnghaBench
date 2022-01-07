; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_hw.h_NVReadVgaAttr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_hw.h_NVReadVgaAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }

@NV_PRMCIO_INP0__COLOR = common dso_local global i64 0, align 8
@NV_PRMCIO_SIZE = common dso_local global i32 0, align 4
@NV_PRMCIO_ARX = common dso_local global i64 0, align 8
@NV_PRMCIO_AR__READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32)* @NVReadVgaAttr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NVReadVgaAttr(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_device*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %9)
  store %struct.nouveau_device* %10, %struct.nouveau_device** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @NVGetEnablePalette(%struct.drm_device* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, -33
  store i32 %17, i32* %6, align 4
  br label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, 32
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %23 = load i64, i64* @NV_PRMCIO_INP0__COLOR, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @NV_PRMCIO_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %23, %27
  %29 = call i32 @nv_rd08(%struct.nouveau_device* %22, i64 %28)
  %30 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %31 = load i64, i64* @NV_PRMCIO_ARX, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @NV_PRMCIO_SIZE, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %31, %35
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @nv_wr08(%struct.nouveau_device* %30, i64 %36, i32 %37)
  %39 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %40 = load i64, i64* @NV_PRMCIO_AR__READ, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @NV_PRMCIO_SIZE, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  %46 = call i32 @nv_rd08(%struct.nouveau_device* %39, i64 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  ret i32 %47
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
