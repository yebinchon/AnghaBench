; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gart.c_radeon_vm_bo_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gart.c_radeon_vm_bo_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_bo_va = type { i32, i32, i32, i32, i64, i64, i64, %struct.radeon_bo*, %struct.radeon_vm* }
%struct.radeon_device = type { i32 }
%struct.radeon_vm = type { i32, i32 }
%struct.radeon_bo = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radeon_bo_va* @radeon_vm_bo_add(%struct.radeon_device* %0, %struct.radeon_vm* %1, %struct.radeon_bo* %2) #0 {
  %4 = alloca %struct.radeon_bo_va*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_vm*, align 8
  %7 = alloca %struct.radeon_bo*, align 8
  %8 = alloca %struct.radeon_bo_va*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_vm* %1, %struct.radeon_vm** %6, align 8
  store %struct.radeon_bo* %2, %struct.radeon_bo** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.radeon_bo_va* @kzalloc(i32 56, i32 %9)
  store %struct.radeon_bo_va* %10, %struct.radeon_bo_va** %8, align 8
  %11 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %8, align 8
  %12 = icmp eq %struct.radeon_bo_va* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.radeon_bo_va* null, %struct.radeon_bo_va** %4, align 8
  br label %54

14:                                               ; preds = %3
  %15 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %16 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %8, align 8
  %17 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %16, i32 0, i32 8
  store %struct.radeon_vm* %15, %struct.radeon_vm** %17, align 8
  %18 = load %struct.radeon_bo*, %struct.radeon_bo** %7, align 8
  %19 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %8, align 8
  %20 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %19, i32 0, i32 7
  store %struct.radeon_bo* %18, %struct.radeon_bo** %20, align 8
  %21 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %8, align 8
  %22 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  %23 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %8, align 8
  %24 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %8, align 8
  %26 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %8, align 8
  %28 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %8, align 8
  %30 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %8, align 8
  %32 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %31, i32 0, i32 2
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %8, align 8
  %35 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %34, i32 0, i32 3
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %38 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %8, align 8
  %41 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %40, i32 0, i32 3
  %42 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %43 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %42, i32 0, i32 1
  %44 = call i32 @list_add(i32* %41, i32* %43)
  %45 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %8, align 8
  %46 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %45, i32 0, i32 2
  %47 = load %struct.radeon_bo*, %struct.radeon_bo** %7, align 8
  %48 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %47, i32 0, i32 0
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  %50 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %51 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %8, align 8
  store %struct.radeon_bo_va* %53, %struct.radeon_bo_va** %4, align 8
  br label %54

54:                                               ; preds = %14, %13
  %55 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %4, align 8
  ret %struct.radeon_bo_va* %55
}

declare dso_local %struct.radeon_bo_va* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
