; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_pseries_remove_lmb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_pseries_remove_lmb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @pseries_remove_lmb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseries_remove_lmb(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.zone*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @PAGE_SHIFT, align 8
  %12 = lshr i64 %10, %11
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @pfn_valid(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @lmb_remove(i64 %17, i32 %18)
  store i32 0, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @pfn_to_page(i64 %21)
  %23 = call %struct.zone* @page_zone(i32 %22)
  store %struct.zone* %23, %struct.zone** %8, align 8
  %24 = load %struct.zone*, %struct.zone** %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = trunc i64 %27 to i32
  %29 = lshr i32 %26, %28
  %30 = call i32 @__remove_pages(%struct.zone* %24, i64 %25, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %20
  %36 = load i64, i64* %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @lmb_remove(i64 %36, i32 %37)
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @__va(i64 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = add i64 %42, %44
  %46 = call i32 @remove_section_mapping(i64 %41, i64 %45)
  store i32 %46, i32* %9, align 4
  %47 = call i32 (...) @vm_unmap_aliases()
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %35, %33, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local i32 @lmb_remove(i64, i32) #1

declare dso_local %struct.zone* @page_zone(i32) #1

declare dso_local i32 @pfn_to_page(i64) #1

declare dso_local i32 @__remove_pages(%struct.zone*, i64, i32) #1

declare dso_local i64 @__va(i64) #1

declare dso_local i32 @remove_section_mapping(i64, i64) #1

declare dso_local i32 @vm_unmap_aliases(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
