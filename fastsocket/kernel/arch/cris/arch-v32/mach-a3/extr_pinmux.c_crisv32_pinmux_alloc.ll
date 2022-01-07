; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-a3/extr_pinmux.c_crisv32_pinmux_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-a3/extr_pinmux.c_crisv32_pinmux_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pinmux_lock = common dso_local global i32 0, align 4
@pins = common dso_local global i64* null, align 8
@PORT_PINS = common dso_local global i32 0, align 4
@pinmux_none = common dso_local global i64 0, align 8
@pinmux_gpio = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crisv32_pinmux_alloc(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = call i32 (...) @crisv32_pinmux_init()
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PORTS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %98

19:                                               ; preds = %4
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @spin_lock_irqsave(i32* @pinmux_lock, i64 %20)
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %70, %19
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %73

27:                                               ; preds = %23
  %28 = load i64*, i64** @pins, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PORT_PINS, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %28, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @pinmux_none, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %27
  %40 = load i64*, i64** @pins, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PORT_PINS, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %40, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @pinmux_gpio, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %39
  %52 = load i64*, i64** @pins, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @PORT_PINS, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %52, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = icmp ne i64 %60, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* @pinmux_lock, i64 %65)
  %67 = load i32, i32* @EPERM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %98

69:                                               ; preds = %51, %39, %27
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %23

73:                                               ; preds = %23
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %90, %73
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64*, i64** @pins, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @PORT_PINS, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %82, i64 %88
  store i64 %81, i64* %89, align 8
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %75

93:                                               ; preds = %75
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @crisv32_pinmux_set(i32 %94)
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* @pinmux_lock, i64 %96)
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %93, %64, %16
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @crisv32_pinmux_init(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @crisv32_pinmux_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
