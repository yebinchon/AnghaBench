; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_cache.c___flush_anon_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_cache.c___flush_anon_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__flush_anon_page(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call i64 @page_address(%struct.page* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @pages_do_alias(i64 %9, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i64 @page_mapped(%struct.page* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = call i32 @Page_dcache_dirty(%struct.page* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i8* @kmap_coherent(%struct.page* %22, i64 %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = call i32 @flush_data_cache_page(i64 %26)
  %28 = call i32 (...) @kunmap_coherent()
  br label %32

29:                                               ; preds = %17, %13
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @flush_data_cache_page(i64 %30)
  br label %32

32:                                               ; preds = %29, %21
  br label %33

33:                                               ; preds = %32, %2
  ret void
}

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @pages_do_alias(i64, i64) #1

declare dso_local i64 @page_mapped(%struct.page*) #1

declare dso_local i32 @Page_dcache_dirty(%struct.page*) #1

declare dso_local i8* @kmap_coherent(%struct.page*, i64) #1

declare dso_local i32 @flush_data_cache_page(i64) #1

declare dso_local i32 @kunmap_coherent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
