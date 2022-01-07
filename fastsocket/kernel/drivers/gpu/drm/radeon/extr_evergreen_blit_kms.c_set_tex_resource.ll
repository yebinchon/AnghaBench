; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_set_tex_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_set_tex_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@SQ_TEX_DIM_2D = common dso_local global i32 0, align 4
@ARRAY_1D_TILED_THIN1 = common dso_local global i32 0, align 4
@SQ_SEL_X = common dso_local global i32 0, align 4
@SQ_SEL_Y = common dso_local global i32 0, align 4
@SQ_SEL_Z = common dso_local global i32 0, align 4
@SQ_SEL_W = common dso_local global i32 0, align 4
@SQ_TEX_VTX_VALID_TEXTURE = common dso_local global i32 0, align 4
@PACKET3_TC_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_SET_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32, i32, i32, i32, i32)* @set_tex_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tex_resource(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.radeon_ring*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %21, align 8
  %23 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %24 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %22, i64 %23
  store %struct.radeon_ring* %24, %struct.radeon_ring** %15, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  store i32 1, i32* %11, align 4
  br label %28

28:                                               ; preds = %27, %7
  %29 = load i32, i32* @SQ_TEX_DIM_2D, align 4
  %30 = call i32 @TEX_DIM(i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %12, align 4
  %32 = ashr i32 %31, 3
  %33 = sub nsw i32 %32, 1
  %34 = shl i32 %33, 6
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %35, 1
  %37 = shl i32 %36, 18
  %38 = or i32 %34, %37
  %39 = load i32, i32* %16, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %41, 1
  %43 = shl i32 %42, 0
  %44 = load i32, i32* @ARRAY_1D_TILED_THIN1, align 4
  %45 = call i32 @TEX_ARRAY_MODE(i32 %44)
  %46 = or i32 %43, %45
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* @SQ_SEL_X, align 4
  %48 = call i32 @TEX_DST_SEL_X(i32 %47)
  %49 = load i32, i32* @SQ_SEL_Y, align 4
  %50 = call i32 @TEX_DST_SEL_Y(i32 %49)
  %51 = or i32 %48, %50
  %52 = load i32, i32* @SQ_SEL_Z, align 4
  %53 = call i32 @TEX_DST_SEL_Z(i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* @SQ_SEL_W, align 4
  %56 = call i32 @TEX_DST_SEL_W(i32 %55)
  %57 = or i32 %54, %56
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @SQ_TEX_VTX_VALID_TEXTURE, align 4
  %60 = call i32 @S__SQ_CONSTANT_TYPE(i32 %59)
  %61 = or i32 %58, %60
  store i32 %61, i32* %19, align 4
  %62 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %63 = load i32, i32* @PACKET3_TC_ACTION_ENA, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @cp_set_surface_sync(%struct.radeon_device* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %68 = load i32, i32* @PACKET3_SET_RESOURCE, align 4
  %69 = call i32 @PACKET3(i32 %68, i32 8)
  %70 = call i32 @radeon_ring_write(%struct.radeon_ring* %67, i32 %69)
  %71 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %72 = call i32 @radeon_ring_write(%struct.radeon_ring* %71, i32 0)
  %73 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @radeon_ring_write(%struct.radeon_ring* %73, i32 %74)
  %76 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @radeon_ring_write(%struct.radeon_ring* %76, i32 %77)
  %79 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %80 = load i32, i32* %13, align 4
  %81 = ashr i32 %80, 8
  %82 = call i32 @radeon_ring_write(%struct.radeon_ring* %79, i32 %81)
  %83 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %84 = load i32, i32* %13, align 4
  %85 = ashr i32 %84, 8
  %86 = call i32 @radeon_ring_write(%struct.radeon_ring* %83, i32 %85)
  %87 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %88 = load i32, i32* %18, align 4
  %89 = call i32 @radeon_ring_write(%struct.radeon_ring* %87, i32 %88)
  %90 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %91 = call i32 @radeon_ring_write(%struct.radeon_ring* %90, i32 0)
  %92 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %93 = call i32 @radeon_ring_write(%struct.radeon_ring* %92, i32 0)
  %94 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %95 = load i32, i32* %19, align 4
  %96 = call i32 @radeon_ring_write(%struct.radeon_ring* %94, i32 %95)
  ret void
}

declare dso_local i32 @TEX_DIM(i32) #1

declare dso_local i32 @TEX_ARRAY_MODE(i32) #1

declare dso_local i32 @TEX_DST_SEL_X(i32) #1

declare dso_local i32 @TEX_DST_SEL_Y(i32) #1

declare dso_local i32 @TEX_DST_SEL_Z(i32) #1

declare dso_local i32 @TEX_DST_SEL_W(i32) #1

declare dso_local i32 @S__SQ_CONSTANT_TYPE(i32) #1

declare dso_local i32 @cp_set_surface_sync(%struct.radeon_device*, i32, i32, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
