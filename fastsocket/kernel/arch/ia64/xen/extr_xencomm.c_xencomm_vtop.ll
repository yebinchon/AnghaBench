; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_xencomm.c_xencomm_vtop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_xencomm.c_xencomm_vtop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@KERNEL_START = common dso_local global i64 0, align 8
@KERNEL_TR_PAGE_SIZE = common dso_local global i64 0, align 8
@kernel_virtual_offset = common dso_local global i64 0, align 8
@_PFN_MASK = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@IA64_MAX_PHYS_BITS = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@FOLL_WRITE = common dso_local global i32 0, align 4
@FOLL_TOUCH = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xencomm_vtop(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %139

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @REGION_NUMBER(i64 %14)
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %90

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @KERNEL_START, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @KERNEL_START, align 8
  %24 = load i64, i64* @KERNEL_TR_PAGE_SIZE, align 8
  %25 = add i64 %23, %24
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @kernel_virtual_offset, align 8
  %30 = sub i64 %28, %29
  store i64 %30, i64* %2, align 8
  br label %139

31:                                               ; preds = %21, %17
  %32 = load i64, i64* %3, align 8
  %33 = call i32* @pgd_offset_k(i64 %32)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @pgd_none(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @pgd_bad(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %31
  store i64 -1, i64* %2, align 8
  br label %139

44:                                               ; preds = %38
  %45 = load i32*, i32** %6, align 8
  %46 = load i64, i64* %3, align 8
  %47 = call i32* @pud_offset(i32* %45, i64 %46)
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @pud_none(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @pud_bad(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %44
  store i64 -1, i64* %2, align 8
  br label %139

58:                                               ; preds = %52
  %59 = load i32*, i32** %7, align 8
  %60 = load i64, i64* %3, align 8
  %61 = call i32* @pmd_offset(i32* %59, i64 %60)
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @pmd_none(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @pmd_bad(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %58
  store i64 -1, i64* %2, align 8
  br label %139

72:                                               ; preds = %66
  %73 = load i32*, i32** %8, align 8
  %74 = load i64, i64* %3, align 8
  %75 = call i32* @pte_offset_kernel(i32* %73, i64 %74)
  store i32* %75, i32** %9, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  store i64 -1, i64* %2, align 8
  br label %139

79:                                               ; preds = %72
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @pte_val(i32 %81)
  %83 = load i64, i64* @_PFN_MASK, align 8
  %84 = and i64 %82, %83
  %85 = load i64, i64* %3, align 8
  %86 = load i64, i64* @PAGE_MASK, align 8
  %87 = xor i64 %86, -1
  %88 = and i64 %85, %87
  %89 = or i64 %84, %88
  store i64 %89, i64* %2, align 8
  br label %139

90:                                               ; preds = %13
  %91 = load i64, i64* %3, align 8
  %92 = load i64, i64* @TASK_SIZE, align 8
  %93 = icmp ugt i64 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load i64, i64* %3, align 8
  %96 = call i32 @REGION_NUMBER(i64 %95)
  %97 = icmp eq i32 %96, 7
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i64, i64* %3, align 8
  %100 = call i64 @REGION_OFFSET(i64 %99)
  %101 = load i64, i64* @IA64_MAX_PHYS_BITS, align 8
  %102 = shl i64 1, %101
  %103 = icmp uge i64 %100, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i64, i64* %3, align 8
  %106 = call i32 @ia64_tpa(i64 %105)
  br label %107

107:                                              ; preds = %104, %98, %94
  %108 = load i64, i64* %3, align 8
  %109 = call i64 @__pa(i64 %108)
  store i64 %109, i64* %2, align 8
  br label %139

110:                                              ; preds = %90
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* %3, align 8
  %115 = call %struct.vm_area_struct* @find_extend_vma(i32 %113, i64 %114)
  store %struct.vm_area_struct* %115, %struct.vm_area_struct** %5, align 8
  %116 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %117 = icmp ne %struct.vm_area_struct* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %110
  store i64 -1, i64* %2, align 8
  br label %139

119:                                              ; preds = %110
  %120 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %121 = load i64, i64* %3, align 8
  %122 = load i32, i32* @FOLL_WRITE, align 4
  %123 = load i32, i32* @FOLL_TOUCH, align 4
  %124 = or i32 %122, %123
  %125 = call %struct.page* @follow_page(%struct.vm_area_struct* %120, i64 %121, i32 %124)
  store %struct.page* %125, %struct.page** %4, align 8
  %126 = load %struct.page*, %struct.page** %4, align 8
  %127 = icmp ne %struct.page* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %119
  store i64 -1, i64* %2, align 8
  br label %139

129:                                              ; preds = %119
  %130 = load %struct.page*, %struct.page** %4, align 8
  %131 = call i64 @page_to_pfn(%struct.page* %130)
  %132 = load i64, i64* @PAGE_SHIFT, align 8
  %133 = shl i64 %131, %132
  %134 = load i64, i64* %3, align 8
  %135 = load i64, i64* @PAGE_MASK, align 8
  %136 = xor i64 %135, -1
  %137 = and i64 %134, %136
  %138 = or i64 %133, %137
  store i64 %138, i64* %2, align 8
  br label %139

139:                                              ; preds = %129, %128, %118, %107, %79, %78, %71, %57, %43, %27, %12
  %140 = load i64, i64* %2, align 8
  ret i64 %140
}

declare dso_local i32 @REGION_NUMBER(i64) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i64 @pgd_bad(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i64 @pud_bad(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_bad(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i64 @REGION_OFFSET(i64) #1

declare dso_local i32 @ia64_tpa(i64) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local %struct.vm_area_struct* @find_extend_vma(i32, i64) #1

declare dso_local %struct.page* @follow_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @page_to_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
