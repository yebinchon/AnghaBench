; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_irq-msc01.c_ll_msc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_irq-msc01.c_ll_msc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSC01_IC_VEC = common dso_local global i32 0, align 4
@irq_base = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ll_msc_irq() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MSC01_IC_VEC, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i32 @MSCIC_READ(i32 %2, i32 %3)
  %5 = load i32, i32* %1, align 4
  %6 = icmp ult i32 %5, 64
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = zext i32 %8 to i64
  %10 = load i64, i64* @irq_base, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @do_IRQ(i64 %11)
  br label %14

13:                                               ; preds = %0
  br label %14

14:                                               ; preds = %13, %7
  ret void
}

declare dso_local i32 @MSCIC_READ(i32, i32) #1

declare dso_local i32 @do_IRQ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
