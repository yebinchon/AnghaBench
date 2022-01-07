; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_driver_open_kms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_driver_open_kms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { %struct.radeon_fpriv* }
%struct.radeon_fpriv = type { i32 }
%struct.radeon_bo_va = type { i32 }

@CHIP_CAYMAN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RADEON_VA_IB_OFFSET = common dso_local global i32 0, align 4
@RADEON_VM_PAGE_READABLE = common dso_local global i32 0, align 4
@RADEON_VM_PAGE_SNOOPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_driver_open_kms(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_fpriv*, align 8
  %8 = alloca %struct.radeon_bo_va*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %6, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %14 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %13, i32 0, i32 0
  store %struct.radeon_fpriv* null, %struct.radeon_fpriv** %14, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHIP_CAYMAN, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.radeon_fpriv* @kzalloc(i32 4, i32 %21)
  store %struct.radeon_fpriv* %22, %struct.radeon_fpriv** %7, align 8
  %23 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %7, align 8
  %24 = icmp ne %struct.radeon_fpriv* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %67

32:                                               ; preds = %20
  %33 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %34 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %7, align 8
  %35 = getelementptr inbounds %struct.radeon_fpriv, %struct.radeon_fpriv* %34, i32 0, i32 0
  %36 = call i32 @radeon_vm_init(%struct.radeon_device* %33, i32* %35)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %38 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %7, align 8
  %39 = getelementptr inbounds %struct.radeon_fpriv, %struct.radeon_fpriv* %38, i32 0, i32 0
  %40 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.radeon_bo_va* @radeon_vm_bo_add(%struct.radeon_device* %37, i32* %39, i32 %43)
  store %struct.radeon_bo_va* %44, %struct.radeon_bo_va** %8, align 8
  %45 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %46 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %8, align 8
  %47 = load i32, i32* @RADEON_VA_IB_OFFSET, align 4
  %48 = load i32, i32* @RADEON_VM_PAGE_READABLE, align 4
  %49 = load i32, i32* @RADEON_VM_PAGE_SNOOPED, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @radeon_vm_bo_set_addr(%struct.radeon_device* %45, %struct.radeon_bo_va* %46, i32 %47, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %32
  %55 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %56 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %7, align 8
  %57 = getelementptr inbounds %struct.radeon_fpriv, %struct.radeon_fpriv* %56, i32 0, i32 0
  %58 = call i32 @radeon_vm_fini(%struct.radeon_device* %55, i32* %57)
  %59 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %7, align 8
  %60 = call i32 @kfree(%struct.radeon_fpriv* %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %67

62:                                               ; preds = %32
  %63 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %7, align 8
  %64 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %65 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %64, i32 0, i32 0
  store %struct.radeon_fpriv* %63, %struct.radeon_fpriv** %65, align 8
  br label %66

66:                                               ; preds = %62, %2
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %54, %29
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.radeon_fpriv* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_vm_init(%struct.radeon_device*, i32*) #1

declare dso_local %struct.radeon_bo_va* @radeon_vm_bo_add(%struct.radeon_device*, i32*, i32) #1

declare dso_local i32 @radeon_vm_bo_set_addr(%struct.radeon_device*, %struct.radeon_bo_va*, i32, i32) #1

declare dso_local i32 @radeon_vm_fini(%struct.radeon_device*, i32*) #1

declare dso_local i32 @kfree(%struct.radeon_fpriv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
