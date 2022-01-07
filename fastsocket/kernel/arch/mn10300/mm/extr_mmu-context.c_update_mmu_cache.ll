; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/mm/extr_mmu-context.c_update_mmu_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/mm/extr_mmu-context.c_update_mmu_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@xPTEL_UNUSED1 = common dso_local global i64 0, align 8
@xPTEL_UNUSED2 = common dso_local global i64 0, align 8
@MMU_NO_CONTEXT = common dso_local global i64 0, align 8
@_PAGE_NX = common dso_local global i64 0, align 8
@IPTEU = common dso_local global i64 0, align 8
@IPTEL = common dso_local global i32 0, align 4
@xPTEL_V = common dso_local global i32 0, align 4
@DPTEU = common dso_local global i64 0, align 8
@DPTEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_mmu_cache(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @PAGE_MASK, align 8
  %12 = load i64, i64* %5, align 8
  %13 = and i64 %12, %11
  store i64 %13, i64* %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @pte_val(i32 %14)
  %16 = load i64, i64* @xPTEL_UNUSED1, align 8
  %17 = load i64, i64* @xPTEL_UNUSED2, align 8
  %18 = or i64 %16, %17
  %19 = xor i64 %18, -1
  %20 = and i64 %15, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @local_irq_save(i64 %21)
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @mm_context(i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @MMU_NO_CONTEXT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %3
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %9, align 8
  %33 = and i64 %32, 255
  %34 = or i64 %31, %33
  store i64 %34, i64* %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @pte_val(i32 %35)
  %37 = load i64, i64* @_PAGE_NX, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %30
  %41 = load i64, i64* %7, align 8
  store i64 %41, i64* @IPTEU, align 8
  %42 = load i32, i32* @IPTEL, align 4
  %43 = load i32, i32* @xPTEL_V, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i64, i64* %8, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* @IPTEL, align 4
  br label %49

49:                                               ; preds = %46, %40
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i64, i64* %7, align 8
  store i64 %51, i64* @DPTEU, align 8
  %52 = load i32, i32* @DPTEL, align 4
  %53 = load i32, i32* @xPTEL_V, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i64, i64* %8, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* @DPTEL, align 4
  br label %59

59:                                               ; preds = %56, %50
  br label %60

60:                                               ; preds = %59, %3
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @local_irq_restore(i64 %61)
  ret void
}

declare dso_local i64 @pte_val(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @mm_context(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
