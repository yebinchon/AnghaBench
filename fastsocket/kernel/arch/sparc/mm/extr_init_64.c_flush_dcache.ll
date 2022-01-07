; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_init_64.c_flush_dcache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_init_64.c_flush_dcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }

@PG_dcache_dirty = common dso_local global i64 0, align 8
@PG_dcache_cpu_shift = common dso_local global i64 0, align 8
@PG_dcache_cpu_mask = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @flush_dcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_dcache(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call %struct.page* @pfn_to_page(i64 %7)
  store %struct.page* %8, %struct.page** %3, align 8
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = icmp ne %struct.page* %9, null
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @PG_dcache_dirty, align 8
  %17 = shl i64 1, %16
  %18 = and i64 %15, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %11
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @PG_dcache_cpu_shift, align 8
  %23 = lshr i64 %21, %22
  %24 = load i64, i64* @PG_dcache_cpu_mask, align 8
  %25 = and i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = call i32 (...) @get_cpu()
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load %struct.page*, %struct.page** %3, align 8
  %33 = call i32 @flush_dcache_page_impl(%struct.page* %32)
  br label %38

34:                                               ; preds = %20
  %35 = load %struct.page*, %struct.page** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @smp_flush_dcache_page_impl(%struct.page* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @clear_dcache_dirty_cpu(%struct.page* %39, i32 %40)
  %42 = call i32 (...) @put_cpu()
  br label %43

43:                                               ; preds = %38, %11
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @flush_dcache_page_impl(%struct.page*) #1

declare dso_local i32 @smp_flush_dcache_page_impl(%struct.page*, i32) #1

declare dso_local i32 @clear_dcache_dirty_cpu(%struct.page*, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
