; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_traps.c_signal_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_traps.c_signal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_has_fpu = common dso_local global i64 0, align 8
@_save_fp_context = common dso_local global i32 0, align 4
@save_fp_context = common dso_local global i32 0, align 4
@_restore_fp_context = common dso_local global i32 0, align 4
@restore_fp_context = common dso_local global i32 0, align 4
@fpu_emulator_save_context = common dso_local global i32 0, align 4
@fpu_emulator_restore_context = common dso_local global i32 0, align 4
@smp_restore_fp_context = common dso_local global i32 0, align 4
@smp_save_fp_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @signal_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signal_init() #0 {
  %1 = load i64, i64* @cpu_has_fpu, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @_save_fp_context, align 4
  store i32 %4, i32* @save_fp_context, align 4
  %5 = load i32, i32* @_restore_fp_context, align 4
  store i32 %5, i32* @restore_fp_context, align 4
  br label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @fpu_emulator_save_context, align 4
  store i32 %7, i32* @save_fp_context, align 4
  %8 = load i32, i32* @fpu_emulator_restore_context, align 4
  store i32 %8, i32* @restore_fp_context, align 4
  br label %9

9:                                                ; preds = %6, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
