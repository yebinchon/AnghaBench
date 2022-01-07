; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/score/mm/extr_cache.c___update_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/score/mm/extr_cache.c___update_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@VM_EXEC = common dso_local global i32 0, align 4
@PG_arch_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_cache(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VM_EXEC, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @pte_pfn(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @pfn_valid(i64 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %51

26:                                               ; preds = %3
  %27 = load i64, i64* %8, align 8
  %28 = call %struct.page* @pfn_to_page(i64 %27)
  store %struct.page* %28, %struct.page** %7, align 8
  %29 = load %struct.page*, %struct.page** %7, align 8
  %30 = call i64 @page_mapping(%struct.page* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load i32, i32* @PG_arch_1, align 4
  %34 = load %struct.page*, %struct.page** %7, align 8
  %35 = getelementptr inbounds %struct.page, %struct.page* %34, i32 0, i32 0
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.page*, %struct.page** %7, align 8
  %40 = call i64 @page_address(%struct.page* %39)
  store i64 %40, i64* %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @flush_data_cache_page(i64 %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* @PG_arch_1, align 4
  %48 = load %struct.page*, %struct.page** %7, align 8
  %49 = getelementptr inbounds %struct.page, %struct.page* %48, i32 0, i32 0
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  br label %51

51:                                               ; preds = %25, %46, %32, %26
  ret void
}

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @page_mapping(%struct.page*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @flush_data_cache_page(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
