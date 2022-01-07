; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_draw_auto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_draw_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@VGT_PRIMITIVE_TYPE = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_START = common dso_local global i32 0, align 4
@DI_PT_RECTLIST = common dso_local global i32 0, align 4
@PACKET3_INDEX_TYPE = common dso_local global i32 0, align 4
@DI_INDEX_SIZE_16_BIT = common dso_local global i32 0, align 4
@PACKET3_NUM_INSTANCES = common dso_local global i32 0, align 4
@PACKET3_DRAW_INDEX_AUTO = common dso_local global i32 0, align 4
@DI_SRC_SEL_AUTO_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @draw_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_auto(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.radeon_ring*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %4, i32 0, i32 0
  %6 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %7 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %8 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %6, i64 %7
  store %struct.radeon_ring* %8, %struct.radeon_ring** %3, align 8
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %10 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %11 = call i32 @PACKET3(i32 %10, i32 1)
  %12 = call i32 @radeon_ring_write(%struct.radeon_ring* %9, i32 %11)
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %14 = load i32, i32* @VGT_PRIMITIVE_TYPE, align 4
  %15 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %16 = sub nsw i32 %14, %15
  %17 = ashr i32 %16, 2
  %18 = call i32 @radeon_ring_write(%struct.radeon_ring* %13, i32 %17)
  %19 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %20 = load i32, i32* @DI_PT_RECTLIST, align 4
  %21 = call i32 @radeon_ring_write(%struct.radeon_ring* %19, i32 %20)
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %23 = load i32, i32* @PACKET3_INDEX_TYPE, align 4
  %24 = call i32 @PACKET3(i32 %23, i32 0)
  %25 = call i32 @radeon_ring_write(%struct.radeon_ring* %22, i32 %24)
  %26 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %27 = load i32, i32* @DI_INDEX_SIZE_16_BIT, align 4
  %28 = call i32 @radeon_ring_write(%struct.radeon_ring* %26, i32 %27)
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %30 = load i32, i32* @PACKET3_NUM_INSTANCES, align 4
  %31 = call i32 @PACKET3(i32 %30, i32 0)
  %32 = call i32 @radeon_ring_write(%struct.radeon_ring* %29, i32 %31)
  %33 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %34 = call i32 @radeon_ring_write(%struct.radeon_ring* %33, i32 1)
  %35 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %36 = load i32, i32* @PACKET3_DRAW_INDEX_AUTO, align 4
  %37 = call i32 @PACKET3(i32 %36, i32 1)
  %38 = call i32 @radeon_ring_write(%struct.radeon_ring* %35, i32 %37)
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %40 = call i32 @radeon_ring_write(%struct.radeon_ring* %39, i32 3)
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %42 = load i32, i32* @DI_SRC_SEL_AUTO_INDEX, align 4
  %43 = call i32 @radeon_ring_write(%struct.radeon_ring* %41, i32 %42)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
