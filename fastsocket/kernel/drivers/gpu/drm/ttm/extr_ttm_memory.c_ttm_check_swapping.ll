; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_check_swapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_check_swapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32, i32, i32, i32, %struct.ttm_mem_zone** }
%struct.ttm_mem_zone = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_mem_global*)* @ttm_check_swapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_check_swapping(%struct.ttm_mem_global* %0) #0 {
  %2 = alloca %struct.ttm_mem_global*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_mem_zone*, align 8
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %7 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %6, i32 0, i32 3
  %8 = call i32 @spin_lock(i32* %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %12 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %17 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %16, i32 0, i32 4
  %18 = load %struct.ttm_mem_zone**, %struct.ttm_mem_zone*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %18, i64 %20
  %22 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %21, align 8
  store %struct.ttm_mem_zone* %22, %struct.ttm_mem_zone** %5, align 8
  %23 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %5, align 8
  %24 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %5, align 8
  %27 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %35

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %9

35:                                               ; preds = %30, %9
  %36 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %37 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %36, i32 0, i32 3
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %44 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %47 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %46, i32 0, i32 1
  %48 = call i32 @queue_work(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %42, %35
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
