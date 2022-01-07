; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_shrink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32, %struct.ttm_mem_shrink* }
%struct.ttm_mem_shrink = type { i32 (%struct.ttm_mem_shrink*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_mem_global*, i32, i32)* @ttm_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_shrink(%struct.ttm_mem_global* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ttm_mem_global*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_mem_shrink*, align 8
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %10 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %13 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %12, i32 0, i32 1
  %14 = load %struct.ttm_mem_shrink*, %struct.ttm_mem_shrink** %13, align 8
  %15 = icmp eq %struct.ttm_mem_shrink* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %47

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %45, %17
  %19 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @ttm_zones_above_swap_target(%struct.ttm_mem_global* %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %18
  %25 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %26 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %25, i32 0, i32 1
  %27 = load %struct.ttm_mem_shrink*, %struct.ttm_mem_shrink** %26, align 8
  store %struct.ttm_mem_shrink* %27, %struct.ttm_mem_shrink** %8, align 8
  %28 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %29 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.ttm_mem_shrink*, %struct.ttm_mem_shrink** %8, align 8
  %32 = getelementptr inbounds %struct.ttm_mem_shrink, %struct.ttm_mem_shrink* %31, i32 0, i32 0
  %33 = load i32 (%struct.ttm_mem_shrink*)*, i32 (%struct.ttm_mem_shrink*)** %32, align 8
  %34 = load %struct.ttm_mem_shrink*, %struct.ttm_mem_shrink** %8, align 8
  %35 = call i32 %33(%struct.ttm_mem_shrink* %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %37 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  br label %47

45:                                               ; preds = %24
  br label %18

46:                                               ; preds = %18
  br label %47

47:                                               ; preds = %46, %44, %16
  %48 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %49 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ttm_zones_above_swap_target(%struct.ttm_mem_global*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
