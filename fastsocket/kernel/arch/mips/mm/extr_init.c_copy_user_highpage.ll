; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_init.c_copy_user_highpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_init.c_copy_user_highpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@KM_USER1 = common dso_local global i32 0, align 4
@cpu_has_dc_aliases = common dso_local global i64 0, align 8
@KM_USER0 = common dso_local global i32 0, align 4
@cpu_has_ic_fills_f_dc = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_user_highpage(%struct.page* %0, %struct.page* %1, i64 %2, %struct.vm_area_struct* %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.vm_area_struct* %3, %struct.vm_area_struct** %8, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = load i32, i32* @KM_USER1, align 4
  %13 = call i8* @kmap_atomic(%struct.page* %11, i32 %12)
  store i8* %13, i8** %10, align 8
  %14 = load i64, i64* @cpu_has_dc_aliases, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %4
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = call i64 @page_mapped(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = call i32 @Page_dcache_dirty(%struct.page* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i8* @kmap_coherent(%struct.page* %25, i64 %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @copy_page(i8* %28, i8* %29)
  %31 = call i32 (...) @kunmap_coherent()
  br label %42

32:                                               ; preds = %20, %16, %4
  %33 = load %struct.page*, %struct.page** %6, align 8
  %34 = load i32, i32* @KM_USER0, align 4
  %35 = call i8* @kmap_atomic(%struct.page* %33, i32 %34)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @copy_page(i8* %36, i8* %37)
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* @KM_USER0, align 4
  %41 = call i32 @kunmap_atomic(i8* %39, i32 %40)
  br label %42

42:                                               ; preds = %32, %24
  %43 = load i32, i32* @cpu_has_ic_fills_f_dc, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i8*, i8** %10, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @PAGE_MASK, align 8
  %50 = and i64 %48, %49
  %51 = call i64 @pages_do_alias(i64 %47, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45, %42
  %54 = load i8*, i8** %10, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = call i32 @flush_data_cache_page(i64 %55)
  br label %57

57:                                               ; preds = %53, %45
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* @KM_USER1, align 4
  %60 = call i32 @kunmap_atomic(i8* %58, i32 %59)
  %61 = call i32 (...) @smp_wmb()
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i64 @page_mapped(%struct.page*) #1

declare dso_local i32 @Page_dcache_dirty(%struct.page*) #1

declare dso_local i8* @kmap_coherent(%struct.page*, i64) #1

declare dso_local i32 @copy_page(i8*, i8*) #1

declare dso_local i32 @kunmap_coherent(...) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i64 @pages_do_alias(i64, i64) #1

declare dso_local i32 @flush_data_cache_page(i64) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
