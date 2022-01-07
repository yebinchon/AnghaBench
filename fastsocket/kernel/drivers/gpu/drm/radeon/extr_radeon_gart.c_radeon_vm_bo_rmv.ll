; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gart.c_radeon_vm_bo_rmv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gart.c_radeon_vm_bo_rmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.radeon_bo_va = type { i32, %struct.TYPE_4__*, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_vm_bo_rmv(%struct.radeon_device* %0, %struct.radeon_bo_va* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_bo_va*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_bo_va* %1, %struct.radeon_bo_va** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %11 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %25 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @radeon_vm_bo_update_pte(%struct.radeon_device* %20, %struct.TYPE_4__* %23, i32 %26, i32* null)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %19, %2
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %34 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %33, i32 0, i32 2
  %35 = call i32 @list_del(i32* %34)
  %36 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %37 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %42 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %41, i32 0, i32 0
  %43 = call i32 @list_del(i32* %42)
  %44 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  %45 = call i32 @kfree(%struct.radeon_bo_va* %44)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @radeon_vm_bo_update_pte(%struct.radeon_device*, %struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.radeon_bo_va*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
