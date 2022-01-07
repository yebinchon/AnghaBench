; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm47xx/extr_irq.c_plat_irq_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm47xx/extr_irq.c_plat_irq_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAUSEF_IP = common dso_local global i32 0, align 4
@CAUSEF_IP7 = common dso_local global i32 0, align 4
@CAUSEF_IP2 = common dso_local global i32 0, align 4
@CAUSEF_IP3 = common dso_local global i32 0, align 4
@CAUSEF_IP4 = common dso_local global i32 0, align 4
@CAUSEF_IP5 = common dso_local global i32 0, align 4
@CAUSEF_IP6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plat_irq_dispatch() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @read_c0_cause()
  %3 = call i32 (...) @read_c0_status()
  %4 = and i32 %2, %3
  %5 = load i32, i32* @CAUSEF_IP, align 4
  %6 = and i32 %4, %5
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @clear_c0_status(i32 %7)
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @CAUSEF_IP7, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @do_IRQ(i32 7)
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @CAUSEF_IP2, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @do_IRQ(i32 2)
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @CAUSEF_IP3, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @do_IRQ(i32 3)
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @CAUSEF_IP4, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @do_IRQ(i32 4)
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @CAUSEF_IP5, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @do_IRQ(i32 5)
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @CAUSEF_IP6, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @do_IRQ(i32 6)
  br label %50

50:                                               ; preds = %48, %43
  ret void
}

declare dso_local i32 @read_c0_cause(...) #1

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i32 @clear_c0_status(i32) #1

declare dso_local i32 @do_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
