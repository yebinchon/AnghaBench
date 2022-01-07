; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_kgdb.c_kgdb_arch_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_kgdb.c_kgdb_arch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__debugger_ipi = common dso_local global i32 0, align 4
@old__debugger_ipi = common dso_local global i32 0, align 4
@__debugger = common dso_local global i32 0, align 4
@old__debugger = common dso_local global i32 0, align 4
@__debugger_bpt = common dso_local global i32 0, align 4
@old__debugger_bpt = common dso_local global i32 0, align 4
@__debugger_sstep = common dso_local global i32 0, align 4
@old__debugger_sstep = common dso_local global i32 0, align 4
@__debugger_iabr_match = common dso_local global i32 0, align 4
@old__debugger_iabr_match = common dso_local global i32 0, align 4
@__debugger_dabr_match = common dso_local global i32 0, align 4
@old__debugger_dabr_match = common dso_local global i32 0, align 4
@__debugger_fault_handler = common dso_local global i32 0, align 4
@old__debugger_fault_handler = common dso_local global i32 0, align 4
@kgdb_call_nmi_hook = common dso_local global i32 0, align 4
@kgdb_debugger = common dso_local global i32 0, align 4
@kgdb_handle_breakpoint = common dso_local global i32 0, align 4
@kgdb_singlestep = common dso_local global i32 0, align 4
@kgdb_iabr_match = common dso_local global i32 0, align 4
@kgdb_dabr_match = common dso_local global i32 0, align 4
@kgdb_not_implemented = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgdb_arch_init() #0 {
  %1 = load i32, i32* @__debugger_ipi, align 4
  store i32 %1, i32* @old__debugger_ipi, align 4
  %2 = load i32, i32* @__debugger, align 4
  store i32 %2, i32* @old__debugger, align 4
  %3 = load i32, i32* @__debugger_bpt, align 4
  store i32 %3, i32* @old__debugger_bpt, align 4
  %4 = load i32, i32* @__debugger_sstep, align 4
  store i32 %4, i32* @old__debugger_sstep, align 4
  %5 = load i32, i32* @__debugger_iabr_match, align 4
  store i32 %5, i32* @old__debugger_iabr_match, align 4
  %6 = load i32, i32* @__debugger_dabr_match, align 4
  store i32 %6, i32* @old__debugger_dabr_match, align 4
  %7 = load i32, i32* @__debugger_fault_handler, align 4
  store i32 %7, i32* @old__debugger_fault_handler, align 4
  %8 = load i32, i32* @kgdb_call_nmi_hook, align 4
  store i32 %8, i32* @__debugger_ipi, align 4
  %9 = load i32, i32* @kgdb_debugger, align 4
  store i32 %9, i32* @__debugger, align 4
  %10 = load i32, i32* @kgdb_handle_breakpoint, align 4
  store i32 %10, i32* @__debugger_bpt, align 4
  %11 = load i32, i32* @kgdb_singlestep, align 4
  store i32 %11, i32* @__debugger_sstep, align 4
  %12 = load i32, i32* @kgdb_iabr_match, align 4
  store i32 %12, i32* @__debugger_iabr_match, align 4
  %13 = load i32, i32* @kgdb_dabr_match, align 4
  store i32 %13, i32* @__debugger_dabr_match, align 4
  %14 = load i32, i32* @kgdb_not_implemented, align 4
  store i32 %14, i32* @__debugger_fault_handler, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
