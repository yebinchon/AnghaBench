; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mm/extr_cache-page.c_flush_icache_user_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mm/extr_cache-page.c_flush_icache_user_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@__KM_CACHE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_icache_user_range(%struct.vm_area_struct* %0, %struct.page* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = call i64 @__get_DAMPR(i32 2)
  store i64 %11, i64* %9, align 8
  %12 = load %struct.page*, %struct.page** %6, align 8
  %13 = load i32, i32* @__KM_CACHE, align 4
  %14 = call i8* @kmap_atomic(%struct.page* %12, i32 %13)
  store i8* %14, i8** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @PAGE_MASK, align 8
  %17 = xor i64 %16, -1
  %18 = and i64 %15, %17
  %19 = load i8*, i8** %10, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = or i64 %18, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %23, %24
  %26 = call i32 @frv_cache_wback_inv(i64 %22, i64 %25)
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* @__KM_CACHE, align 4
  %29 = call i32 @kunmap_atomic(i8* %27, i32 %28)
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @__set_DAMPR(i32 2, i64 %33)
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @__set_IAMPR(i32 2, i64 %35)
  br label %37

37:                                               ; preds = %32, %4
  ret void
}

declare dso_local i64 @__get_DAMPR(i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @frv_cache_wback_inv(i64, i64) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @__set_DAMPR(i32, i64) #1

declare dso_local i32 @__set_IAMPR(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
