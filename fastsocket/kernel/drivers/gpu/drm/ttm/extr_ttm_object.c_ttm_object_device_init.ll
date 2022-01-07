; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_object.c_ttm_object_device_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_object.c_ttm_object_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_object_device = type { i32, i32, i32, %struct.ttm_mem_global* }
%struct.ttm_mem_global = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ttm_object_device* @ttm_object_device_init(%struct.ttm_mem_global* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_object_device*, align 8
  %4 = alloca %struct.ttm_mem_global*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_object_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ttm_object_device* @kmalloc(i32 24, i32 %8)
  store %struct.ttm_object_device* %9, %struct.ttm_object_device** %6, align 8
  %10 = load %struct.ttm_object_device*, %struct.ttm_object_device** %6, align 8
  %11 = icmp eq %struct.ttm_object_device* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.ttm_object_device* null, %struct.ttm_object_device** %3, align 8
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %18 = load %struct.ttm_object_device*, %struct.ttm_object_device** %6, align 8
  %19 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %18, i32 0, i32 3
  store %struct.ttm_mem_global* %17, %struct.ttm_mem_global** %19, align 8
  %20 = load %struct.ttm_object_device*, %struct.ttm_object_device** %6, align 8
  %21 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %20, i32 0, i32 2
  %22 = call i32 @rwlock_init(i32* %21)
  %23 = load %struct.ttm_object_device*, %struct.ttm_object_device** %6, align 8
  %24 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %23, i32 0, i32 1
  %25 = call i32 @atomic_set(i32* %24, i32 0)
  %26 = load %struct.ttm_object_device*, %struct.ttm_object_device** %6, align 8
  %27 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %26, i32 0, i32 0
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @drm_ht_create(i32* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %16
  %36 = load %struct.ttm_object_device*, %struct.ttm_object_device** %6, align 8
  store %struct.ttm_object_device* %36, %struct.ttm_object_device** %3, align 8
  br label %40

37:                                               ; preds = %16
  %38 = load %struct.ttm_object_device*, %struct.ttm_object_device** %6, align 8
  %39 = call i32 @kfree(%struct.ttm_object_device* %38)
  store %struct.ttm_object_device* null, %struct.ttm_object_device** %3, align 8
  br label %40

40:                                               ; preds = %37, %35, %15
  %41 = load %struct.ttm_object_device*, %struct.ttm_object_device** %3, align 8
  ret %struct.ttm_object_device* %41
}

declare dso_local %struct.ttm_object_device* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @drm_ht_create(i32*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @kfree(%struct.ttm_object_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
