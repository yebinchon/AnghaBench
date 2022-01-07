; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_alloc_bootmem_huge_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_alloc_bootmem_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hstate = type { i32 }
%struct.huge_bootmem_page = type { %struct.hstate*, i32 }

@nr_gpages = common dso_local global i64 0, align 8
@gpage_freearray = common dso_local global i64* null, align 8
@huge_boot_pages = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alloc_bootmem_huge_page(%struct.hstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hstate*, align 8
  %4 = alloca %struct.huge_bootmem_page*, align 8
  store %struct.hstate* %0, %struct.hstate** %3, align 8
  %5 = load i64, i64* @nr_gpages, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

8:                                                ; preds = %1
  %9 = load i64*, i64** @gpage_freearray, align 8
  %10 = load i64, i64* @nr_gpages, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* @nr_gpages, align 8
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = call %struct.huge_bootmem_page* @phys_to_virt(i64 %13)
  store %struct.huge_bootmem_page* %14, %struct.huge_bootmem_page** %4, align 8
  %15 = load i64*, i64** @gpage_freearray, align 8
  %16 = load i64, i64* @nr_gpages, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  store i64 0, i64* %17, align 8
  %18 = load %struct.huge_bootmem_page*, %struct.huge_bootmem_page** %4, align 8
  %19 = getelementptr inbounds %struct.huge_bootmem_page, %struct.huge_bootmem_page* %18, i32 0, i32 1
  %20 = call i32 @list_add(i32* %19, i32* @huge_boot_pages)
  %21 = load %struct.hstate*, %struct.hstate** %3, align 8
  %22 = load %struct.huge_bootmem_page*, %struct.huge_bootmem_page** %4, align 8
  %23 = getelementptr inbounds %struct.huge_bootmem_page, %struct.huge_bootmem_page* %22, i32 0, i32 0
  store %struct.hstate* %21, %struct.hstate** %23, align 8
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %8, %7
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.huge_bootmem_page* @phys_to_virt(i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
