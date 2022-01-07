; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/mm/extr_tlb.c_flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/mm/extr_tlb.c_flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, %struct.mm_struct* }
%struct.mm_struct = type { i64 }

@NO_CONTEXT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@_TLB_ENTRIES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 1
  %12 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  store %struct.mm_struct* %12, %struct.mm_struct** %7, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %14 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NO_CONTEXT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %87

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @local_save_flags(i64 %20)
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = sub i64 %22, %23
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = add i64 %24, %27
  %29 = load i32, i32* @_TLB_ENTRIES, align 4
  %30 = load i32, i32* @PAGE_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = icmp ule i64 %28, %32
  br i1 %33, label %34, label %81

34:                                               ; preds = %19
  %35 = call i32 (...) @get_rasid_register()
  store i32 %35, i32* %9, align 4
  %36 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %37 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @ASID_INSERT(i64 %38)
  %40 = call i32 @set_rasid_register(i32 %39)
  %41 = load i64, i64* @PAGE_MASK, align 8
  %42 = load i64, i64* %5, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %5, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @VM_EXEC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %55, %50
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @invalidate_itlb_mapping(i64 %56)
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @invalidate_dtlb_mapping(i64 %58)
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %5, align 8
  br label %51

64:                                               ; preds = %51
  br label %78

65:                                               ; preds = %34
  br label %66

66:                                               ; preds = %70, %65
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @invalidate_dtlb_mapping(i64 %71)
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %5, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %5, align 8
  br label %66

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %64
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @set_rasid_register(i32 %79)
  br label %84

81:                                               ; preds = %19
  %82 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %83 = call i32 @flush_tlb_mm(%struct.mm_struct* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @local_irq_restore(i64 %85)
  br label %87

87:                                               ; preds = %84, %18
  ret void
}

declare dso_local i32 @local_save_flags(i64) #1

declare dso_local i32 @get_rasid_register(...) #1

declare dso_local i32 @set_rasid_register(i32) #1

declare dso_local i32 @ASID_INSERT(i64) #1

declare dso_local i32 @invalidate_itlb_mapping(i64) #1

declare dso_local i32 @invalidate_dtlb_mapping(i64) #1

declare dso_local i32 @flush_tlb_mm(%struct.mm_struct*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
