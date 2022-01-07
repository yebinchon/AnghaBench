; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r200.c_r200_copy_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r200.c_r200_copy_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }
%struct.radeon_fence = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@RADEON_GPU_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"radeon: moving bo (%d).\0A\00", align 1
@RADEON_WAIT_UNTIL = common dso_local global i32 0, align 4
@RADEON_WAIT_DMA_GUI_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r200_copy_dma(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, %struct.radeon_fence** %4) #0 {
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
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.radeon_fence** %4, %struct.radeon_fence*** %11, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = load %struct.radeon_ring*, %struct.radeon_ring** %19, align 8
  %21 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %22 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %20, i64 %21
  store %struct.radeon_ring* %22, %struct.radeon_ring** %12, align 8
  store i32 0, i32* %17, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @RADEON_GPU_PAGE_SHIFT, align 4
  %25 = shl i32 %23, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @DIV_ROUND_UP(i32 %26, i32 2097151)
  store i32 %27, i32* %16, align 4
  %28 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %30 = load i32, i32* %16, align 4
  %31 = mul nsw i32 %30, 4
  %32 = add nsw i32 %31, 64
  %33 = call i32 @radeon_ring_lock(%struct.radeon_device* %28, %struct.radeon_ring* %29, i32 %32)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %5
  %37 = load i32, i32* %17, align 4
  %38 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %17, align 4
  store i32 %39, i32* %6, align 4
  br label %103

40:                                               ; preds = %5
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %42 = load i32, i32* @RADEON_WAIT_UNTIL, align 4
  %43 = call i32 @PACKET0(i32 %42, i32 0)
  %44 = call i32 @radeon_ring_write(%struct.radeon_ring* %41, i32 %43)
  %45 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %46 = call i32 @radeon_ring_write(%struct.radeon_ring* %45, i32 65536)
  store i32 0, i32* %15, align 4
  br label %47

47:                                               ; preds = %80, %40
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %83

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp sgt i32 %53, 2097151
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 2097151, i32* %14, align 4
  br label %56

56:                                               ; preds = %55, %51
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %13, align 4
  %60 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %61 = call i32 @PACKET0(i32 1824, i32 2)
  %62 = call i32 @radeon_ring_write(%struct.radeon_ring* %60, i32 %61)
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @radeon_ring_write(%struct.radeon_ring* %63, i32 %64)
  %66 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @radeon_ring_write(%struct.radeon_ring* %66, i32 %67)
  %69 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %70 = load i32, i32* %14, align 4
  %71 = or i32 %70, -2147483648
  %72 = or i32 %71, 1073741824
  %73 = call i32 @radeon_ring_write(%struct.radeon_ring* %69, i32 %72)
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %56
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %47

83:                                               ; preds = %47
  %84 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %85 = load i32, i32* @RADEON_WAIT_UNTIL, align 4
  %86 = call i32 @PACKET0(i32 %85, i32 0)
  %87 = call i32 @radeon_ring_write(%struct.radeon_ring* %84, i32 %86)
  %88 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %89 = load i32, i32* @RADEON_WAIT_DMA_GUI_IDLE, align 4
  %90 = call i32 @radeon_ring_write(%struct.radeon_ring* %88, i32 %89)
  %91 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %92 = icmp ne %struct.radeon_fence** %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %83
  %94 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %95 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %96 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %97 = call i32 @radeon_fence_emit(%struct.radeon_device* %94, %struct.radeon_fence** %95, i64 %96)
  store i32 %97, i32* %17, align 4
  br label %98

98:                                               ; preds = %93, %83
  %99 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %100 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %101 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %99, %struct.radeon_ring* %100)
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %98, %36
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @radeon_fence_emit(%struct.radeon_device*, %struct.radeon_fence**, i64) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
