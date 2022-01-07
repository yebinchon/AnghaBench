; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r3k.c___update_tlb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r3k.c___update_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vm_area_struct = type { i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@ASID_MASK = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@BARRIER = common dso_local global i32 0, align 4
@cpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_tlb(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %56

18:                                               ; preds = %3
  %19 = call i32 (...) @read_c0_entryhi()
  %20 = load i32, i32* @ASID_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @local_irq_save(i64 %22)
  %24 = load i64, i64* @PAGE_MASK, align 8
  %25 = load i64, i64* %5, align 8
  %26 = and i64 %25, %24
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = or i64 %27, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @write_c0_entryhi(i32 %31)
  %33 = load i32, i32* @BARRIER, align 4
  %34 = call i32 (...) @tlb_probe()
  %35 = call i32 (...) @read_c0_index()
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @pte_val(i32 %36)
  %38 = call i32 @write_c0_entrylo0(i32 %37)
  %39 = load i64, i64* %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = or i64 %39, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @write_c0_entryhi(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %18
  %48 = call i32 (...) @tlb_write_random()
  br label %51

49:                                               ; preds = %18
  %50 = call i32 (...) @tlb_write_indexed()
  br label %51

51:                                               ; preds = %49, %47
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @write_c0_entryhi(i32 %52)
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @local_irq_restore(i64 %54)
  br label %56

56:                                               ; preds = %51, %17
  ret void
}

declare dso_local i32 @read_c0_entryhi(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @write_c0_entryhi(i32) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @read_c0_index(...) #1

declare dso_local i32 @write_c0_entrylo0(i32) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @tlb_write_random(...) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
