; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/loongson/common/extr_irq.c_bonito_irqdispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/loongson/common/extr_irq.c_bonito_irqdispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BONITO_INTISR = common dso_local global i32 0, align 4
@BONITO_INTEN = common dso_local global i32 0, align 4
@BONITO_IRQ_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bonito_irqdispatch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @BONITO_INTISR, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = and i32 %4, 1024
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %12, %7
  %9 = load i32, i32* %1, align 4
  %10 = and i32 %9, 1024
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = call i32 @udelay(i32 1)
  %14 = load i32, i32* @BONITO_INTISR, align 4
  store i32 %14, i32* %1, align 4
  br label %8

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %0
  %17 = load i32, i32* @BONITO_INTISR, align 4
  %18 = load i32, i32* @BONITO_INTEN, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @__ffs(i32 %23)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %1, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %1, align 4
  %30 = load i64, i64* @BONITO_IRQ_BASE, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @do_IRQ(i64 %33)
  br label %35

35:                                               ; preds = %22, %16
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @do_IRQ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
