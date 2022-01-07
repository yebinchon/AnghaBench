; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gart.c_radeon_vm_alloc_pt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gart.c_radeon_vm_alloc_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_vm = type { i32, i32*, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Cannot allocate memory for page table array\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_vm_alloc_pt(%struct.radeon_device* %0, %struct.radeon_vm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_vm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_vm* %1, %struct.radeon_vm** %5, align 8
  %10 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %11 = icmp eq %struct.radeon_vm* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %94

15:                                               ; preds = %2
  %16 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %17 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %94

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %47, %21
  %23 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %24 = call i32 @radeon_vm_directory_size(%struct.radeon_device* %23)
  %25 = call i32 @RADEON_GPU_PAGE_ALIGN(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %31 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %30, i32 0, i32 1
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %34 = call i32 @radeon_sa_bo_new(%struct.radeon_device* %26, i32* %29, i32** %31, i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %22
  %40 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %41 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %42 = call i32 @radeon_vm_evict(%struct.radeon_device* %40, %struct.radeon_vm* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %94

47:                                               ; preds = %39
  br label %22

48:                                               ; preds = %22
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %94

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %56 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @radeon_sa_bo_gpu_addr(i32* %57)
  %59 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %60 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %62 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32* @radeon_sa_bo_cpu_addr(i32* %63)
  store i32* %64, i32** %8, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @memset(i32* %65, i32 0, i32 %66)
  %68 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %69 = call i32 @radeon_vm_num_pdes(%struct.radeon_device* %68)
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32* @kzalloc(i32 %73, i32 %74)
  %76 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %77 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %76, i32 0, i32 2
  store i32* %75, i32** %77, align 8
  %78 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %79 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %54
  %83 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %85 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %86 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %85, i32 0, i32 1
  %87 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %88 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @radeon_sa_bo_free(%struct.radeon_device* %84, i32** %86, i32 %89)
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %94

93:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %82, %51, %45, %20, %12
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @RADEON_GPU_PAGE_ALIGN(i32) #1

declare dso_local i32 @radeon_vm_directory_size(%struct.radeon_device*) #1

declare dso_local i32 @radeon_sa_bo_new(%struct.radeon_device*, i32*, i32**, i32, i32, i32) #1

declare dso_local i32 @radeon_vm_evict(%struct.radeon_device*, %struct.radeon_vm*) #1

declare dso_local i32 @radeon_sa_bo_gpu_addr(i32*) #1

declare dso_local i32* @radeon_sa_bo_cpu_addr(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @radeon_vm_num_pdes(%struct.radeon_device*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_sa_bo_free(%struct.radeon_device*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
