; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_dma_vm_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_dma_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }
%struct.radeon_vm = type { i32, i32 }

@DMA_PACKET_SRBM_WRITE = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@HDP_MEM_COHERENCY_FLUSH_CNTL = common dso_local global i32 0, align 4
@VM_INVALIDATE_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cayman_dma_vm_flush(%struct.radeon_device* %0, i32 %1, %struct.radeon_vm* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_vm*, align 8
  %7 = alloca %struct.radeon_ring*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.radeon_vm* %2, %struct.radeon_vm** %6, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i64 %12
  store %struct.radeon_ring* %13, %struct.radeon_ring** %7, align 8
  %14 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %15 = icmp eq %struct.radeon_vm* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %64

17:                                               ; preds = %3
  %18 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %19 = load i32, i32* @DMA_PACKET_SRBM_WRITE, align 4
  %20 = call i32 @DMA_PACKET(i32 %19, i32 0, i32 0, i32 0)
  %21 = call i32 @radeon_ring_write(%struct.radeon_ring* %18, i32 %20)
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %23 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %24 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %25 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 2
  %28 = add nsw i32 %23, %27
  %29 = ashr i32 %28, 2
  %30 = or i32 983040, %29
  %31 = call i32 @radeon_ring_write(%struct.radeon_ring* %22, i32 %30)
  %32 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %33 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %34 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 12
  %37 = call i32 @radeon_ring_write(%struct.radeon_ring* %32, i32 %36)
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %39 = load i32, i32* @DMA_PACKET_SRBM_WRITE, align 4
  %40 = call i32 @DMA_PACKET(i32 %39, i32 0, i32 0, i32 0)
  %41 = call i32 @radeon_ring_write(%struct.radeon_ring* %38, i32 %40)
  %42 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %43 = load i32, i32* @HDP_MEM_COHERENCY_FLUSH_CNTL, align 4
  %44 = ashr i32 %43, 2
  %45 = or i32 983040, %44
  %46 = call i32 @radeon_ring_write(%struct.radeon_ring* %42, i32 %45)
  %47 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %48 = call i32 @radeon_ring_write(%struct.radeon_ring* %47, i32 1)
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %50 = load i32, i32* @DMA_PACKET_SRBM_WRITE, align 4
  %51 = call i32 @DMA_PACKET(i32 %50, i32 0, i32 0, i32 0)
  %52 = call i32 @radeon_ring_write(%struct.radeon_ring* %49, i32 %51)
  %53 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %54 = load i32, i32* @VM_INVALIDATE_REQUEST, align 4
  %55 = ashr i32 %54, 2
  %56 = or i32 983040, %55
  %57 = call i32 @radeon_ring_write(%struct.radeon_ring* %53, i32 %56)
  %58 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %59 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %60 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 1, %61
  %63 = call i32 @radeon_ring_write(%struct.radeon_ring* %58, i32 %62)
  br label %64

64:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
