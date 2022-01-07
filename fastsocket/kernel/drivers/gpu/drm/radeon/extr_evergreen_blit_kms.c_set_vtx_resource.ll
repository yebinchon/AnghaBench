; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_set_vtx_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_set_vtx_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@SQ_SEL_X = common dso_local global i32 0, align 4
@SQ_SEL_Y = common dso_local global i32 0, align 4
@SQ_SEL_Z = common dso_local global i32 0, align 4
@SQ_SEL_W = common dso_local global i32 0, align 4
@PACKET3_SET_RESOURCE = common dso_local global i32 0, align 4
@SQ_TEX_VTX_VALID_BUFFER = common dso_local global i32 0, align 4
@CHIP_CEDAR = common dso_local global i64 0, align 8
@CHIP_PALM = common dso_local global i64 0, align 8
@CHIP_SUMO = common dso_local global i64 0, align 8
@CHIP_SUMO2 = common dso_local global i64 0, align 8
@CHIP_CAICOS = common dso_local global i64 0, align 8
@PACKET3_TC_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_VC_ACTION_ENA = common dso_local global i32 0, align 4
@SQ_ENDIAN_8IN32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @set_vtx_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_vtx_resource(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 1
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %11 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %12 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i64 %11
  store %struct.radeon_ring* %12, %struct.radeon_ring** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @upper_32_bits(i32 %13)
  %15 = and i32 %14, 255
  %16 = call i32 @SQ_VTXC_BASE_ADDR_HI(i32 %15)
  %17 = call i32 @SQ_VTXC_STRIDE(i32 16)
  %18 = or i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @SQ_SEL_X, align 4
  %20 = call i32 @SQ_VTCX_SEL_X(i32 %19)
  %21 = load i32, i32* @SQ_SEL_Y, align 4
  %22 = call i32 @SQ_VTCX_SEL_Y(i32 %21)
  %23 = or i32 %20, %22
  %24 = load i32, i32* @SQ_SEL_Z, align 4
  %25 = call i32 @SQ_VTCX_SEL_Z(i32 %24)
  %26 = or i32 %23, %25
  %27 = load i32, i32* @SQ_SEL_W, align 4
  %28 = call i32 @SQ_VTCX_SEL_W(i32 %27)
  %29 = or i32 %26, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %31 = load i32, i32* @PACKET3_SET_RESOURCE, align 4
  %32 = call i32 @PACKET3(i32 %31, i32 8)
  %33 = call i32 @radeon_ring_write(%struct.radeon_ring* %30, i32 %32)
  %34 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %35 = call i32 @radeon_ring_write(%struct.radeon_ring* %34, i32 1408)
  %36 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @radeon_ring_write(%struct.radeon_ring* %36, i32 %37)
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %40 = call i32 @radeon_ring_write(%struct.radeon_ring* %39, i32 47)
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @radeon_ring_write(%struct.radeon_ring* %41, i32 %42)
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @radeon_ring_write(%struct.radeon_ring* %44, i32 %45)
  %47 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %48 = call i32 @radeon_ring_write(%struct.radeon_ring* %47, i32 0)
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %50 = call i32 @radeon_ring_write(%struct.radeon_ring* %49, i32 0)
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %52 = call i32 @radeon_ring_write(%struct.radeon_ring* %51, i32 0)
  %53 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %54 = load i32, i32* @SQ_TEX_VTX_VALID_BUFFER, align 4
  %55 = call i32 @S__SQ_CONSTANT_TYPE(i32 %54)
  %56 = call i32 @radeon_ring_write(%struct.radeon_ring* %53, i32 %55)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CHIP_CEDAR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %86, label %62

62:                                               ; preds = %2
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CHIP_PALM, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %86, label %68

68:                                               ; preds = %62
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CHIP_SUMO, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %68
  %75 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CHIP_SUMO2, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CHIP_CAICOS, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80, %74, %68, %62, %2
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = load i32, i32* @PACKET3_TC_ACTION_ENA, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @cp_set_surface_sync(%struct.radeon_device* %87, i32 %88, i32 48, i32 %89)
  br label %96

91:                                               ; preds = %80
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = load i32, i32* @PACKET3_VC_ACTION_ENA, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @cp_set_surface_sync(%struct.radeon_device* %92, i32 %93, i32 48, i32 %94)
  br label %96

96:                                               ; preds = %91, %86
  ret void
}

declare dso_local i32 @SQ_VTXC_BASE_ADDR_HI(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @SQ_VTXC_STRIDE(i32) #1

declare dso_local i32 @SQ_VTCX_SEL_X(i32) #1

declare dso_local i32 @SQ_VTCX_SEL_Y(i32) #1

declare dso_local i32 @SQ_VTCX_SEL_Z(i32) #1

declare dso_local i32 @SQ_VTCX_SEL_W(i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @S__SQ_CONSTANT_TYPE(i32) #1

declare dso_local i32 @cp_set_surface_sync(%struct.radeon_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
