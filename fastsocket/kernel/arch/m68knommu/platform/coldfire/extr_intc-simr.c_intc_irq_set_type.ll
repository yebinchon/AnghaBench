; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_intc-simr.c_intc_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_intc-simr.c_intc_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCFINT_VECBASE = common dso_local global i32 0, align 4
@MCFINTC0_ICR0 = common dso_local global i32 0, align 4
@MCFINTC1_ICR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @intc_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intc_irq_set_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MCFINT_VECBASE, align 4
  %7 = icmp uge i32 %5, %6
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MCFINT_VECBASE, align 4
  %11 = add i32 %10, 64
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load i32, i32* @MCFINTC0_ICR0, align 4
  %15 = load i32, i32* %3, align 4
  %16 = add i32 %14, %15
  %17 = load i32, i32* @MCFINT_VECBASE, align 4
  %18 = sub i32 %16, %17
  %19 = call i32 @__raw_writeb(i32 5, i32 %18)
  br label %36

20:                                               ; preds = %8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @MCFINT_VECBASE, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, i32* @MCFINTC1_ICR0, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* @MCFINTC1_ICR0, align 4
  %29 = load i32, i32* %3, align 4
  %30 = add i32 %28, %29
  %31 = load i32, i32* @MCFINT_VECBASE, align 4
  %32 = sub i32 %30, %31
  %33 = sub i32 %32, 64
  %34 = call i32 @__raw_writeb(i32 5, i32 %33)
  br label %35

35:                                               ; preds = %27, %24, %20
  br label %36

36:                                               ; preds = %35, %13
  br label %37

37:                                               ; preds = %36, %2
  ret i32 0
}

declare dso_local i32 @__raw_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
