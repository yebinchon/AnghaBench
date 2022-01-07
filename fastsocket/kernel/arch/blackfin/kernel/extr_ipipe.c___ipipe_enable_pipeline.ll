; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_ipipe.c___ipipe_enable_pipeline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_ipipe.c___ipipe_enable_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__ipipe_core_clock = common dso_local global i64 0, align 8
@__ipipe_freq_scale = common dso_local global i64 0, align 8
@NR_IRQS = common dso_local global i32 0, align 4
@ipipe_root_domain = common dso_local global i32 0, align 4
@asm_do_IRQ = common dso_local global i32 0, align 4
@__ipipe_ack_irq = common dso_local global i32 0, align 4
@IPIPE_HANDLE_MASK = common dso_local global i32 0, align 4
@IPIPE_PASS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ipipe_enable_pipeline() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @get_cclk()
  store i64 %2, i64* @__ipipe_core_clock, align 8
  %3 = load i64, i64* @__ipipe_core_clock, align 8
  %4 = udiv i64 1000000000, %3
  store i64 %4, i64* @__ipipe_freq_scale, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %16, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @NR_IRQS, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load i32, i32* @ipipe_root_domain, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @IPIPE_HANDLE_MASK, align 4
  %13 = load i32, i32* @IPIPE_PASS_MASK, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @ipipe_virtualize_irq(i32 %10, i32 %11, i32 ptrtoint (i32* @asm_do_IRQ to i32), i32* null, i32* @__ipipe_ack_irq, i32 %14)
  br label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %1, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %5

19:                                               ; preds = %5
  ret void
}

declare dso_local i64 @get_cclk(...) #1

declare dso_local i32 @ipipe_virtualize_irq(i32, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
