; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_driver_postclose_kms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_driver_postclose_kms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { %struct.radeon_fpriv* }
%struct.radeon_fpriv = type { i32 }
%struct.radeon_bo_va = type { i32 }

@CHIP_CAYMAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_driver_postclose_kms(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_fpriv*, align 8
  %7 = alloca %struct.radeon_bo_va*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  store %struct.radeon_device* %11, %struct.radeon_device** %5, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CHIP_CAYMAN, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %2
  %18 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %19 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %18, i32 0, i32 0
  %20 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %19, align 8
  %21 = icmp ne %struct.radeon_fpriv* %20, null
  br i1 %21, label %22, label %62

22:                                               ; preds = %17
  %23 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %24 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %23, i32 0, i32 0
  %25 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %24, align 8
  store %struct.radeon_fpriv* %25, %struct.radeon_fpriv** %6, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @radeon_bo_reserve(i32 %29, i32 0)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %22
  %34 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %6, align 8
  %35 = getelementptr inbounds %struct.radeon_fpriv, %struct.radeon_fpriv* %34, i32 0, i32 0
  %36 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.radeon_bo_va* @radeon_vm_bo_find(i32* %35, i32 %39)
  store %struct.radeon_bo_va* %40, %struct.radeon_bo_va** %7, align 8
  %41 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %7, align 8
  %42 = icmp ne %struct.radeon_bo_va* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %45 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %7, align 8
  %46 = call i32 @radeon_vm_bo_rmv(%struct.radeon_device* %44, %struct.radeon_bo_va* %45)
  br label %47

47:                                               ; preds = %43, %33
  %48 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @radeon_bo_unreserve(i32 %51)
  br label %53

53:                                               ; preds = %47, %22
  %54 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %55 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %6, align 8
  %56 = getelementptr inbounds %struct.radeon_fpriv, %struct.radeon_fpriv* %55, i32 0, i32 0
  %57 = call i32 @radeon_vm_fini(%struct.radeon_device* %54, i32* %56)
  %58 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %6, align 8
  %59 = call i32 @kfree(%struct.radeon_fpriv* %58)
  %60 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %61 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %60, i32 0, i32 0
  store %struct.radeon_fpriv* null, %struct.radeon_fpriv** %61, align 8
  br label %62

62:                                               ; preds = %53, %17, %2
  ret void
}

declare dso_local i32 @radeon_bo_reserve(i32, i32) #1

declare dso_local %struct.radeon_bo_va* @radeon_vm_bo_find(i32*, i32) #1

declare dso_local i32 @radeon_vm_bo_rmv(%struct.radeon_device*, %struct.radeon_bo_va*) #1

declare dso_local i32 @radeon_bo_unreserve(i32) #1

declare dso_local i32 @radeon_vm_fini(%struct.radeon_device*, i32*) #1

declare dso_local i32 @kfree(%struct.radeon_fpriv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
