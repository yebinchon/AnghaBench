; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_copy_blit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_copy_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }
%struct.radeon_fence = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"radeon: moving bo (%d) asking for %u dw.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PACKET3_BITBLT_MULTI = common dso_local global i32 0, align 4
@RADEON_GMC_SRC_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@RADEON_GMC_DST_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@RADEON_GMC_SRC_CLIPPING = common dso_local global i32 0, align 4
@RADEON_GMC_DST_CLIPPING = common dso_local global i32 0, align 4
@RADEON_GMC_BRUSH_NONE = common dso_local global i32 0, align 4
@RADEON_COLOR_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@RADEON_GMC_SRC_DATATYPE_COLOR = common dso_local global i32 0, align 4
@RADEON_ROP3_S = common dso_local global i32 0, align 4
@RADEON_DP_SRC_SOURCE_MEMORY = common dso_local global i32 0, align 4
@RADEON_GMC_CLR_CMP_CNTL_DIS = common dso_local global i32 0, align 4
@RADEON_GMC_WR_MSK_DIS = common dso_local global i32 0, align 4
@RADEON_DSTCACHE_CTLSTAT = common dso_local global i32 0, align 4
@RADEON_RB2D_DC_FLUSH_ALL = common dso_local global i32 0, align 4
@RADEON_WAIT_UNTIL = common dso_local global i32 0, align 4
@RADEON_WAIT_2D_IDLECLEAN = common dso_local global i32 0, align 4
@RADEON_WAIT_HOST_IDLECLEAN = common dso_local global i32 0, align 4
@RADEON_WAIT_DMA_GUI_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_copy_blit(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, %struct.radeon_fence** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_fence**, align 8
  %12 = alloca %struct.radeon_ring*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.radeon_fence** %4, %struct.radeon_fence*** %11, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %21, align 8
  %23 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %24 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %22, i64 %23
  store %struct.radeon_ring* %24, %struct.radeon_ring** %12, align 8
  %25 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  store i32 %25, i32* %14, align 4
  store i32 0, i32* %19, align 4
  %26 = load i32, i32* %14, align 4
  %27 = and i32 %26, 16383
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = sdiv i32 %28, 64
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %14, align 4
  %31 = sdiv i32 %30, 4
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @DIV_ROUND_UP(i32 %32, i32 8191)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = mul nsw i32 10, %34
  %36 = add nsw i32 64, %35
  store i32 %36, i32* %17, align 4
  %37 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @radeon_ring_lock(%struct.radeon_device* %37, %struct.radeon_ring* %38, i32 %39)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %5
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %153

49:                                               ; preds = %5
  br label %50

50:                                               ; preds = %58, %49
  %51 = load i32, i32* %10, align 4
  %52 = icmp ugt i32 %51, 0
  br i1 %52, label %53, label %122

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp sgt i32 %55, 8191
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 8191, i32* %13, align 4
  br label %58

58:                                               ; preds = %57, %53
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %63 = load i32, i32* @PACKET3_BITBLT_MULTI, align 4
  %64 = call i32 @PACKET3(i32 %63, i32 8)
  %65 = call i32 @radeon_ring_write(%struct.radeon_ring* %62, i32 %64)
  %66 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %67 = load i32, i32* @RADEON_GMC_SRC_PITCH_OFFSET_CNTL, align 4
  %68 = load i32, i32* @RADEON_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @RADEON_GMC_SRC_CLIPPING, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @RADEON_GMC_DST_CLIPPING, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @RADEON_GMC_BRUSH_NONE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @RADEON_COLOR_FORMAT_ARGB8888, align 4
  %77 = shl i32 %76, 8
  %78 = or i32 %75, %77
  %79 = load i32, i32* @RADEON_GMC_SRC_DATATYPE_COLOR, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @RADEON_ROP3_S, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @RADEON_DP_SRC_SOURCE_MEMORY, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @RADEON_GMC_CLR_CMP_CNTL_DIS, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @RADEON_GMC_WR_MSK_DIS, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @radeon_ring_write(%struct.radeon_ring* %66, i32 %88)
  %90 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %91 = load i32, i32* %15, align 4
  %92 = shl i32 %91, 22
  %93 = load i32, i32* %8, align 4
  %94 = ashr i32 %93, 10
  %95 = or i32 %92, %94
  %96 = call i32 @radeon_ring_write(%struct.radeon_ring* %90, i32 %95)
  %97 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %98 = load i32, i32* %15, align 4
  %99 = shl i32 %98, 22
  %100 = load i32, i32* %9, align 4
  %101 = ashr i32 %100, 10
  %102 = or i32 %99, %101
  %103 = call i32 @radeon_ring_write(%struct.radeon_ring* %97, i32 %102)
  %104 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %105 = call i32 @radeon_ring_write(%struct.radeon_ring* %104, i32 536813567)
  %106 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %107 = call i32 @radeon_ring_write(%struct.radeon_ring* %106, i32 0)
  %108 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %109 = call i32 @radeon_ring_write(%struct.radeon_ring* %108, i32 536813567)
  %110 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @radeon_ring_write(%struct.radeon_ring* %110, i32 %111)
  %113 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @radeon_ring_write(%struct.radeon_ring* %113, i32 %114)
  %116 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %16, align 4
  %119 = shl i32 %118, 16
  %120 = or i32 %117, %119
  %121 = call i32 @radeon_ring_write(%struct.radeon_ring* %116, i32 %120)
  br label %50

122:                                              ; preds = %50
  %123 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %124 = load i32, i32* @RADEON_DSTCACHE_CTLSTAT, align 4
  %125 = call i32 @PACKET0(i32 %124, i32 0)
  %126 = call i32 @radeon_ring_write(%struct.radeon_ring* %123, i32 %125)
  %127 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %128 = load i32, i32* @RADEON_RB2D_DC_FLUSH_ALL, align 4
  %129 = call i32 @radeon_ring_write(%struct.radeon_ring* %127, i32 %128)
  %130 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %131 = load i32, i32* @RADEON_WAIT_UNTIL, align 4
  %132 = call i32 @PACKET0(i32 %131, i32 0)
  %133 = call i32 @radeon_ring_write(%struct.radeon_ring* %130, i32 %132)
  %134 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %135 = load i32, i32* @RADEON_WAIT_2D_IDLECLEAN, align 4
  %136 = load i32, i32* @RADEON_WAIT_HOST_IDLECLEAN, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @RADEON_WAIT_DMA_GUI_IDLE, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @radeon_ring_write(%struct.radeon_ring* %134, i32 %139)
  %141 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %142 = icmp ne %struct.radeon_fence** %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %122
  %144 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %145 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %146 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %147 = call i32 @radeon_fence_emit(%struct.radeon_device* %144, %struct.radeon_fence** %145, i64 %146)
  store i32 %147, i32* %19, align 4
  br label %148

148:                                              ; preds = %143, %122
  %149 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %150 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %151 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %149, %struct.radeon_ring* %150)
  %152 = load i32, i32* %19, align 4
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %148, %43
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @radeon_fence_emit(%struct.radeon_device*, %struct.radeon_fence**, i64) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
