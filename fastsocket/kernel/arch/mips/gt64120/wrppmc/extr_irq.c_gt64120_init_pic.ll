; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/gt64120/wrppmc/extr_irq.c_gt64120_init_pic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/gt64120/wrppmc/extr_irq.c_gt64120_init_pic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GT_INTRCAUSE_OFS = common dso_local global i32 0, align 4
@GT_HINTRCAUSE_OFS = common dso_local global i32 0, align 4
@GT_INTRMASK_OFS = common dso_local global i32 0, align 4
@GT_HINTRMASK_OFS = common dso_local global i32 0, align 4
@GT_PCI0_ICMASK_OFS = common dso_local global i32 0, align 4
@GT_PCI0_HICMASK_OFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gt64120_init_pic() #0 {
  %1 = load i32, i32* @GT_INTRCAUSE_OFS, align 4
  %2 = call i32 @GT_WRITE(i32 %1, i32 65011712)
  %3 = load i32, i32* @GT_HINTRCAUSE_OFS, align 4
  %4 = call i32 @GT_WRITE(i32 %3, i32 0)
  %5 = load i32, i32* @GT_INTRMASK_OFS, align 4
  %6 = call i32 @GT_WRITE(i32 %5, i32 0)
  %7 = load i32, i32* @GT_HINTRMASK_OFS, align 4
  %8 = call i32 @GT_WRITE(i32 %7, i32 0)
  %9 = load i32, i32* @GT_PCI0_ICMASK_OFS, align 4
  %10 = call i32 @GT_WRITE(i32 %9, i32 0)
  %11 = load i32, i32* @GT_PCI0_HICMASK_OFS, align 4
  %12 = call i32 @GT_WRITE(i32 %11, i32 0)
  ret void
}

declare dso_local i32 @GT_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
