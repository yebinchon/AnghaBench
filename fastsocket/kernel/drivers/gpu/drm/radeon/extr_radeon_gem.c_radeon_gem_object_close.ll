; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_object_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_object_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_file = type { %struct.radeon_fpriv* }
%struct.radeon_fpriv = type { %struct.radeon_vm }
%struct.radeon_vm = type { i32 }
%struct.radeon_bo = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, i32 }
%struct.radeon_bo_va = type { i64 }

@CHIP_CAYMAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"leaking bo va because we fail to reserve bo (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_gem_object_close(%struct.drm_gem_object* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.radeon_bo*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_fpriv*, align 8
  %8 = alloca %struct.radeon_vm*, align 8
  %9 = alloca %struct.radeon_bo_va*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %11 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %12 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %11)
  store %struct.radeon_bo* %12, %struct.radeon_bo** %5, align 8
  %13 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %14 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %6, align 8
  %16 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %17 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %16, i32 0, i32 0
  %18 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %17, align 8
  store %struct.radeon_fpriv* %18, %struct.radeon_fpriv** %7, align 8
  %19 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %7, align 8
  %20 = getelementptr inbounds %struct.radeon_fpriv, %struct.radeon_fpriv* %19, i32 0, i32 0
  store %struct.radeon_vm* %20, %struct.radeon_vm** %8, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CHIP_CAYMAN, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %58

27:                                               ; preds = %2
  %28 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %29 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %28, i32 1)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %58

38:                                               ; preds = %27
  %39 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %40 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %41 = call %struct.radeon_bo_va* @radeon_vm_bo_find(%struct.radeon_vm* %39, %struct.radeon_bo* %40)
  store %struct.radeon_bo_va* %41, %struct.radeon_bo_va** %9, align 8
  %42 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %9, align 8
  %43 = icmp ne %struct.radeon_bo_va* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %9, align 8
  %46 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %52 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %9, align 8
  %53 = call i32 @radeon_vm_bo_rmv(%struct.radeon_device* %51, %struct.radeon_bo_va* %52)
  br label %54

54:                                               ; preds = %50, %44
  br label %55

55:                                               ; preds = %54, %38
  %56 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %57 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %56)
  br label %58

58:                                               ; preds = %55, %32, %26
  ret void
}

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.radeon_bo_va* @radeon_vm_bo_find(%struct.radeon_vm*, %struct.radeon_bo*) #1

declare dso_local i32 @radeon_vm_bo_rmv(%struct.radeon_device*, %struct.radeon_bo_va*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
