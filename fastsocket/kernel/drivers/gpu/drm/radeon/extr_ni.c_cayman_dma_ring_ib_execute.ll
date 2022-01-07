; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_dma_ring_ib_execute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_dma_ring_ib_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_3__, %struct.radeon_ring* }
%struct.TYPE_3__ = type { i64 }
%struct.radeon_ring = type { i32, i32 }
%struct.radeon_ib = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DMA_PACKET_WRITE = common dso_local global i32 0, align 4
@DMA_PACKET_NOP = common dso_local global i32 0, align 4
@DMA_PACKET_INDIRECT_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cayman_dma_ring_ib_execute(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ib*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %4, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %10 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %11 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %9, i64 %12
  store %struct.radeon_ring* %13, %struct.radeon_ring** %5, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %2
  %20 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %21 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %28, %19
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 7
  %27 = icmp ne i32 %26, 5
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %24

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 3
  store i32 %33, i32* %6, align 4
  %34 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %35 = load i32, i32* @DMA_PACKET_WRITE, align 4
  %36 = call i32 @DMA_PACKET(i32 %35, i32 0, i32 0, i32 1)
  %37 = call i32 @radeon_ring_write(%struct.radeon_ring* %34, i32 %36)
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %40 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, -4
  %43 = call i32 @radeon_ring_write(%struct.radeon_ring* %38, i32 %42)
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %45 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %46 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @upper_32_bits(i32 %47)
  %49 = and i32 %48, 255
  %50 = call i32 @radeon_ring_write(%struct.radeon_ring* %44, i32 %49)
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @radeon_ring_write(%struct.radeon_ring* %51, i32 %52)
  br label %54

54:                                               ; preds = %31, %2
  br label %55

55:                                               ; preds = %61, %54
  %56 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %57 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 7
  %60 = icmp ne i32 %59, 5
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %63 = load i32, i32* @DMA_PACKET_NOP, align 4
  %64 = call i32 @DMA_PACKET(i32 %63, i32 0, i32 0, i32 0)
  %65 = call i32 @radeon_ring_write(%struct.radeon_ring* %62, i32 %64)
  br label %55

66:                                               ; preds = %55
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %68 = load i32, i32* @DMA_PACKET_INDIRECT_BUFFER, align 4
  %69 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %70 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = icmp ne %struct.TYPE_4__* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %75 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %74, i32 0, i32 3
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  br label %80

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %73
  %81 = phi i32 [ %78, %73 ], [ 0, %79 ]
  %82 = call i32 @DMA_IB_PACKET(i32 %68, i32 %81, i32 0)
  %83 = call i32 @radeon_ring_write(%struct.radeon_ring* %67, i32 %82)
  %84 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %85 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %86 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, -32
  %89 = call i32 @radeon_ring_write(%struct.radeon_ring* %84, i32 %88)
  %90 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %91 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %92 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 12
  %95 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %96 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @upper_32_bits(i32 %97)
  %99 = and i32 %98, 255
  %100 = or i32 %94, %99
  %101 = call i32 @radeon_ring_write(%struct.radeon_ring* %90, i32 %100)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @DMA_IB_PACKET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
