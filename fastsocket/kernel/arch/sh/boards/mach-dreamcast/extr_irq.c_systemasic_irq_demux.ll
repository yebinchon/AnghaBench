; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-dreamcast/extr_irq.c_systemasic_irq_demux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-dreamcast/extr_irq.c_systemasic_irq_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EMR_BASE = common dso_local global i32 0, align 4
@ESR_BASE = common dso_local global i32 0, align 4
@HW_EVENT_IRQ_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @systemasic_irq_demux(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %14 [
    i32 13, label %11
    i32 11, label %12
    i32 9, label %13
  ]

11:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %16

12:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %16

13:                                               ; preds = %1
  store i32 2, i32* %7, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  store i32 %15, i32* %2, align 4
  br label %58

16:                                               ; preds = %13, %12, %11
  %17 = load i32, i32* @EMR_BASE, align 4
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 4
  %20 = add nsw i32 %17, %19
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 2
  %23 = add nsw i32 %20, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @ESR_BASE, align 4
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %25, 2
  %27 = add nsw i32 %24, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @inl(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @inl(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %51, %16
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 32
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32, i32* @HW_EVENT_IRQ_BASE, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 5
  %48 = add nsw i32 %45, %47
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  store i32 %49, i32* %2, align 4
  br label %58

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = shl i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %34

56:                                               ; preds = %34
  %57 = load i32, i32* %3, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %42, %14
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
