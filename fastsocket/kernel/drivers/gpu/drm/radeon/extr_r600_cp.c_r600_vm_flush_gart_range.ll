; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_vm_flush_gart_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_vm_flush_gart_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@R600_VM_CONTEXT0_INVALIDATION_LOW_ADDR = common dso_local global i32 0, align 4
@R600_VM_CONTEXT0_INVALIDATION_HIGH_ADDR = common dso_local global i32 0, align 4
@R600_VM_CONTEXT0_REQUEST_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @r600_vm_flush_gart_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_vm_flush_gart_range(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %3, align 8
  store i32 1000, i32* %5, align 4
  %9 = load i32, i32* @R600_VM_CONTEXT0_INVALIDATION_LOW_ADDR, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 12
  %14 = call i32 @RADEON_WRITE(i32 %9, i32 %13)
  %15 = load i32, i32* @R600_VM_CONTEXT0_INVALIDATION_HIGH_ADDR, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  %23 = sub nsw i32 %22, 1
  %24 = ashr i32 %23, 12
  %25 = call i32 @RADEON_WRITE(i32 %15, i32 %24)
  %26 = load i32, i32* @R600_VM_CONTEXT0_REQUEST_RESPONSE, align 4
  %27 = call i32 @RADEON_WRITE(i32 %26, i32 2)
  br label %28

28:                                               ; preds = %41, %1
  %29 = load i32, i32* @R600_VM_CONTEXT0_REQUEST_RESPONSE, align 4
  %30 = call i32 @RADEON_READ(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  %33 = call i32 @DRM_UDELAY(i32 1)
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 240
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i1 [ false, %34 ], [ %40, %38 ]
  br i1 %42, label %28, label %43

43:                                               ; preds = %41
  ret void
}

declare dso_local i32 @RADEON_WRITE(i32, i32) #1

declare dso_local i32 @RADEON_READ(i32) #1

declare dso_local i32 @DRM_UDELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
