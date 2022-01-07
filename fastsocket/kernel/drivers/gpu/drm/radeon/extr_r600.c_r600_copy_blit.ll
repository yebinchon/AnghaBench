; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_copy_blit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_copy_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_fence = type { i32 }
%struct.radeon_semaphore = type { i32 }
%struct.radeon_sa_bo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_copy_blit(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, %struct.radeon_fence** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_fence**, align 8
  %12 = alloca %struct.radeon_semaphore*, align 8
  %13 = alloca %struct.radeon_sa_bo*, align 8
  %14 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.radeon_fence** %4, %struct.radeon_fence*** %11, align 8
  store %struct.radeon_semaphore* null, %struct.radeon_semaphore** %12, align 8
  store %struct.radeon_sa_bo* null, %struct.radeon_sa_bo** %13, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %18 = call i32 @r600_blit_prepare_copy(%struct.radeon_device* %15, i32 %16, %struct.radeon_fence** %17, %struct.radeon_sa_bo** %13, %struct.radeon_semaphore** %12)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %6, align 4
  br label %35

23:                                               ; preds = %5
  %24 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %13, align 8
  %29 = call i32 @r600_kms_blit_copy(%struct.radeon_device* %24, i32 %25, i32 %26, i32 %27, %struct.radeon_sa_bo* %28)
  %30 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %31 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %32 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %13, align 8
  %33 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %12, align 8
  %34 = call i32 @r600_blit_done_copy(%struct.radeon_device* %30, %struct.radeon_fence** %31, %struct.radeon_sa_bo* %32, %struct.radeon_semaphore* %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %23, %21
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @r600_blit_prepare_copy(%struct.radeon_device*, i32, %struct.radeon_fence**, %struct.radeon_sa_bo**, %struct.radeon_semaphore**) #1

declare dso_local i32 @r600_kms_blit_copy(%struct.radeon_device*, i32, i32, i32, %struct.radeon_sa_bo*) #1

declare dso_local i32 @r600_blit_done_copy(%struct.radeon_device*, %struct.radeon_fence**, %struct.radeon_sa_bo*, %struct.radeon_semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
