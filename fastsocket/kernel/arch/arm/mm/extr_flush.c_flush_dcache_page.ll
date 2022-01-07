; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_flush.c_flush_dcache_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_flush.c_flush_dcache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@PG_dcache_dirty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_dcache_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load %struct.page*, %struct.page** %2, align 8
  %5 = call %struct.address_space* @page_mapping(%struct.page* %4)
  store %struct.address_space* %5, %struct.address_space** %3, align 8
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = call i32 @PageHighMem(%struct.page* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = load %struct.address_space*, %struct.address_space** %3, align 8
  %11 = icmp ne %struct.address_space* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.address_space*, %struct.address_space** %3, align 8
  %14 = call i32 @mapping_mapped(%struct.address_space* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @PG_dcache_dirty, align 4
  %18 = load %struct.page*, %struct.page** %2, align 8
  %19 = getelementptr inbounds %struct.page, %struct.page* %18, i32 0, i32 0
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  br label %41

21:                                               ; preds = %12, %9, %1
  %22 = load %struct.address_space*, %struct.address_space** %3, align 8
  %23 = load %struct.page*, %struct.page** %2, align 8
  %24 = call i32 @__flush_dcache_page(%struct.address_space* %22, %struct.page* %23)
  %25 = load %struct.address_space*, %struct.address_space** %3, align 8
  %26 = icmp ne %struct.address_space* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = call i64 (...) @cache_is_vivt()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.address_space*, %struct.address_space** %3, align 8
  %32 = load %struct.page*, %struct.page** %2, align 8
  %33 = call i32 @__flush_dcache_aliases(%struct.address_space* %31, %struct.page* %32)
  br label %40

34:                                               ; preds = %27, %21
  %35 = load %struct.address_space*, %struct.address_space** %3, align 8
  %36 = icmp ne %struct.address_space* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @__flush_icache_all()
  br label %39

39:                                               ; preds = %37, %34
  br label %40

40:                                               ; preds = %39, %30
  br label %41

41:                                               ; preds = %40, %16
  ret void
}

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i32 @mapping_mapped(%struct.address_space*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @__flush_dcache_page(%struct.address_space*, %struct.page*) #1

declare dso_local i64 @cache_is_vivt(...) #1

declare dso_local i32 @__flush_dcache_aliases(%struct.address_space*, %struct.page*) #1

declare dso_local i32 @__flush_icache_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
