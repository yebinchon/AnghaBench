; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_irq.c_do_multiple_IRQ.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_irq.c_do_multiple_IRQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@R_VECT_MASK_RD = common dso_local global i32* null, align 8
@timer0 = common dso_local global i32 0, align 4
@dma0 = common dso_local global i32 0, align 4
@active = common dso_local global i32 0, align 4
@dma1 = common dso_local global i32 0, align 4
@R_VECT_MASK_CLR = common dso_local global i32* null, align 8
@R_VECT_MASK_SET = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_multiple_IRQ(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** @R_VECT_MASK_RD, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32*, i32** @R_VECT_MASK_RD, align 8
  %10 = load i32, i32* @timer0, align 4
  %11 = call i32 @IO_MASK(i32* %9, i32 %10)
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** @R_VECT_MASK_RD, align 8
  %17 = load i32, i32* @dma0, align 4
  %18 = load i32, i32* @active, align 4
  %19 = call i32 @IO_STATE(i32* %16, i32 %17, i32 %18)
  %20 = load i32*, i32** @R_VECT_MASK_RD, align 8
  %21 = load i32, i32* @dma1, align 4
  %22 = load i32, i32* @active, align 4
  %23 = call i32 @IO_STATE(i32* %20, i32 %21, i32 %22)
  %24 = or i32 %19, %23
  %25 = and i32 %15, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load i32*, i32** @R_VECT_MASK_RD, align 8
  %29 = load i32, i32* @dma0, align 4
  %30 = call i32 @IO_MASK(i32* %28, i32 %29)
  %31 = load i32*, i32** @R_VECT_MASK_RD, align 8
  %32 = load i32, i32* @dma1, align 4
  %33 = call i32 @IO_MASK(i32* %31, i32 %32)
  %34 = or i32 %30, %33
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %27, %1
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %36, %37
  %39 = load i32*, i32** @R_VECT_MASK_CLR, align 8
  store i32 %38, i32* %39, align 4
  %40 = call i32 (...) @irq_enter()
  store i32 2, i32* %3, align 4
  br label %41

41:                                               ; preds = %55, %35
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %3, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %53 = call i32 @do_IRQ(i32 %51, %struct.pt_regs* %52)
  br label %54

54:                                               ; preds = %50, %44
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %41

58:                                               ; preds = %41
  %59 = call i32 (...) @irq_exit()
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %60, %61
  %63 = load i32*, i32** @R_VECT_MASK_SET, align 8
  store i32 %62, i32* %63, align 4
  ret void
}

declare dso_local i32 @IO_MASK(i32*, i32) #1

declare dso_local i32 @IO_STATE(i32*, i32, i32) #1

declare dso_local i32 @irq_enter(...) #1

declare dso_local i32 @do_IRQ(i32, %struct.pt_regs*) #1

declare dso_local i32 @irq_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
