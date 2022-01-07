; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/rb532/extr_irq.c_rb532_set_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/rb532/extr_irq.c_rb532_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_MAPPED_IRQ_BASE = common dso_local global i32 0, align 4
@GPIO_MAPPED_IRQ_GROUP = common dso_local global i32 0, align 4
@GROUP4_IRQ_BASE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @rb532_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb532_set_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @GPIO_MAPPED_IRQ_BASE, align 4
  %10 = sub i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @irq_to_group(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @GPIO_MAPPED_IRQ_GROUP, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GROUP4_IRQ_BASE, align 4
  %19 = add nsw i32 %18, 13
  %20 = icmp ugt i32 %17, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %16, %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 129
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi i32 [ 0, %24 ], [ %27, %25 ]
  store i32 %29, i32* %3, align 4
  br label %42

30:                                               ; preds = %16
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %38 [
    i32 129, label %32
    i32 128, label %35
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @rb532_gpio_set_ilevel(i32 1, i32 %33)
  br label %41

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @rb532_gpio_set_ilevel(i32 0, i32 %36)
  br label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %35, %32
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %38, %28
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @irq_to_group(i32) #1

declare dso_local i32 @rb532_gpio_set_ilevel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
