; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_vm_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }
%struct.radeon_vm = type { i32, i32 }

@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i64 0, align 8
@HDP_MEM_COHERENCY_FLUSH_CNTL = common dso_local global i64 0, align 8
@VM_INVALIDATE_REQUEST = common dso_local global i64 0, align 8
@PACKET3_PFP_SYNC_ME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cayman_vm_flush(%struct.radeon_device* %0, i32 %1, %struct.radeon_vm* %2) #0 {
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
  br label %56

17:                                               ; preds = %3
  %18 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %19 = load i64, i64* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 8
  %20 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %21 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %19, %24
  %26 = call i32 @PACKET0(i64 %25, i32 0)
  %27 = call i32 @radeon_ring_write(%struct.radeon_ring* %18, i32 %26)
  %28 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %29 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %30 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 12
  %33 = call i32 @radeon_ring_write(%struct.radeon_ring* %28, i32 %32)
  %34 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %35 = load i64, i64* @HDP_MEM_COHERENCY_FLUSH_CNTL, align 8
  %36 = call i32 @PACKET0(i64 %35, i32 0)
  %37 = call i32 @radeon_ring_write(%struct.radeon_ring* %34, i32 %36)
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %39 = call i32 @radeon_ring_write(%struct.radeon_ring* %38, i32 1)
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %41 = load i64, i64* @VM_INVALIDATE_REQUEST, align 8
  %42 = call i32 @PACKET0(i64 %41, i32 0)
  %43 = call i32 @radeon_ring_write(%struct.radeon_ring* %40, i32 %42)
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %45 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %46 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 1, %47
  %49 = call i32 @radeon_ring_write(%struct.radeon_ring* %44, i32 %48)
  %50 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %51 = load i32, i32* @PACKET3_PFP_SYNC_ME, align 4
  %52 = call i32 @PACKET3(i32 %51, i32 0)
  %53 = call i32 @radeon_ring_write(%struct.radeon_ring* %50, i32 %52)
  %54 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %55 = call i32 @radeon_ring_write(%struct.radeon_ring* %54, i32 0)
  br label %56

56:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET0(i64, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
