; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/mm/extr_init.c___ia64_sync_icache_dcache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/mm/extr_init.c___ia64_sync_icache_dcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PG_arch_1 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ia64_sync_icache_dcache(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.page*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.page* @pte_page(i32 %5)
  store %struct.page* %6, %struct.page** %4, align 8
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = call i64 @page_address(%struct.page* %7)
  store i64 %8, i64* %3, align 8
  %9 = load i32, i32* @PG_arch_1, align 4
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %28

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call i64 @compound_order(%struct.page* %19)
  %21 = shl i64 %18, %20
  %22 = add i64 %17, %21
  %23 = call i32 @flush_icache_range(i64 %16, i64 %22)
  %24 = load i32, i32* @PG_arch_1, align 4
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = getelementptr inbounds %struct.page, %struct.page* %25, i32 0, i32 0
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.page* @pte_page(i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @flush_icache_range(i64, i64) #1

declare dso_local i64 @compound_order(%struct.page*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
