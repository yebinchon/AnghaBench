; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_gpio_read_raw_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_gpio_read_raw_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @gpio_read_raw_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gpio_read_raw_reg(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  switch i64 %6, label %16 [
    i64 8, label %7
    i64 16, label %10
    i64 32, label %13
  ]

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @ctrl_inb(i64 %8)
  store i64 %9, i64* %3, align 8
  br label %18

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @ctrl_inw(i64 %11)
  store i64 %12, i64* %3, align 8
  br label %18

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @ctrl_inl(i64 %14)
  store i64 %15, i64* %3, align 8
  br label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @BUG()
  store i64 0, i64* %3, align 8
  br label %18

18:                                               ; preds = %16, %13, %10, %7
  %19 = load i64, i64* %3, align 8
  ret i64 %19
}

declare dso_local i64 @ctrl_inb(i64) #1

declare dso_local i64 @ctrl_inw(i64) #1

declare dso_local i64 @ctrl_inl(i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
