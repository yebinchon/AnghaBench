; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_unref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_bo = type { %struct.ttm_buffer_object, %struct.radeon_device* }
%struct.ttm_buffer_object = type { i32 }
%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_bo_unref(%struct.radeon_bo** %0) #0 {
  %2 = alloca %struct.radeon_bo**, align 8
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_bo** %0, %struct.radeon_bo*** %2, align 8
  %5 = load %struct.radeon_bo**, %struct.radeon_bo*** %2, align 8
  %6 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %7 = icmp eq %struct.radeon_bo* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %30

9:                                                ; preds = %1
  %10 = load %struct.radeon_bo**, %struct.radeon_bo*** %2, align 8
  %11 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %12 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %11, i32 0, i32 1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %4, align 8
  %14 = load %struct.radeon_bo**, %struct.radeon_bo*** %2, align 8
  %15 = load %struct.radeon_bo*, %struct.radeon_bo** %14, align 8
  %16 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %15, i32 0, i32 0
  store %struct.ttm_buffer_object* %16, %struct.ttm_buffer_object** %3, align 8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @down_read(i32* %19)
  %21 = call i32 @ttm_bo_unref(%struct.ttm_buffer_object** %3)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @up_read(i32* %24)
  %26 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %27 = icmp eq %struct.ttm_buffer_object* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %9
  %29 = load %struct.radeon_bo**, %struct.radeon_bo*** %2, align 8
  store %struct.radeon_bo* null, %struct.radeon_bo** %29, align 8
  br label %30

30:                                               ; preds = %8, %28, %9
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ttm_bo_unref(%struct.ttm_buffer_object**) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
