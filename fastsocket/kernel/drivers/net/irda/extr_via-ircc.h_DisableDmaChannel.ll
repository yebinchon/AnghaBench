; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_via-ircc.h_DisableDmaChannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_via-ircc.h_DisableDmaChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MASK1 = common dso_local global i32 0, align 4
@MASK2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @DisableDmaChannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DisableDmaChannel(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %25 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %10
    i32 3, label %13
    i32 5, label %16
    i32 6, label %19
    i32 7, label %22
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @MASK1, align 4
  %6 = call i32 @outb(i32 4, i32 %5)
  br label %26

7:                                                ; preds = %1
  %8 = load i32, i32* @MASK1, align 4
  %9 = call i32 @outb(i32 5, i32 %8)
  br label %26

10:                                               ; preds = %1
  %11 = load i32, i32* @MASK1, align 4
  %12 = call i32 @outb(i32 6, i32 %11)
  br label %26

13:                                               ; preds = %1
  %14 = load i32, i32* @MASK1, align 4
  %15 = call i32 @outb(i32 7, i32 %14)
  br label %26

16:                                               ; preds = %1
  %17 = load i32, i32* @MASK2, align 4
  %18 = call i32 @outb(i32 5, i32 %17)
  br label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @MASK2, align 4
  %21 = call i32 @outb(i32 6, i32 %20)
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @MASK2, align 4
  %24 = call i32 @outb(i32 7, i32 %23)
  br label %26

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %22, %19, %16, %13, %10, %7, %4
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
