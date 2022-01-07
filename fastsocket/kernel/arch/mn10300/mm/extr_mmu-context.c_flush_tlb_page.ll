; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/mm/extr_mmu-context.c_flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/mm/extr_mmu-context.c_flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@MMU_NO_CONTEXT = common dso_local global i64 0, align 8
@IPTEU = common dso_local global i64 0, align 8
@DPTEU = common dso_local global i64 0, align 8
@IPTEL = common dso_local global i32 0, align 4
@xPTEL_V = common dso_local global i32 0, align 4
@DPTEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @PAGE_MASK, align 8
  %9 = load i64, i64* %4, align 8
  %10 = and i64 %9, %8
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @mm_context(i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @MMU_NO_CONTEXT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = and i64 %22, 255
  %24 = or i64 %21, %23
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* @IPTEU, align 8
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* @DPTEU, align 8
  %27 = load i32, i32* @IPTEL, align 4
  %28 = load i32, i32* @xPTEL_V, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 0, i32* @IPTEL, align 4
  br label %32

32:                                               ; preds = %31, %20
  %33 = load i32, i32* @DPTEL, align 4
  %34 = load i32, i32* @xPTEL_V, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* @DPTEL, align 4
  br label %38

38:                                               ; preds = %37, %32
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @local_irq_restore(i64 %40)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @mm_context(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
