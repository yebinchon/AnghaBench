; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grufault.c_atomic_pte_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grufault.c_atomic_pte_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@HPAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i32, i64*, i32*)* @atomic_pte_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atomic_pte_lookup(%struct.vm_area_struct* %0, i64 %1, i32 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %8, align 8
  %20 = call i32* @pgd_offset(i32 %18, i64 %19)
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pgd_none(i32 %22)
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %86

27:                                               ; preds = %5
  %28 = load i32*, i32** %12, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32* @pud_offset(i32* %28, i64 %29)
  store i32* %30, i32** %14, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pud_none(i32 %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %86

37:                                               ; preds = %27
  %38 = load i32*, i32** %14, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32* @pmd_offset(i32* %38, i64 %39)
  store i32* %40, i32** %13, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pmd_none(i32 %42)
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %86

47:                                               ; preds = %37
  %48 = load i32*, i32** %13, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32* @pte_offset_kernel(i32* %48, i64 %49)
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @pte_present(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @pte_write(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @pte_dirty(i32 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i1 [ true, %58 ], [ %66, %62 ]
  br label %69

69:                                               ; preds = %67, %55
  %70 = phi i1 [ false, %55 ], [ %68, %67 ]
  br label %71

71:                                               ; preds = %69, %47
  %72 = phi i1 [ true, %47 ], [ %70, %69 ]
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 1, i32* %6, align 4
  br label %87

77:                                               ; preds = %71
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @pte_pfn(i32 %78)
  %80 = load i32, i32* @PAGE_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = load i64*, i64** %10, align 8
  store i64 %82, i64* %83, align 8
  %84 = load i32, i32* @PAGE_SHIFT, align 4
  %85 = load i32*, i32** %11, align 8
  store i32 %84, i32* %85, align 4
  store i32 0, i32* %6, align 4
  br label %87

86:                                               ; preds = %46, %36, %26
  store i32 1, i32* %6, align 4
  br label %87

87:                                               ; preds = %86, %77, %76
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32* @pgd_offset(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pgd_none(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_none(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @pte_write(i32) #1

declare dso_local i32 @pte_dirty(i32) #1

declare dso_local i32 @pte_pfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
