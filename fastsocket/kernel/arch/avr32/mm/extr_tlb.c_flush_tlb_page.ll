; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_tlb.c_flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_tlb.c_flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.vm_area_struct = type { %struct.TYPE_3__* }

@NO_CONTEXT = common dso_local global i64 0, align 8
@MMU_NO_ASID = common dso_local global i64 0, align 8
@MMU_CONTEXT_ASID_MASK = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %58

12:                                               ; preds = %2
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NO_CONTEXT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %12
  %21 = load i64, i64* @MMU_NO_ASID, align 8
  store i64 %21, i64* %7, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MMU_CONTEXT_ASID_MASK, align 8
  %28 = and i64 %26, %27
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* @PAGE_MASK, align 8
  %30 = load i64, i64* %4, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @local_irq_save(i64 %32)
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = icmp ne %struct.TYPE_3__* %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %20
  %42 = call i64 (...) @get_asid()
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @set_asid(i64 %43)
  br label %45

45:                                               ; preds = %41, %20
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @__flush_tlb_page(i64 %46, i64 %47)
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @MMU_NO_ASID, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @set_asid(i64 %53)
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @local_irq_restore(i64 %56)
  br label %58

58:                                               ; preds = %55, %12, %2
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

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
