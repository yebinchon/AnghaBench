; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/irq/extr_intc-sh5.c_enable_intc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/irq/extr_intc-sh5.c_enable_intc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_IRL3 = common dso_local global i32 0, align 4
@irlm = common dso_local global i64 0, align 8
@NO_PRIORITY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Trying to use straight IRL0-3 with an encoding platform.\0A\00", align 1
@INTC_INTENB_0 = common dso_local global i64 0, align 8
@INTC_INTENB_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @enable_intc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_intc_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @IRQ_IRL3, align 4
  %7 = icmp ule i32 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i64, i64* @irlm, align 8
  %10 = load i64, i64* @NO_PRIORITY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %8, %1
  %15 = load i32, i32* %2, align 4
  %16 = icmp ult i32 %15, 32
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i64, i64* @INTC_INTENB_0, align 8
  store i64 %18, i64* %3, align 8
  %19 = load i32, i32* %2, align 4
  %20 = shl i32 1, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %4, align 8
  br label %28

22:                                               ; preds = %14
  %23 = load i64, i64* @INTC_INTENB_1, align 8
  store i64 %23, i64* %3, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sub i32 %24, 32
  %26 = shl i32 1, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @ctrl_outl(i64 %29, i64 %30)
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @ctrl_outl(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
