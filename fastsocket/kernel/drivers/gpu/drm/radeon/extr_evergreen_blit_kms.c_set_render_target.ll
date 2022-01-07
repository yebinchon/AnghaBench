; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_set_render_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_set_render_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@CB_SF_EXPORT_NORM = common dso_local global i32 0, align 4
@ARRAY_1D_TILED_THIN1 = common dso_local global i32 0, align 4
@PACKET3_SET_CONTEXT_REG = common dso_local global i32 0, align 4
@CB_COLOR0_BASE = common dso_local global i32 0, align 4
@PACKET3_SET_CONTEXT_REG_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32, i32, i32)* @set_render_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_render_target(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_ring*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load %struct.radeon_ring*, %struct.radeon_ring** %16, align 8
  %18 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %19 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %17, i64 %18
  store %struct.radeon_ring* %19, %struct.radeon_ring** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @ALIGN(i32 %20, i32 8)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 8, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %5
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @CB_FORMAT(i32 %26)
  %28 = load i32, i32* @CB_SF_EXPORT_NORM, align 4
  %29 = call i32 @CB_SOURCE_FORMAT(i32 %28)
  %30 = or i32 %27, %29
  %31 = load i32, i32* @ARRAY_1D_TILED_THIN1, align 4
  %32 = call i32 @CB_ARRAY_MODE(i32 %31)
  %33 = or i32 %30, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sdiv i32 %34, 8
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sdiv i32 %39, 64
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  %42 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %43 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %44 = call i32 @PACKET3(i32 %43, i32 15)
  %45 = call i32 @radeon_ring_write(%struct.radeon_ring* %42, i32 %44)
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %47 = load i32, i32* @CB_COLOR0_BASE, align 4
  %48 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %49 = sub nsw i32 %47, %48
  %50 = ashr i32 %49, 2
  %51 = call i32 @radeon_ring_write(%struct.radeon_ring* %46, i32 %50)
  %52 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %53 = load i32, i32* %10, align 4
  %54 = ashr i32 %53, 8
  %55 = call i32 @radeon_ring_write(%struct.radeon_ring* %52, i32 %54)
  %56 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @radeon_ring_write(%struct.radeon_ring* %56, i32 %57)
  %59 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @radeon_ring_write(%struct.radeon_ring* %59, i32 %60)
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %63 = call i32 @radeon_ring_write(%struct.radeon_ring* %62, i32 0)
  %64 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @radeon_ring_write(%struct.radeon_ring* %64, i32 %65)
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %68 = call i32 @radeon_ring_write(%struct.radeon_ring* %67, i32 0)
  %69 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %72, 1
  %74 = shl i32 %73, 16
  %75 = or i32 %71, %74
  %76 = call i32 @radeon_ring_write(%struct.radeon_ring* %69, i32 %75)
  %77 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %78 = call i32 @radeon_ring_write(%struct.radeon_ring* %77, i32 0)
  %79 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %80 = call i32 @radeon_ring_write(%struct.radeon_ring* %79, i32 0)
  %81 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %82 = call i32 @radeon_ring_write(%struct.radeon_ring* %81, i32 0)
  %83 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %84 = call i32 @radeon_ring_write(%struct.radeon_ring* %83, i32 0)
  %85 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %86 = call i32 @radeon_ring_write(%struct.radeon_ring* %85, i32 0)
  %87 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %88 = call i32 @radeon_ring_write(%struct.radeon_ring* %87, i32 0)
  %89 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %90 = call i32 @radeon_ring_write(%struct.radeon_ring* %89, i32 0)
  %91 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %92 = call i32 @radeon_ring_write(%struct.radeon_ring* %91, i32 0)
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @CB_FORMAT(i32) #1

declare dso_local i32 @CB_SOURCE_FORMAT(i32) #1

declare dso_local i32 @CB_ARRAY_MODE(i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
