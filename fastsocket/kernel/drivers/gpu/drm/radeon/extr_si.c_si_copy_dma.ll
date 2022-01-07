; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_copy_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_copy_dma.c"
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
define dso_local i32 @si_copy_dma(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, %struct.radeon_fence** %4) #0 {
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
  br label %155

40:                                               ; preds = %5
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @RADEON_GPU_PAGE_SHIFT, align 4
  %43 = shl i32 %41, %42
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @DIV_ROUND_UP(i32 %44, i32 1048575)
  store i32 %45, i32* %18, align 4
  %46 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %47 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %48 = load i32, i32* %18, align 4
  %49 = mul nsw i32 %48, 5
  %50 = add nsw i32 %49, 11
  %51 = call i32 @radeon_ring_lock(%struct.radeon_device* %46, %struct.radeon_ring* %47, i32 %50)
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %40
  %55 = load i32, i32* %19, align 4
  %56 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %58 = call i32 @radeon_semaphore_free(%struct.radeon_device* %57, %struct.radeon_semaphore** %12, %struct.radeon_fence* null)
  %59 = load i32, i32* %19, align 4
  store i32 %59, i32* %6, align 4
  br label %155

60:                                               ; preds = %40
  %61 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %62 = load %struct.radeon_fence*, %struct.radeon_fence** %61, align 8
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %64 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @radeon_fence_need_sync(%struct.radeon_fence* %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %60
  %69 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %70 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %12, align 8
  %71 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %72 = load %struct.radeon_fence*, %struct.radeon_fence** %71, align 8
  %73 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %76 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @radeon_semaphore_sync_rings(%struct.radeon_device* %69, %struct.radeon_semaphore* %70, i32 %74, i32 %77)
  %79 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %80 = load %struct.radeon_fence*, %struct.radeon_fence** %79, align 8
  %81 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %82 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @radeon_fence_note_sync(%struct.radeon_fence* %80, i32 %83)
  br label %88

85:                                               ; preds = %60
  %86 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %87 = call i32 @radeon_semaphore_free(%struct.radeon_device* %86, %struct.radeon_semaphore** %12, %struct.radeon_fence* null)
  br label %88

88:                                               ; preds = %85, %68
  store i32 0, i32* %17, align 4
  br label %89

89:                                               ; preds = %129, %88
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %18, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %132

93:                                               ; preds = %89
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp sgt i32 %95, 1048575
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 1048575, i32* %16, align 4
  br label %98

98:                                               ; preds = %97, %93
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %15, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %15, align 4
  %102 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %103 = load i32, i32* @DMA_PACKET_COPY, align 4
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @DMA_PACKET(i32 %103, i32 1, i32 0, i32 0, i32 %104)
  %106 = call i32 @radeon_ring_write(%struct.radeon_ring* %102, i32 %105)
  %107 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @radeon_ring_write(%struct.radeon_ring* %107, i32 %108)
  %110 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @radeon_ring_write(%struct.radeon_ring* %110, i32 %111)
  %113 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @upper_32_bits(i32 %114)
  %116 = and i32 %115, 255
  %117 = call i32 @radeon_ring_write(%struct.radeon_ring* %113, i32 %116)
  %118 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @upper_32_bits(i32 %119)
  %121 = and i32 %120, 255
  %122 = call i32 @radeon_ring_write(%struct.radeon_ring* %118, i32 %121)
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %98
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %17, align 4
  br label %89

132:                                              ; preds = %89
  %133 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %134 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %135 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %136 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @radeon_fence_emit(%struct.radeon_device* %133, %struct.radeon_fence** %134, i32 %137)
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %19, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %143 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %144 = call i32 @radeon_ring_unlock_undo(%struct.radeon_device* %142, %struct.radeon_ring* %143)
  %145 = load i32, i32* %19, align 4
  store i32 %145, i32* %6, align 4
  br label %155

146:                                              ; preds = %132
  %147 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %148 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %149 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %147, %struct.radeon_ring* %148)
  %150 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %151 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %152 = load %struct.radeon_fence*, %struct.radeon_fence** %151, align 8
  %153 = call i32 @radeon_semaphore_free(%struct.radeon_device* %150, %struct.radeon_semaphore** %12, %struct.radeon_fence* %152)
  %154 = load i32, i32* %19, align 4
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %146, %141, %54, %36
  %156 = load i32, i32* %6, align 4
  ret i32 %156
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

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32, i32) #1

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
