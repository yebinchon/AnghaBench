; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_gpio.c_gpio_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_gpio.c_gpio_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP_MAX_GPIO_LINES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gpio_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_valid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %60

7:                                                ; preds = %1
  %8 = call i64 (...) @cpu_class_is_omap1()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @OMAP_GPIO_IS_MPUIO(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @OMAP_MAX_GPIO_LINES, align 4
  %17 = add nsw i32 %16, 16
  %18 = icmp sge i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %60

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %60

21:                                               ; preds = %10, %7
  %22 = call i64 (...) @cpu_is_omap15xx()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 16
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %60

28:                                               ; preds = %24, %21
  %29 = call i64 (...) @cpu_is_omap16xx()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 64
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %60

35:                                               ; preds = %31, %28
  %36 = call i64 (...) @cpu_is_omap7xx()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 192
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %60

42:                                               ; preds = %38, %35
  %43 = call i64 (...) @cpu_is_omap24xx()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = icmp slt i32 %46, 128
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %60

49:                                               ; preds = %45, %42
  %50 = call i64 (...) @cpu_is_omap34xx()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = call i64 (...) @cpu_is_omap44xx()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %56, 192
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %60

59:                                               ; preds = %55, %52
  store i32 -1, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %58, %48, %41, %34, %27, %20, %19, %6
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @cpu_class_is_omap1(...) #1

declare dso_local i64 @OMAP_GPIO_IS_MPUIO(i32) #1

declare dso_local i64 @cpu_is_omap15xx(...) #1

declare dso_local i64 @cpu_is_omap16xx(...) #1

declare dso_local i64 @cpu_is_omap7xx(...) #1

declare dso_local i64 @cpu_is_omap24xx(...) #1

declare dso_local i64 @cpu_is_omap34xx(...) #1

declare dso_local i64 @cpu_is_omap44xx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
