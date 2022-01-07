; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_copy_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_copy_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring*, %struct.TYPE_4__* }
%struct.radeon_ring = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.radeon_fence = type { i32 }
%struct.radeon_semaphore = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"radeon: moving bo (%d).\0A\00", align 1
@RADEON_GPU_PAGE_SHIFT = common dso_local global i32 0, align 4
@DMA_PACKET_COPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_copy_dma(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, %struct.radeon_fence** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_fence**, align 8
  %12 = alloca %struct.radeon_semaphore*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.radeon_ring*, align 8
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
  store %struct.radeon_semaphore* null, %struct.radeon_semaphore** %12, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = load %struct.radeon_ring*, %struct.radeon_ring** %27, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %28, i64 %30
  store %struct.radeon_ring* %31, %struct.radeon_ring** %14, align 8
  store i32 0, i32* %19, align 4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %33 = call i32 @radeon_semaphore_create(%struct.radeon_device* %32, %struct.radeon_semaphore** %12)
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %19, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %5
  %37 = load i32, i32* %19, align 4
  %38 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %19, align 4
  store i32 %39, i32* %6, align 4
  br label %160

40:                                               ; preds = %5
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @RADEON_GPU_PAGE_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = udiv i32 %43, 4
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @DIV_ROUND_UP(i32 %45, i32 1048575)
  store i32 %46, i32* %18, align 4
  %47 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %48 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %49 = load i32, i32* %18, align 4
  %50 = mul nsw i32 %49, 5
  %51 = add nsw i32 %50, 11
  %52 = call i32 @radeon_ring_lock(%struct.radeon_device* %47, %struct.radeon_ring* %48, i32 %51)
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %40
  %56 = load i32, i32* %19, align 4
  %57 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %59 = call i32 @radeon_semaphore_free(%struct.radeon_device* %58, %struct.radeon_semaphore** %12, %struct.radeon_fence* null)
  %60 = load i32, i32* %19, align 4
  store i32 %60, i32* %6, align 4
  br label %160

61:                                               ; preds = %40
  %62 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %63 = load %struct.radeon_fence*, %struct.radeon_fence** %62, align 8
  %64 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %65 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @radeon_fence_need_sync(%struct.radeon_fence* %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %61
  %70 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %71 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %12, align 8
  %72 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %73 = load %struct.radeon_fence*, %struct.radeon_fence** %72, align 8
  %74 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %77 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @radeon_semaphore_sync_rings(%struct.radeon_device* %70, %struct.radeon_semaphore* %71, i32 %75, i32 %78)
  %80 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %81 = load %struct.radeon_fence*, %struct.radeon_fence** %80, align 8
  %82 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %83 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @radeon_fence_note_sync(%struct.radeon_fence* %81, i32 %84)
  br label %89

86:                                               ; preds = %61
  %87 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %88 = call i32 @radeon_semaphore_free(%struct.radeon_device* %87, %struct.radeon_semaphore** %12, %struct.radeon_fence* null)
  br label %89

89:                                               ; preds = %86, %69
  store i32 0, i32* %17, align 4
  br label %90

90:                                               ; preds = %134, %89
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %137

94:                                               ; preds = %90
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp sgt i32 %96, 1048575
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 1048575, i32* %16, align 4
  br label %99

99:                                               ; preds = %98, %94
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %15, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %15, align 4
  %103 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %104 = load i32, i32* @DMA_PACKET_COPY, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @DMA_PACKET(i32 %104, i32 0, i32 %105)
  %107 = call i32 @radeon_ring_write(%struct.radeon_ring* %103, i32 %106)
  %108 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %109 = load i32, i32* %9, align 4
  %110 = and i32 %109, -4
  %111 = call i32 @radeon_ring_write(%struct.radeon_ring* %108, i32 %110)
  %112 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %113, -4
  %115 = call i32 @radeon_ring_write(%struct.radeon_ring* %112, i32 %114)
  %116 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @upper_32_bits(i32 %117)
  %119 = and i32 %118, 255
  %120 = call i32 @radeon_ring_write(%struct.radeon_ring* %116, i32 %119)
  %121 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @upper_32_bits(i32 %122)
  %124 = and i32 %123, 255
  %125 = call i32 @radeon_ring_write(%struct.radeon_ring* %121, i32 %124)
  %126 = load i32, i32* %16, align 4
  %127 = mul nsw i32 %126, 4
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %16, align 4
  %131 = mul nsw i32 %130, 4
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %99
  %135 = load i32, i32* %17, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %17, align 4
  br label %90

137:                                              ; preds = %90
  %138 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %139 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %140 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %141 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @radeon_fence_emit(%struct.radeon_device* %138, %struct.radeon_fence** %139, i32 %142)
  store i32 %143, i32* %19, align 4
  %144 = load i32, i32* %19, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %137
  %147 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %148 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %149 = call i32 @radeon_ring_unlock_undo(%struct.radeon_device* %147, %struct.radeon_ring* %148)
  %150 = load i32, i32* %19, align 4
  store i32 %150, i32* %6, align 4
  br label %160

151:                                              ; preds = %137
  %152 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %153 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %154 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %152, %struct.radeon_ring* %153)
  %155 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %156 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %157 = load %struct.radeon_fence*, %struct.radeon_fence** %156, align 8
  %158 = call i32 @radeon_semaphore_free(%struct.radeon_device* %155, %struct.radeon_semaphore** %12, %struct.radeon_fence* %157)
  %159 = load i32, i32* %19, align 4
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %151, %146, %55, %36
  %161 = load i32, i32* %6, align 4
  ret i32 %161
}

declare dso_local i32 @radeon_semaphore_create(%struct.radeon_device*, %struct.radeon_semaphore**) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_semaphore_free(%struct.radeon_device*, %struct.radeon_semaphore**, %struct.radeon_fence*) #1

declare dso_local i64 @radeon_fence_need_sync(%struct.radeon_fence*, i32) #1

declare dso_local i32 @radeon_semaphore_sync_rings(%struct.radeon_device*, %struct.radeon_semaphore*, i32, i32) #1

declare dso_local i32 @radeon_fence_note_sync(%struct.radeon_fence*, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @radeon_fence_emit(%struct.radeon_device*, %struct.radeon_fence**, i32) #1

declare dso_local i32 @radeon_ring_unlock_undo(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
