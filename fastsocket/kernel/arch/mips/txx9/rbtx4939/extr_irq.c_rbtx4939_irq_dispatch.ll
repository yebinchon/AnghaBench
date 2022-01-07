; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/txx9/rbtx4939/extr_irq.c_rbtx4939_irq_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/txx9/rbtx4939/extr_irq.c_rbtx4939_irq_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAUSEF_IP7 = common dso_local global i32 0, align 4
@MIPS_CPU_IRQ_BASE = common dso_local global i32 0, align 4
@CAUSEF_IP0 = common dso_local global i32 0, align 4
@CAUSEF_IP1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rbtx4939_irq_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbtx4939_irq_dispatch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @CAUSEF_IP7, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @MIPS_CPU_IRQ_BASE, align 4
  %11 = add nsw i32 %10, 7
  store i32 %11, i32* %2, align 4
  br label %45

12:                                               ; preds = %1
  %13 = call i32 (...) @tx4939_irq()
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %23 [
    i32 128, label %21
  ]

21:                                               ; preds = %19
  %22 = call i32 (...) @rbtx4939_ioc_irqroute()
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %21
  br label %43

24:                                               ; preds = %12
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @CAUSEF_IP0, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @MIPS_CPU_IRQ_BASE, align 4
  %31 = add nsw i32 %30, 0
  store i32 %31, i32* %4, align 4
  br label %42

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @CAUSEF_IP1, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @MIPS_CPU_IRQ_BASE, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %37
  br label %42

42:                                               ; preds = %41, %29
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %9
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @tx4939_irq(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rbtx4939_ioc_irqroute(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
