; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_master_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_master_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_master = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_master_destroy(%struct.drm_device* %0, %struct.drm_master* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_master*, align 8
  %5 = alloca %struct.drm_radeon_master_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_master* %1, %struct.drm_master** %4, align 8
  %6 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %7 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %6, i32 0, i32 0
  %8 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %7, align 8
  store %struct.drm_radeon_master_private* %8, %struct.drm_radeon_master_private** %5, align 8
  %9 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %5, align 8
  %10 = icmp ne %struct.drm_radeon_master_private* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %46

12:                                               ; preds = %2
  %13 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %5, align 8
  %14 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %5, align 8
  %19 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %27 = call i32 @radeon_cp_dispatch_flip(%struct.drm_device* %25, %struct.drm_master* %26)
  br label %28

28:                                               ; preds = %24, %17, %12
  %29 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %5, align 8
  %30 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %29, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %30, align 8
  %31 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %5, align 8
  %32 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %5, align 8
  %38 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @drm_rmmap_locked(%struct.drm_device* %36, i64 %39)
  br label %41

41:                                               ; preds = %35, %28
  %42 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %5, align 8
  %43 = call i32 @kfree(%struct.drm_radeon_master_private* %42)
  %44 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %45 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %44, i32 0, i32 0
  store %struct.drm_radeon_master_private* null, %struct.drm_radeon_master_private** %45, align 8
  br label %46

46:                                               ; preds = %41, %11
  ret void
}

declare dso_local i32 @radeon_cp_dispatch_flip(%struct.drm_device*, %struct.drm_master*) #1

declare dso_local i32 @drm_rmmap_locked(%struct.drm_device*, i64) #1

declare dso_local i32 @kfree(%struct.drm_radeon_master_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
