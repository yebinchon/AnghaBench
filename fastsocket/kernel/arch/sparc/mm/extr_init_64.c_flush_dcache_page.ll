; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_init_64.c_flush_dcache_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_init_64.c_flush_dcache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@tlb_type = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8
@PG_dcache_dirty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_dcache_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  %7 = load i64, i64* @tlb_type, align 8
  %8 = load i64, i64* @hypervisor, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %54

11:                                               ; preds = %1
  %12 = load %struct.page*, %struct.page** %2, align 8
  %13 = call %struct.page* @ZERO_PAGE(i32 0)
  %14 = icmp eq %struct.page* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %54

16:                                               ; preds = %11
  %17 = call i32 (...) @get_cpu()
  store i32 %17, i32* %4, align 4
  %18 = load %struct.page*, %struct.page** %2, align 8
  %19 = call %struct.address_space* @page_mapping(%struct.page* %18)
  store %struct.address_space* %19, %struct.address_space** %3, align 8
  %20 = load %struct.address_space*, %struct.address_space** %3, align 8
  %21 = icmp ne %struct.address_space* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load %struct.address_space*, %struct.address_space** %3, align 8
  %24 = call i32 @mapping_mapped(%struct.address_space* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @PG_dcache_dirty, align 4
  %28 = load %struct.page*, %struct.page** %2, align 8
  %29 = getelementptr inbounds %struct.page, %struct.page* %28, i32 0, i32 0
  %30 = call i32 @test_bit(i32 %27, i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load %struct.page*, %struct.page** %2, align 8
  %35 = call i32 @dcache_dirty_cpu(%struct.page* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %52

40:                                               ; preds = %33
  %41 = load %struct.page*, %struct.page** %2, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @smp_flush_dcache_page_impl(%struct.page* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %26
  %45 = load %struct.page*, %struct.page** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @set_dcache_dirty(%struct.page* %45, i32 %46)
  br label %51

48:                                               ; preds = %22, %16
  %49 = load %struct.page*, %struct.page** %2, align 8
  %50 = call i32 @flush_dcache_page_impl(%struct.page* %49)
  br label %51

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %39
  %53 = call i32 (...) @put_cpu()
  br label %54

54:                                               ; preds = %52, %15, %10
  ret void
}

declare dso_local %struct.page* @ZERO_PAGE(i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @mapping_mapped(%struct.address_space*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dcache_dirty_cpu(%struct.page*) #1

declare dso_local i32 @smp_flush_dcache_page_impl(%struct.page*, i32) #1

declare dso_local i32 @set_dcache_dirty(%struct.page*, i32) #1

declare dso_local i32 @flush_dcache_page_impl(%struct.page*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
