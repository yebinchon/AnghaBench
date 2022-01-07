; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c___xen_pgd_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c___xen_pgd_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@USER_LIMIT = common dso_local global i32 0, align 4
@MMUEXT_PIN_L3_TABLE = common dso_local global i32 0, align 4
@MMUEXT_PIN_L4_TABLE = common dso_local global i32 0, align 4
@PT_PGD = common dso_local global i32 0, align 4
@PT_PMD = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i32*)* @__xen_pgd_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xen_pgd_pin(%struct.mm_struct* %0, i32* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = call i32 (...) @xen_mc_batch()
  %6 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @USER_LIMIT, align 4
  %9 = call i64 @__xen_pgd_walk(%struct.mm_struct* %6, i32* %7, i32 (%struct.mm_struct*, i32, i32)* @xen_pin_page, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = call i32 @xen_mc_issue(i32 0)
  %13 = call i32 (...) @kmap_flush_unused()
  %14 = call i32 (...) @xen_mc_batch()
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @MMUEXT_PIN_L3_TABLE, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @__pa(i32* %17)
  %19 = call i32 @PFN_DOWN(i32 %18)
  %20 = call i32 @xen_do_pin(i32 %16, i32 %19)
  %21 = call i32 @xen_mc_issue(i32 0)
  ret void
}

declare dso_local i32 @xen_mc_batch(...) #1

declare dso_local i64 @__xen_pgd_walk(%struct.mm_struct*, i32*, i32 (%struct.mm_struct*, i32, i32)*, i32) #1

declare dso_local i32 @xen_pin_page(%struct.mm_struct*, i32, i32) #1

declare dso_local i32 @xen_mc_issue(i32) #1

declare dso_local i32 @kmap_flush_unused(...) #1

declare dso_local i32 @xen_do_pin(i32, i32) #1

declare dso_local i32 @PFN_DOWN(i32) #1

declare dso_local i32 @__pa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
