; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_hugetlbpage.c_page_table_shareable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_hugetlbpage.c_page_table_shareable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PUD_MASK = common dso_local global i64 0, align 8
@PUD_SIZE = common dso_local global i64 0, align 8
@VM_LOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, %struct.vm_area_struct*, i64, i64)* @page_table_shareable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @page_table_shareable(%struct.vm_area_struct* %0, %struct.vm_area_struct* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %15, %18
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = shl i64 %19, %20
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @PUD_MASK, align 8
  %28 = and i64 %26, %27
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @PUD_SIZE, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %12, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VM_LOCKED, align 8
  %36 = xor i64 %35, -1
  %37 = and i64 %34, %36
  store i64 %37, i64* %13, align 8
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VM_LOCKED, align 8
  %42 = xor i64 %41, -1
  %43 = and i64 %40, %42
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @pmd_index(i64 %44)
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @pmd_index(i64 %46)
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %65, label %49

49:                                               ; preds = %4
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59, %53, %49, %4
  store i64 0, i64* %5, align 8
  br label %68

66:                                               ; preds = %59
  %67 = load i64, i64* %10, align 8
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %66, %65
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

declare dso_local i64 @pmd_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
