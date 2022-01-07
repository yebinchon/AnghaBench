; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_semaphore.c_radeon_semaphore_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_semaphore.c_radeon_semaphore_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_semaphore = type { i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_semaphore_create(%struct.radeon_device* %0, %struct.radeon_semaphore** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_semaphore**, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_semaphore** %1, %struct.radeon_semaphore*** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.radeon_semaphore* @kmalloc(i32 16, i32 %7)
  %9 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %5, align 8
  store %struct.radeon_semaphore* %8, %struct.radeon_semaphore** %9, align 8
  %10 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %5, align 8
  %11 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %10, align 8
  %12 = icmp eq %struct.radeon_semaphore* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %5, align 8
  %21 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %20, align 8
  %22 = getelementptr inbounds %struct.radeon_semaphore, %struct.radeon_semaphore* %21, i32 0, i32 0
  %23 = call i32 @radeon_sa_bo_new(%struct.radeon_device* %17, i32* %19, i32* %22, i32 8, i32 8, i32 1)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %5, align 8
  %28 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %27, align 8
  %29 = call i32 @kfree(%struct.radeon_semaphore* %28)
  %30 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %5, align 8
  store %struct.radeon_semaphore* null, %struct.radeon_semaphore** %30, align 8
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %50

32:                                               ; preds = %16
  %33 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %5, align 8
  %34 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %33, align 8
  %35 = getelementptr inbounds %struct.radeon_semaphore, %struct.radeon_semaphore* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %5, align 8
  %37 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %36, align 8
  %38 = getelementptr inbounds %struct.radeon_semaphore, %struct.radeon_semaphore* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @radeon_sa_bo_gpu_addr(i32 %39)
  %41 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %5, align 8
  %42 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %41, align 8
  %43 = getelementptr inbounds %struct.radeon_semaphore, %struct.radeon_semaphore* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %5, align 8
  %45 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %44, align 8
  %46 = getelementptr inbounds %struct.radeon_semaphore, %struct.radeon_semaphore* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @radeon_sa_bo_cpu_addr(i32 %47)
  %49 = inttoptr i64 %48 to i64*
  store i64 0, i64* %49, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %32, %26, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.radeon_semaphore* @kmalloc(i32, i32) #1

declare dso_local i32 @radeon_sa_bo_new(%struct.radeon_device*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.radeon_semaphore*) #1

declare dso_local i32 @radeon_sa_bo_gpu_addr(i32) #1

declare dso_local i64 @radeon_sa_bo_cpu_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
