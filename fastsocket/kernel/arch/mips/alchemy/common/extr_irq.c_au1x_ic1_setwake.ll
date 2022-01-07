; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/alchemy/common/extr_irq.c_au1x_ic1_setwake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/alchemy/common/extr_irq.c_au1x_ic1_setwake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AU1000_INTC1_INT_BASE = common dso_local global i32 0, align 4
@AU1000_GPIO_0 = common dso_local global i32 0, align 4
@AU1000_GPIO_7 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SYS_WAKEMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @au1x_ic1_setwake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1x_ic1_setwake(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @AU1000_INTC1_INT_BASE, align 4
  %11 = sub i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AU1000_GPIO_0, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @AU1000_GPIO_7, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %49

22:                                               ; preds = %15
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @local_irq_save(i64 %23)
  %25 = load i32, i32* @SYS_WAKEMSK, align 4
  %26 = call i64 @au_readl(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 1, %30
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %7, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %7, align 8
  br label %42

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 1, %36
  %38 = xor i32 %37, -1
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %7, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %35, %29
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* @SYS_WAKEMSK, align 4
  %45 = call i32 @au_writel(i64 %43, i32 %44)
  %46 = call i32 (...) @au_sync()
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @local_irq_restore(i64 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @au_readl(i32) #1

declare dso_local i32 @au_writel(i64, i32) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
