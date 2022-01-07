; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_pgtable.c_set_pte_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_pgtable.c_set_pte_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@_PAGE_HPTEFLAGS = common dso_local global i32 0, align 4
@CPU_FTR_COHERENT_ICACHE = common dso_local global i32 0, align 4
@CPU_FTR_NOEXECUTE = common dso_local global i32 0, align 4
@PG_arch_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @set_pte_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pte_filter(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @pte_val(i32 %7)
  %9 = load i32, i32* @_PAGE_HPTEFLAGS, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = call i32 @__pte(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @pte_looks_normal(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %2
  %17 = load i32, i32* @CPU_FTR_COHERENT_ICACHE, align 4
  %18 = call i64 @cpu_has_feature(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @CPU_FTR_NOEXECUTE, align 4
  %22 = call i64 @cpu_has_feature(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.page* @maybe_pte_to_page(i32 %25)
  store %struct.page* %26, %struct.page** %6, align 8
  %27 = load %struct.page*, %struct.page** %6, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %3, align 4
  br label %47

31:                                               ; preds = %24
  %32 = load i32, i32* @PG_arch_1, align 4
  %33 = load %struct.page*, %struct.page** %6, align 8
  %34 = getelementptr inbounds %struct.page, %struct.page* %33, i32 0, i32 0
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load %struct.page*, %struct.page** %6, align 8
  %39 = call i32 @flush_dcache_icache_page(%struct.page* %38)
  %40 = load i32, i32* @PG_arch_1, align 4
  %41 = load %struct.page*, %struct.page** %6, align 8
  %42 = getelementptr inbounds %struct.page, %struct.page* %41, i32 0, i32 0
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %37, %31
  br label %45

45:                                               ; preds = %44, %20, %16, %2
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %29
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @__pte(i32) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i64 @pte_looks_normal(i32) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local %struct.page* @maybe_pte_to_page(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @flush_dcache_icache_page(%struct.page*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
