; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_page_writable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_page_writable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { i32 }

@_PAGE_PRESENT = common dso_local global i64 0, align 8
@_PAGE_RW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lg_cpu*, i64)* @page_writable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_writable(%struct.lg_cpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lg_cpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.lg_cpu* %0, %struct.lg_cpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %9 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %10 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* %5, align 8
  %13 = call i32* @spgd_addr(%struct.lg_cpu* %8, i32 %11, i64 %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @pgd_flags(i32 %15)
  %17 = load i64, i64* @_PAGE_PRESENT, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32* @spte_addr(%struct.lg_cpu* %22, i32 %24, i64 %25)
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @pte_flags(i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @_PAGE_PRESENT, align 8
  %31 = load i64, i64* @_PAGE_RW, align 8
  %32 = or i64 %30, %31
  %33 = and i64 %29, %32
  %34 = load i64, i64* @_PAGE_PRESENT, align 8
  %35 = load i64, i64* @_PAGE_RW, align 8
  %36 = or i64 %34, %35
  %37 = icmp eq i64 %33, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %21, %20
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32* @spgd_addr(%struct.lg_cpu*, i32, i64) #1

declare dso_local i64 @pgd_flags(i32) #1

declare dso_local i64 @pte_flags(i32) #1

declare dso_local i32* @spte_addr(%struct.lg_cpu*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
