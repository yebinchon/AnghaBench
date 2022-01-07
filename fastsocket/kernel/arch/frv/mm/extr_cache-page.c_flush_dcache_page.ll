; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mm/extr_cache-page.c_flush_dcache_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mm/extr_cache-page.c_flush_dcache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@__KM_CACHE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_dcache_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = call i64 @__get_DAMPR(i32 2)
  store i64 %5, i64* %3, align 8
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = load i32, i32* @__KM_CACHE, align 4
  %8 = call i8* @kmap_atomic(%struct.page* %6, i32 %7)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = load i8*, i8** %4, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load i64, i64* @PAGE_SIZE, align 8
  %14 = add i64 %12, %13
  %15 = call i32 @frv_dcache_writeback(i64 %10, i64 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @__KM_CACHE, align 4
  %18 = call i32 @kunmap_atomic(i8* %16, i32 %17)
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @__set_DAMPR(i32 2, i64 %22)
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @__set_IAMPR(i32 2, i64 %24)
  br label %26

26:                                               ; preds = %21, %1
  ret void
}

declare dso_local i64 @__get_DAMPR(i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @frv_dcache_writeback(i64, i64) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @__set_DAMPR(i32, i64) #1

declare dso_local i32 @__set_IAMPR(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
