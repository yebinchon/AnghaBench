; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_mem_io_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_mem_io_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_mem_type_manager*, align 8
  %5 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %7 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @likely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %17 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock_interruptible(i32* %17)
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %12
  %20 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %15, %11
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
