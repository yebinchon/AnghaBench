; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_irq.c_unblock_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_irq.c_unblock_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@irq_lock = common dso_local global i32 0, align 4
@FIRST_IRQ = common dso_local global i32 0, align 4
@intr_vect = common dso_local global i32 0, align 4
@irq_regs = common dso_local global i32* null, align 8
@rw_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unblock_irq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @irq_lock, i64 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @FIRST_IRQ, align 4
  %11 = sub nsw i32 %9, %10
  %12 = icmp slt i32 %11, 32
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32, i32* @intr_vect, align 4
  %15 = load i32*, i32** @irq_regs, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @rw_mask, align 4
  %21 = call i32 @REG_RD_INT_VECT(i32 %14, i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %5, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load i32, i32* @intr_vect, align 4
  %24 = load i32*, i32** @irq_regs, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @rw_mask, align 4
  %30 = call i32 @REG_RD_INT_VECT(i32 %23, i32 %28, i32 %29, i32 1)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %22, %13
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @FIRST_IRQ, align 4
  %34 = sub nsw i32 %32, %33
  %35 = icmp slt i32 %34, 32
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @FIRST_IRQ, align 4
  %39 = sub nsw i32 %37, %38
  %40 = shl i32 1, %39
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %51

43:                                               ; preds = %31
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @FIRST_IRQ, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sub nsw i32 %46, 32
  %48 = shl i32 1, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %43, %36
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @FIRST_IRQ, align 4
  %54 = sub nsw i32 %52, %53
  %55 = icmp slt i32 %54, 32
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i32, i32* @intr_vect, align 4
  %58 = load i32*, i32** @irq_regs, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @rw_mask, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @REG_WR_INT_VECT(i32 %57, i32 %62, i32 %63, i32 0, i32 %64)
  br label %76

66:                                               ; preds = %51
  %67 = load i32, i32* @intr_vect, align 4
  %68 = load i32*, i32** @irq_regs, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @rw_mask, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @REG_WR_INT_VECT(i32 %67, i32 %72, i32 %73, i32 1, i32 %74)
  br label %76

76:                                               ; preds = %66, %56
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* @irq_lock, i64 %77)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @REG_RD_INT_VECT(i32, i32, i32, i32) #1

declare dso_local i32 @REG_WR_INT_VECT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
