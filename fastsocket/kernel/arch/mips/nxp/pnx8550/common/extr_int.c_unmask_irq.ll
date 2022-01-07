; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/nxp/pnx8550/common/extr_int.c_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/nxp/pnx8550/common/extr_int.c_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PNX8550_INT_CP0_MIN = common dso_local global i32 0, align 4
@PNX8550_INT_CP0_MAX = common dso_local global i32 0, align 4
@PNX8550_INT_GIC_MIN = common dso_local global i32 0, align 4
@PNX8550_INT_GIC_MAX = common dso_local global i32 0, align 4
@PNX8550_INT_TIMER_MIN = common dso_local global i32 0, align 4
@PNX8550_INT_TIMER_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"mask_irq: irq %d doesn't exist!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmask_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @PNX8550_INT_CP0_MIN, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ule i32 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @PNX8550_INT_CP0_MAX, align 4
  %9 = icmp ule i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 1, %11
  %13 = call i32 @modify_cp0_intmask(i32 0, i32 %12)
  br label %42

14:                                               ; preds = %6, %1
  %15 = load i32, i32* @PNX8550_INT_GIC_MIN, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ule i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @PNX8550_INT_GIC_MAX, align 4
  %21 = icmp ule i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @PNX8550_INT_GIC_MIN, align 4
  %25 = sub i32 %23, %24
  %26 = call i32 @unmask_gic_int(i32 %25)
  br label %41

27:                                               ; preds = %18, %14
  %28 = load i32, i32* @PNX8550_INT_TIMER_MIN, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp ule i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @PNX8550_INT_TIMER_MAX, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @modify_cp0_intmask(i32 0, i32 128)
  br label %40

37:                                               ; preds = %31, %27
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %35
  br label %41

41:                                               ; preds = %40, %22
  br label %42

42:                                               ; preds = %41, %10
  ret void
}

declare dso_local i32 @modify_cp0_intmask(i32, i32) #1

declare dso_local i32 @unmask_gic_int(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
