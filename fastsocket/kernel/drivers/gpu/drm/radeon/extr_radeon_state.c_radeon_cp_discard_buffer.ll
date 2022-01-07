; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_discard_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_discard_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_master = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.drm_buf = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@RING_LOCALS = common dso_local global i32 0, align 4
@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_cp_discard_buffer(%struct.drm_device* %0, %struct.drm_master* %1, %struct.drm_buf* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_master*, align 8
  %6 = alloca %struct.drm_buf*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.drm_radeon_master_private*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_master* %1, %struct.drm_master** %5, align 8
  store %struct.drm_buf* %2, %struct.drm_buf** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %7, align 8
  %13 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %14 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %13, i32 0, i32 0
  %15 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %14, align 8
  store %struct.drm_radeon_master_private* %15, %struct.drm_radeon_master_private** %8, align 8
  %16 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %17 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %9, align 8
  %19 = load i32, i32* @RING_LOCALS, align 4
  %20 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %8, align 8
  %21 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @CHIP_R600, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %3
  %36 = call i32 @BEGIN_RING(i32 3)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @R600_DISPATCH_AGE(i64 %39)
  %41 = call i32 (...) @ADVANCE_RING()
  br label %49

42:                                               ; preds = %3
  %43 = call i32 @BEGIN_RING(i32 2)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @RADEON_DISPATCH_AGE(i64 %46)
  %48 = call i32 (...) @ADVANCE_RING()
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %51 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %53 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  ret void
}

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @R600_DISPATCH_AGE(i64) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @RADEON_DISPATCH_AGE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
