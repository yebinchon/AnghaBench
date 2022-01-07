; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_map_switcher_in_guest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_map_switcher_in_guest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.lguest_pages = type { i32 }

@switcher_pte_pages = common dso_local global i32 0, align 4
@__PAGE_KERNEL_EXEC = common dso_local global i32 0, align 4
@SWITCHER_PGD_INDEX = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@PAGE_KERNEL_EXEC = common dso_local global i32 0, align 4
@SWITCHER_PMD_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @map_switcher_in_guest(%struct.lg_cpu* %0, %struct.lguest_pages* %1) #0 {
  %3 = alloca %struct.lg_cpu*, align 8
  %4 = alloca %struct.lguest_pages*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lg_cpu* %0, %struct.lg_cpu** %3, align 8
  store %struct.lguest_pages* %1, %struct.lguest_pages** %4, align 8
  %8 = load i32, i32* @switcher_pte_pages, align 4
  %9 = call i32* @__get_cpu_var(i32 %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @__pa(i32* %10)
  %12 = load i32, i32* @__PAGE_KERNEL_EXEC, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @__pgd(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.lg_cpu*, %struct.lg_cpu** %3, align 8
  %17 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load %struct.lg_cpu*, %struct.lg_cpu** %3, align 8
  %22 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @SWITCHER_PGD_INDEX, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %15, i32* %28, align 4
  %29 = load %struct.lg_cpu*, %struct.lg_cpu** %3, align 8
  %30 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @__pa(i32* %31)
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = load i32, i32* @PAGE_KERNEL, align 4
  %36 = call i32 @pfn_pte(i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.lguest_pages*, %struct.lguest_pages** %4, align 8
  %39 = ptrtoint %struct.lguest_pages* %38 to i64
  %40 = call i64 @pte_index(i64 %39)
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @set_pte(i32* %41, i32 %42)
  ret void
}

declare dso_local i32* @__get_cpu_var(i32) #1

declare dso_local i32 @__pgd(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32 @pfn_pte(i32, i32) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i64 @pte_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
