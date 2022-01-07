; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache.c_compute_alias.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache.c_compute_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_info = type { i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_info*)* @compute_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_alias(%struct.cache_info* %0) #0 {
  %2 = alloca %struct.cache_info*, align 8
  store %struct.cache_info* %0, %struct.cache_info** %2, align 8
  %3 = load %struct.cache_info*, %struct.cache_info** %2, align 8
  %4 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = sub nsw i32 %5, 1
  %7 = load %struct.cache_info*, %struct.cache_info** %2, align 8
  %8 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %6, %9
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = xor i32 %12, -1
  %14 = and i32 %10, %13
  %15 = load %struct.cache_info*, %struct.cache_info** %2, align 8
  %16 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.cache_info*, %struct.cache_info** %2, align 8
  %18 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.cache_info*, %struct.cache_info** %2, align 8
  %23 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = add nsw i32 %26, 1
  br label %29

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %28, %21
  %30 = phi i32 [ %27, %21 ], [ 0, %28 ]
  %31 = load %struct.cache_info*, %struct.cache_info** %2, align 8
  %32 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
