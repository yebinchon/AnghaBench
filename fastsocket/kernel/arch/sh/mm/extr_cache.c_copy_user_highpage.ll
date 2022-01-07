; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache.c_copy_user_highpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache.c_copy_user_highpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@KM_USER1 = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PG_dcache_dirty = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

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
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %4
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = call i64 @page_mapped(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load i32, i32* @PG_dcache_dirty, align 4
  %22 = load %struct.page*, %struct.page** %6, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %20
  %27 = load %struct.page*, %struct.page** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i8* @kmap_coherent(%struct.page* %27, i64 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @copy_page(i8* %30, i8* %31)
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @kunmap_coherent(i8* %33)
  br label %45

35:                                               ; preds = %20, %16, %4
  %36 = load %struct.page*, %struct.page** %6, align 8
  %37 = load i32, i32* @KM_USER0, align 4
  %38 = call i8* @kmap_atomic(%struct.page* %36, i32 %37)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @copy_page(i8* %39, i8* %40)
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* @KM_USER0, align 4
  %44 = call i32 @kunmap_atomic(i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %26
  %46 = load i8*, i8** %10, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @PAGE_MASK, align 8
  %50 = and i64 %48, %49
  %51 = call i64 @pages_do_alias(i64 %47, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = call i32 @__flush_purge_region(i8* %54, i32 %55)
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

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i8* @kmap_coherent(%struct.page*, i64) #1

declare dso_local i32 @copy_page(i8*, i8*) #1

declare dso_local i32 @kunmap_coherent(i8*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i64 @pages_do_alias(i64, i64) #1

declare dso_local i32 @__flush_purge_region(i8*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
