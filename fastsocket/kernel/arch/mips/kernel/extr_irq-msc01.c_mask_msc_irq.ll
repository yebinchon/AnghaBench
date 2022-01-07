; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_irq-msc01.c_mask_msc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_irq-msc01.c_mask_msc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@irq_base = common dso_local global i32 0, align 4
@MSC01_IC_DISL = common dso_local global i32 0, align 4
@MSC01_IC_DISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mask_msc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mask_msc_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @irq_base, align 4
  %5 = add nsw i32 %4, 32
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @MSC01_IC_DISL, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @irq_base, align 4
  %11 = sub i32 %9, %10
  %12 = shl i32 1, %11
  %13 = call i32 @MSCIC_WRITE(i32 %8, i32 %12)
  br label %22

14:                                               ; preds = %1
  %15 = load i32, i32* @MSC01_IC_DISH, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @irq_base, align 4
  %18 = sub i32 %16, %17
  %19 = sub i32 %18, 32
  %20 = shl i32 1, %19
  %21 = call i32 @MSCIC_WRITE(i32 %15, i32 %20)
  br label %22

22:                                               ; preds = %14, %7
  ret void
}

declare dso_local i32 @MSCIC_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
