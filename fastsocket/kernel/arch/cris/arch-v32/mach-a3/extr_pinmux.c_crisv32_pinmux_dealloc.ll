; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-a3/extr_pinmux.c_crisv32_pinmux_dealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-a3/extr_pinmux.c_crisv32_pinmux_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pinmux_lock = common dso_local global i32 0, align 4
@pinmux_none = common dso_local global i32 0, align 4
@pins = common dso_local global i32* null, align 8
@PORT_PINS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crisv32_pinmux_dealloc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 (...) @crisv32_pinmux_init()
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PORTS, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %43

17:                                               ; preds = %3
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @spin_lock_irqsave(i32* @pinmux_lock, i64 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %35, %17
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i32, i32* @pinmux_none, align 4
  %27 = load i32*, i32** @pins, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PORT_PINS, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %27, i64 %33
  store i32 %26, i32* %34, align 4
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %21

38:                                               ; preds = %21
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @crisv32_pinmux_set(i32 %39)
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* @pinmux_lock, i64 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %14
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @crisv32_pinmux_init(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @crisv32_pinmux_set(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
