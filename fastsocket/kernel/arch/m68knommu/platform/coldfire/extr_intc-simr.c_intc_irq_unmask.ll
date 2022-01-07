; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_intc-simr.c_intc_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_intc-simr.c_intc_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCFINT_VECBASE = common dso_local global i32 0, align 4
@MCFINTC0_CIMR = common dso_local global i64 0, align 8
@MCFINTC1_CIMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @intc_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intc_irq_unmask(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @MCFINT_VECBASE, align 4
  %5 = icmp uge i32 %3, %4
  br i1 %5, label %6, label %34

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @MCFINT_VECBASE, align 4
  %9 = add i32 %8, 64
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @MCFINT_VECBASE, align 4
  %14 = sub i32 %12, %13
  %15 = load i64, i64* @MCFINTC0_CIMR, align 8
  %16 = call i32 @__raw_writeb(i32 %14, i64 %15)
  br label %33

17:                                               ; preds = %6
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @MCFINT_VECBASE, align 4
  %20 = add i32 %19, 128
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load i64, i64* @MCFINTC1_CIMR, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @MCFINT_VECBASE, align 4
  %28 = sub i32 %26, %27
  %29 = sub i32 %28, 64
  %30 = load i64, i64* @MCFINTC1_CIMR, align 8
  %31 = call i32 @__raw_writeb(i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %25, %22, %17
  br label %33

33:                                               ; preds = %32, %11
  br label %34

34:                                               ; preds = %33, %1
  ret void
}

declare dso_local i32 @__raw_writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
