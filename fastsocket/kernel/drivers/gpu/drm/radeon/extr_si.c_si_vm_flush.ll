; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_vm_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }
%struct.radeon_vm = type { i32, i32 }

@PACKET3_WRITE_DATA = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT8_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@HDP_MEM_COHERENCY_FLUSH_CNTL = common dso_local global i32 0, align 4
@VM_INVALIDATE_REQUEST = common dso_local global i32 0, align 4
@PACKET3_PFP_SYNC_ME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @si_vm_flush(%struct.radeon_device* %0, i32 %1, %struct.radeon_vm* %2) #0 {
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
  br label %105

17:                                               ; preds = %3
  %18 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %19 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %20 = call i32 @PACKET3(i32 %19, i32 3)
  %21 = call i32 @radeon_ring_write(%struct.radeon_ring* %18, i32 %20)
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %23 = call i32 @WRITE_DATA_ENGINE_SEL(i32 0)
  %24 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %25 = or i32 %23, %24
  %26 = call i32 @radeon_ring_write(%struct.radeon_ring* %22, i32 %25)
  %27 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %28 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %41

31:                                               ; preds = %17
  %32 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %33 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %34 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %35 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 2
  %38 = add nsw i32 %33, %37
  %39 = ashr i32 %38, 2
  %40 = call i32 @radeon_ring_write(%struct.radeon_ring* %32, i32 %39)
  br label %52

41:                                               ; preds = %17
  %42 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %43 = load i32, i32* @VM_CONTEXT8_PAGE_TABLE_BASE_ADDR, align 4
  %44 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %45 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 8
  %48 = shl i32 %47, 2
  %49 = add nsw i32 %43, %48
  %50 = ashr i32 %49, 2
  %51 = call i32 @radeon_ring_write(%struct.radeon_ring* %42, i32 %50)
  br label %52

52:                                               ; preds = %41, %31
  %53 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %54 = call i32 @radeon_ring_write(%struct.radeon_ring* %53, i32 0)
  %55 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %56 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %57 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 12
  %60 = call i32 @radeon_ring_write(%struct.radeon_ring* %55, i32 %59)
  %61 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %62 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %63 = call i32 @PACKET3(i32 %62, i32 3)
  %64 = call i32 @radeon_ring_write(%struct.radeon_ring* %61, i32 %63)
  %65 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %66 = call i32 @WRITE_DATA_ENGINE_SEL(i32 0)
  %67 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %68 = or i32 %66, %67
  %69 = call i32 @radeon_ring_write(%struct.radeon_ring* %65, i32 %68)
  %70 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %71 = load i32, i32* @HDP_MEM_COHERENCY_FLUSH_CNTL, align 4
  %72 = ashr i32 %71, 2
  %73 = call i32 @radeon_ring_write(%struct.radeon_ring* %70, i32 %72)
  %74 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %75 = call i32 @radeon_ring_write(%struct.radeon_ring* %74, i32 0)
  %76 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %77 = call i32 @radeon_ring_write(%struct.radeon_ring* %76, i32 1)
  %78 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %79 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %80 = call i32 @PACKET3(i32 %79, i32 3)
  %81 = call i32 @radeon_ring_write(%struct.radeon_ring* %78, i32 %80)
  %82 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %83 = call i32 @WRITE_DATA_ENGINE_SEL(i32 0)
  %84 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %85 = or i32 %83, %84
  %86 = call i32 @radeon_ring_write(%struct.radeon_ring* %82, i32 %85)
  %87 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %88 = load i32, i32* @VM_INVALIDATE_REQUEST, align 4
  %89 = ashr i32 %88, 2
  %90 = call i32 @radeon_ring_write(%struct.radeon_ring* %87, i32 %89)
  %91 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %92 = call i32 @radeon_ring_write(%struct.radeon_ring* %91, i32 0)
  %93 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %94 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %95 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 1, %96
  %98 = call i32 @radeon_ring_write(%struct.radeon_ring* %93, i32 %97)
  %99 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %100 = load i32, i32* @PACKET3_PFP_SYNC_ME, align 4
  %101 = call i32 @PACKET3(i32 %100, i32 0)
  %102 = call i32 @radeon_ring_write(%struct.radeon_ring* %99, i32 %101)
  %103 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %104 = call i32 @radeon_ring_write(%struct.radeon_ring* %103, i32 0)
  br label %105

105:                                              ; preds = %52, %16
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @WRITE_DATA_ENGINE_SEL(i32) #1

declare dso_local i32 @WRITE_DATA_DST_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
