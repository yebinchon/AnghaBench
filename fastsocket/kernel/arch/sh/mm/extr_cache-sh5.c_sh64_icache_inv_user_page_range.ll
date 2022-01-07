; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh5.c_sh64_icache_inv_user_page_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh5.c_sh64_icache_inv_user_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i64, i64)* @sh64_icache_inv_user_page_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh64_icache_inv_user_page_range(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.vm_area_struct*, align 8
  %15 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %17 = icmp ne %struct.mm_struct* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %111

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = sub i64 %20, %21
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, 64
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i32 (...) @sh64_icache_inv_all()
  br label %111

30:                                               ; preds = %19
  store i64 0, i64* %13, align 8
  %31 = call i32 (...) @smp_processor_id()
  %32 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %33 = call i64 @cpu_asid(i32 %31, %struct.mm_struct* %32)
  store i64 %33, i64* %11, align 8
  %34 = call i64 (...) @get_asid()
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i64, i64* %13, align 8
  %40 = call i32 @local_irq_save(i64 %39)
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @switch_and_save_asid(i64 %41)
  br label %43

43:                                               ; preds = %38, %30
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @PAGE_MASK, align 8
  %46 = and i64 %44, %45
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* @PAGE_SIZE, align 8
  %48 = load i64, i64* %6, align 8
  %49 = sub i64 %48, 1
  %50 = load i64, i64* @PAGE_MASK, align 8
  %51 = and i64 %49, %50
  %52 = add i64 %47, %51
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %97, %69, %43
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %101

57:                                               ; preds = %53
  %58 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %58, i64 %59)
  store %struct.vm_area_struct* %60, %struct.vm_area_struct** %14, align 8
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %62 = icmp ne %struct.vm_area_struct* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ule i64 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63, %57
  %70 = load i64, i64* @PAGE_SIZE, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %8, align 8
  br label %53

73:                                               ; preds = %63
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %15, align 8
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %78 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @VM_EXEC, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %73
  %84 = load i64, i64* %8, align 8
  store i64 %84, i64* %9, align 8
  br label %85

85:                                               ; preds = %89, %83
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %15, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @sh64_icache_inv_user_page(%struct.vm_area_struct* %90, i64 %91)
  %93 = load i64, i64* @PAGE_SIZE, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %9, align 8
  br label %85

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %73
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %99 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %8, align 8
  br label %53

101:                                              ; preds = %53
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %12, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @switch_and_save_asid(i64 %106)
  %108 = load i64, i64* %13, align 8
  %109 = call i32 @local_irq_restore(i64 %108)
  br label %110

110:                                              ; preds = %105, %101
  br label %111

111:                                              ; preds = %18, %110, %28
  ret void
}

declare dso_local i32 @sh64_icache_inv_all(...) #1

declare dso_local i64 @cpu_asid(i32, %struct.mm_struct*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @get_asid(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @switch_and_save_asid(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @sh64_icache_inv_user_page(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
