; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_tlb.c_flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_tlb.c_flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64 }
%struct.vm_area_struct = type { %struct.mm_struct* }

@NO_CONTEXT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MMU_DTLB_ENTRIES = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@MMU_CONTEXT_ASID_MASK = common dso_local global i64 0, align 8
@MMU_NO_ASID = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  store %struct.mm_struct* %14, %struct.mm_struct** %7, align 8
  %15 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NO_CONTEXT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %101

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @local_irq_save(i64 %21)
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = sub i64 %23, %24
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = add i64 %25, %28
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @MMU_DTLB_ENTRIES, align 4
  %35 = sdiv i32 %34, 4
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %20
  %38 = load i64, i64* @NO_CONTEXT, align 8
  %39 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %40 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.mm_struct*, %struct.mm_struct** %43, align 8
  %45 = icmp eq %struct.mm_struct* %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %48 = call i32 @activate_context(%struct.mm_struct* %47)
  br label %49

49:                                               ; preds = %46, %37
  br label %98

50:                                               ; preds = %20
  %51 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %52 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MMU_CONTEXT_ASID_MASK, align 8
  %55 = and i64 %53, %54
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* @MMU_NO_ASID, align 8
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* @PAGE_MASK, align 8
  %58 = load i64, i64* %5, align 8
  %59 = and i64 %58, %57
  store i64 %59, i64* %5, align 8
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* @PAGE_MASK, align 8
  %66 = load i64, i64* %6, align 8
  %67 = and i64 %66, %65
  store i64 %67, i64* %6, align 8
  %68 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.mm_struct*, %struct.mm_struct** %70, align 8
  %72 = icmp ne %struct.mm_struct* %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %50
  %74 = call i64 (...) @get_asid()
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @set_asid(i64 %75)
  br label %77

77:                                               ; preds = %73, %50
  br label %78

78:                                               ; preds = %82, %77
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @__flush_tlb_page(i64 %83, i64 %84)
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %5, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %5, align 8
  br label %78

90:                                               ; preds = %78
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* @MMU_NO_ASID, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i64, i64* %11, align 8
  %96 = call i32 @set_asid(i64 %95)
  br label %97

97:                                               ; preds = %94, %90
  br label %98

98:                                               ; preds = %97, %49
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @local_irq_restore(i64 %99)
  br label %101

101:                                              ; preds = %98, %3
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @activate_context(%struct.mm_struct*) #1

declare dso_local i64 @get_asid(...) #1

declare dso_local i32 @set_asid(i64) #1

declare dso_local i32 @__flush_tlb_page(i64, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
