; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_unref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, %struct.ttm_bo_device* }
%struct.ttm_bo_device = type { i32 }

@ttm_bo_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_bo_unref(%struct.ttm_buffer_object** %0) #0 {
  %2 = alloca %struct.ttm_buffer_object**, align 8
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_bo_device*, align 8
  store %struct.ttm_buffer_object** %0, %struct.ttm_buffer_object*** %2, align 8
  %5 = load %struct.ttm_buffer_object**, %struct.ttm_buffer_object*** %2, align 8
  %6 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  store %struct.ttm_buffer_object* %6, %struct.ttm_buffer_object** %3, align 8
  %7 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %8 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %7, i32 0, i32 1
  %9 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  store %struct.ttm_bo_device* %9, %struct.ttm_bo_device** %4, align 8
  %10 = load %struct.ttm_buffer_object**, %struct.ttm_buffer_object*** %2, align 8
  store %struct.ttm_buffer_object* null, %struct.ttm_buffer_object** %10, align 8
  %11 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %12 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %11, i32 0, i32 0
  %13 = call i32 @write_lock(i32* %12)
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 0
  %16 = load i32, i32* @ttm_bo_release, align 4
  %17 = call i32 @kref_put(i32* %15, i32 %16)
  %18 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %19 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %18, i32 0, i32 0
  %20 = call i32 @write_unlock(i32* %19)
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
