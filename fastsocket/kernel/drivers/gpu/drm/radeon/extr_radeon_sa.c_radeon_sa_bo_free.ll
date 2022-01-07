; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_sa_bo = type { i32, i32, %struct.radeon_sa_manager* }
%struct.radeon_sa_manager = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_fence = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_sa_bo_free(%struct.radeon_device* %0, %struct.radeon_sa_bo** %1, %struct.radeon_fence* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_sa_bo**, align 8
  %6 = alloca %struct.radeon_fence*, align 8
  %7 = alloca %struct.radeon_sa_manager*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_sa_bo** %1, %struct.radeon_sa_bo*** %5, align 8
  store %struct.radeon_fence* %2, %struct.radeon_fence** %6, align 8
  %8 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %5, align 8
  %9 = icmp eq %struct.radeon_sa_bo** %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %5, align 8
  %12 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %11, align 8
  %13 = icmp eq %struct.radeon_sa_bo* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %3
  br label %60

15:                                               ; preds = %10
  %16 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %5, align 8
  %17 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %16, align 8
  %18 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %17, i32 0, i32 2
  %19 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %18, align 8
  store %struct.radeon_sa_manager* %19, %struct.radeon_sa_manager** %7, align 8
  %20 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %7, align 8
  %21 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  %25 = icmp ne %struct.radeon_fence* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %15
  %27 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  %28 = call i32 @radeon_fence_signaled(%struct.radeon_fence* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %26
  %31 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  %32 = call i32 @radeon_fence_ref(%struct.radeon_fence* %31)
  %33 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %5, align 8
  %34 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %33, align 8
  %35 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %5, align 8
  %37 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %36, align 8
  %38 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %37, i32 0, i32 0
  %39 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %7, align 8
  %40 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  %43 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = call i32 @list_add_tail(i32* %38, i32* %45)
  br label %51

47:                                               ; preds = %26, %15
  %48 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %5, align 8
  %49 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %48, align 8
  %50 = call i32 @radeon_sa_bo_remove_locked(%struct.radeon_sa_bo* %49)
  br label %51

51:                                               ; preds = %47, %30
  %52 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %7, align 8
  %53 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %52, i32 0, i32 0
  %54 = call i32 @wake_up_all_locked(%struct.TYPE_2__* %53)
  %55 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %7, align 8
  %56 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %5, align 8
  store %struct.radeon_sa_bo* null, %struct.radeon_sa_bo** %59, align 8
  br label %60

60:                                               ; preds = %51, %14
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @radeon_fence_signaled(%struct.radeon_fence*) #1

declare dso_local i32 @radeon_fence_ref(%struct.radeon_fence*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @radeon_sa_bo_remove_locked(%struct.radeon_sa_bo*) #1

declare dso_local i32 @wake_up_all_locked(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
