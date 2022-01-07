; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_do_set_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_do_set_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { i32 }

@_PAGE_PRESENT = common dso_local global i32 0, align 4
@_PAGE_DIRTY = common dso_local global i32 0, align 4
@_PAGE_ACCESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lg_cpu*, i32, i64, i32)* @do_set_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_set_pte(%struct.lg_cpu* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.lg_cpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.lg_cpu* %0, %struct.lg_cpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i64, i64* %7, align 8
  %14 = call i32* @spgd_addr(%struct.lg_cpu* %11, i32 %12, i64 %13)
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pgd_flags(i32 %16)
  %18 = load i32, i32* @_PAGE_PRESENT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %4
  %22 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i32* @spte_addr(%struct.lg_cpu* %22, i32 %24, i64 %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @release_pte(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @pte_flags(i32 %30)
  %32 = load i32, i32* @_PAGE_DIRTY, align 4
  %33 = load i32, i32* @_PAGE_ACCESSED, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %21
  %38 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @check_gpte(%struct.lg_cpu* %38, i32 %39)
  %41 = load i32*, i32** %10, align 8
  %42 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @pte_flags(i32 %44)
  %46 = load i32, i32* @_PAGE_DIRTY, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @gpte_to_spte(%struct.lg_cpu* %42, i32 %43, i32 %47)
  %49 = call i32 @set_pte(i32* %41, i32 %48)
  br label %54

50:                                               ; preds = %21
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @__pte(i32 0)
  %53 = call i32 @set_pte(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %37
  br label %55

55:                                               ; preds = %54, %4
  ret void
}

declare dso_local i32* @spgd_addr(%struct.lg_cpu*, i32, i64) #1

declare dso_local i32 @pgd_flags(i32) #1

declare dso_local i32* @spte_addr(%struct.lg_cpu*, i32, i64) #1

declare dso_local i32 @release_pte(i32) #1

declare dso_local i32 @pte_flags(i32) #1

declare dso_local i32 @check_gpte(%struct.lg_cpu*, i32) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @gpte_to_spte(%struct.lg_cpu*, i32, i32) #1

declare dso_local i32 @__pte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
