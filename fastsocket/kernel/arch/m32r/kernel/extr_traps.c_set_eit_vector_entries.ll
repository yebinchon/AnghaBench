; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_traps.c_set_eit_vector_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_traps.c_set_eit_vector_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eit_vector = common dso_local global i32* null, align 8
@smp_call_function_interrupt = common dso_local global i64 0, align 8
@smp_call_function_single_interrupt = common dso_local global i64 0, align 8
@smp_flush_cache_all_interrupt = common dso_local global i64 0, align 8
@smp_invalidate_interrupt = common dso_local global i64 0, align 8
@smp_ipi_timer_interrupt = common dso_local global i64 0, align 8
@smp_reschedule_interrupt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_eit_vector_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_eit_vector_entries() #0 {
  %1 = load i32*, i32** @eit_vector, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 0
  store i32 -792723455, i32* %2, align 4
  %3 = call i32 @BRA_INSN(void (...)* bitcast (void ()* @default_eit_handler to void (...)*), i32 1)
  %4 = load i32*, i32** @eit_vector, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 %3, i32* %5, align 4
  %6 = load i32*, i32** @eit_vector, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 4
  store i32 -792723440, i32* %7, align 4
  %8 = call i32 @BRA_INSN(void (...)* bitcast (void ()* @default_eit_handler to void (...)*), i32 5)
  %9 = load i32*, i32** @eit_vector, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 5
  store i32 %8, i32* %10, align 4
  %11 = call i32 @BRA_INSN(void (...)* @rie_handler, i32 8)
  %12 = load i32*, i32** @eit_vector, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 8
  store i32 %11, i32* %13, align 4
  %14 = call i32 @BRA_INSN(void (...)* @alignment_check, i32 12)
  %15 = load i32*, i32** @eit_vector, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 12
  store i32 %14, i32* %16, align 4
  %17 = call i32 @BRA_INSN(void (...)* @ill_trap, i32 16)
  %18 = load i32*, i32** @eit_vector, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 16
  store i32 %17, i32* %19, align 4
  %20 = call i32 @BRA_INSN(void (...)* @debug_trap, i32 17)
  %21 = load i32*, i32** @eit_vector, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 17
  store i32 %20, i32* %22, align 4
  %23 = call i32 @BRA_INSN(void (...)* bitcast (void ()* @system_call to void (...)*), i32 18)
  %24 = load i32*, i32** @eit_vector, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 18
  store i32 %23, i32* %25, align 4
  %26 = call i32 @BRA_INSN(void (...)* @ill_trap, i32 19)
  %27 = load i32*, i32** @eit_vector, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 19
  store i32 %26, i32* %28, align 4
  %29 = call i32 @BRA_INSN(void (...)* @ill_trap, i32 20)
  %30 = load i32*, i32** @eit_vector, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 20
  store i32 %29, i32* %31, align 4
  %32 = call i32 @BRA_INSN(void (...)* @ill_trap, i32 21)
  %33 = load i32*, i32** @eit_vector, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 21
  store i32 %32, i32* %34, align 4
  %35 = call i32 @BRA_INSN(void (...)* @ill_trap, i32 22)
  %36 = load i32*, i32** @eit_vector, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 22
  store i32 %35, i32* %37, align 4
  %38 = call i32 @BRA_INSN(void (...)* @ill_trap, i32 23)
  %39 = load i32*, i32** @eit_vector, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 23
  store i32 %38, i32* %40, align 4
  %41 = call i32 @BRA_INSN(void (...)* @ill_trap, i32 24)
  %42 = load i32*, i32** @eit_vector, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 24
  store i32 %41, i32* %43, align 4
  %44 = call i32 @BRA_INSN(void (...)* @ill_trap, i32 25)
  %45 = load i32*, i32** @eit_vector, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 25
  store i32 %44, i32* %46, align 4
  %47 = call i32 @BRA_INSN(void (...)* @ill_trap, i32 26)
  %48 = load i32*, i32** @eit_vector, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 26
  store i32 %47, i32* %49, align 4
  %50 = call i32 @BRA_INSN(void (...)* @ill_trap, i32 27)
  %51 = load i32*, i32** @eit_vector, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 27
  store i32 %50, i32* %52, align 4
  %53 = call i32 @BRA_INSN(void (...)* @cache_flushing_handler, i32 28)
  %54 = load i32*, i32** @eit_vector, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 28
  store i32 %53, i32* %55, align 4
  %56 = call i32 @BRA_INSN(void (...)* @ill_trap, i32 29)
  %57 = load i32*, i32** @eit_vector, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 29
  store i32 %56, i32* %58, align 4
  %59 = call i32 @BRA_INSN(void (...)* @ill_trap, i32 30)
  %60 = load i32*, i32** @eit_vector, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 30
  store i32 %59, i32* %61, align 4
  %62 = call i32 @BRA_INSN(void (...)* @ill_trap, i32 31)
  %63 = load i32*, i32** @eit_vector, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 31
  store i32 %62, i32* %64, align 4
  %65 = call i32 @BRA_INSN(void (...)* @ei_handler, i32 32)
  %66 = load i32*, i32** @eit_vector, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 32
  store i32 %65, i32* %67, align 4
  %68 = call i32 @BRA_INSN(void (...)* bitcast (void ()* @pie_handler to void (...)*), i32 64)
  %69 = load i32*, i32** @eit_vector, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 64
  store i32 %68, i32* %70, align 4
  call void @_flush_cache_copyback_all()
  ret void
}

declare dso_local i32 @BRA_INSN(void (...)*, i32) #1

declare dso_local void @default_eit_handler() #1

declare dso_local void @rie_handler(...) #1

declare dso_local void @alignment_check(...) #1

declare dso_local void @ill_trap(...) #1

declare dso_local void @debug_trap(...) #1

declare dso_local void @system_call() #1

declare dso_local void @cache_flushing_handler(...) #1

declare dso_local void @ei_handler(...) #1

declare dso_local void @pie_handler() #1

declare dso_local void @_flush_cache_copyback_all() #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
