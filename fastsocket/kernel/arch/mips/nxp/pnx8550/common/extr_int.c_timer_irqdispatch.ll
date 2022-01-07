; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/nxp/pnx8550/common/extr_int.c_timer_irqdispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/nxp/pnx8550/common/extr_int.c_timer_irqdispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"timer_irqdispatch: irq 0, spurious interrupt?\0A\00", align 1
@PNX8550_INT_TIMER1 = common dso_local global i32 0, align 4
@PNX8550_INT_TIMER2 = common dso_local global i32 0, align 4
@PNX8550_INT_TIMER3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @timer_irqdispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_irqdispatch(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @read_c0_config7()
  %4 = and i32 448, %3
  %5 = ashr i32 %4, 6
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %34

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @PNX8550_INT_TIMER1, align 4
  %19 = call i32 @do_IRQ(i32 %18)
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @PNX8550_INT_TIMER2, align 4
  %26 = call i32 @do_IRQ(i32 %25)
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* %2, align 4
  %29 = and i32 %28, 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @PNX8550_INT_TIMER3, align 4
  %33 = call i32 @do_IRQ(i32 %32)
  br label %34

34:                                               ; preds = %11, %31, %27
  ret void
}

declare dso_local i32 @read_c0_config7(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @do_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
