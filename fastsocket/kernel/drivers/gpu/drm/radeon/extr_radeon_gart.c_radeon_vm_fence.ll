; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gart.c_radeon_vm_fence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gart.c_radeon_vm_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8** }
%struct.radeon_vm = type { i64, i8* }
%struct.radeon_fence = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_vm_fence(%struct.radeon_device* %0, %struct.radeon_vm* %1, %struct.radeon_fence* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_vm*, align 8
  %6 = alloca %struct.radeon_fence*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_vm* %1, %struct.radeon_vm** %5, align 8
  store %struct.radeon_fence* %2, %struct.radeon_fence** %6, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  %11 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %12 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8*, i8** %10, i64 %13
  %15 = call i32 @radeon_fence_unref(i8** %14)
  %16 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  %17 = call i8* @radeon_fence_ref(%struct.radeon_fence* %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24
  store i8* %17, i8** %25, align 8
  %26 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %26, i32 0, i32 1
  %28 = call i32 @radeon_fence_unref(i8** %27)
  %29 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  %30 = call i8* @radeon_fence_ref(%struct.radeon_fence* %29)
  %31 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %32 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  ret void
}

declare dso_local i32 @radeon_fence_unref(i8**) #1

declare dso_local i8* @radeon_fence_ref(%struct.radeon_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
