; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16m1.c_das16m1_irq_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16m1.c_das16m1_irq_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @das16m1_irq_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16m1_irq_bits(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %14 [
    i32 10, label %6
    i32 11, label %7
    i32 12, label %8
    i32 15, label %9
    i32 2, label %10
    i32 3, label %11
    i32 5, label %12
    i32 7, label %13
  ]

6:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

7:                                                ; preds = %1
  store i32 1, i32* %4, align 4
  br label %15

8:                                                ; preds = %1
  store i32 2, i32* %4, align 4
  br label %15

9:                                                ; preds = %1
  store i32 3, i32* %4, align 4
  br label %15

10:                                               ; preds = %1
  store i32 4, i32* %4, align 4
  br label %15

11:                                               ; preds = %1
  store i32 5, i32* %4, align 4
  br label %15

12:                                               ; preds = %1
  store i32 6, i32* %4, align 4
  br label %15

13:                                               ; preds = %1
  store i32 7, i32* %4, align 4
  br label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %18

15:                                               ; preds = %13, %12, %11, %10, %9, %8, %7, %6
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 %16, 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %14
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
