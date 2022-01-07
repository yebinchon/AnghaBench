; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_gpio_write_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_gpio_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i64)* @gpio_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_write_reg(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %8, align 8
  %14 = trunc i64 %13 to i32
  %15 = shl i32 1, %14
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %9, align 8
  %20 = add i64 %19, 1
  %21 = load i64, i64* %8, align 8
  %22 = mul i64 %20, %21
  %23 = sub i64 %18, %22
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = shl i64 %24, %25
  %27 = xor i64 %26, -1
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %12, align 8
  %30 = shl i64 %28, %29
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %7, align 8
  switch i64 %31, label %59 [
    i64 8, label %32
    i64 16, label %41
    i64 32, label %50
  ]

32:                                               ; preds = %5
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @ctrl_inb(i64 %33)
  %35 = load i64, i64* %11, align 8
  %36 = and i64 %34, %35
  %37 = load i64, i64* %10, align 8
  %38 = or i64 %36, %37
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @ctrl_outb(i64 %38, i64 %39)
  br label %59

41:                                               ; preds = %5
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @ctrl_inw(i64 %42)
  %44 = load i64, i64* %11, align 8
  %45 = and i64 %43, %44
  %46 = load i64, i64* %10, align 8
  %47 = or i64 %45, %46
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @ctrl_outw(i64 %47, i64 %48)
  br label %59

50:                                               ; preds = %5
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @ctrl_inl(i64 %51)
  %53 = load i64, i64* %11, align 8
  %54 = and i64 %52, %53
  %55 = load i64, i64* %10, align 8
  %56 = or i64 %54, %55
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @ctrl_outl(i64 %56, i64 %57)
  br label %59

59:                                               ; preds = %5, %50, %41, %32
  ret void
}

declare dso_local i32 @ctrl_outb(i64, i64) #1

declare dso_local i64 @ctrl_inb(i64) #1

declare dso_local i32 @ctrl_outw(i64, i64) #1

declare dso_local i64 @ctrl_inw(i64) #1

declare dso_local i32 @ctrl_outl(i64, i64) #1

declare dso_local i64 @ctrl_inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
