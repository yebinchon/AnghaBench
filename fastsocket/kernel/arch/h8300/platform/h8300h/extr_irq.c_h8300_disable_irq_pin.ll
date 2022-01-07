; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8300h/extr_irq.c_h8300_disable_irq_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8300h/extr_irq.c_h8300_disable_irq_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IER = common dso_local global i64 0, align 8
@H8300_GPIO_P8 = common dso_local global i32 0, align 4
@H8300_GPIO_P9 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h8300_disable_irq_pin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ult i32 %4, 133
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp ugt i32 %7, 128
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %1
  br label %39

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = sub i32 %11, 133
  %13 = shl i32 1, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  switch i32 %14, label %39 [
    i32 133, label %15
    i32 132, label %15
    i32 131, label %15
    i32 130, label %15
    i32 129, label %27
    i32 128, label %27
  ]

15:                                               ; preds = %10, %10, %10, %10
  %16 = load i32, i32* %3, align 4
  %17 = xor i32 %16, -1
  %18 = load i64, i64* @IER, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load volatile i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, %17
  %23 = trunc i32 %22 to i8
  store volatile i8 %23, i8* %19, align 1
  %24 = load i32, i32* @H8300_GPIO_P8, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @H8300_GPIO_FREE(i32 %24, i32 %25)
  br label %39

27:                                               ; preds = %10, %10
  %28 = load i32, i32* %3, align 4
  %29 = xor i32 %28, -1
  %30 = load i64, i64* @IER, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load volatile i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, %29
  %35 = trunc i32 %34 to i8
  store volatile i8 %35, i8* %31, align 1
  %36 = load i32, i32* @H8300_GPIO_P9, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @H8300_GPIO_FREE(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %9, %10, %27, %15
  ret void
}

declare dso_local i32 @H8300_GPIO_FREE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
