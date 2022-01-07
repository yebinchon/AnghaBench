; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_usb-tusb6010.c_next_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_usb-tusb6010.c_next_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @next_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_clk(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = mul i32 %11, 1000
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = udiv i32 %19, 1000
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %22, %23
  %25 = sub i32 %24, 1
  %26 = load i32, i32* %7, align 4
  %27 = udiv i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %28, %29
  %31 = sub i32 %30, 1
  %32 = load i32, i32* %7, align 4
  %33 = udiv i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = load i32, i32* %9, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %21
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = mul i32 %41, %42
  %44 = udiv i32 %43, 1000
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
