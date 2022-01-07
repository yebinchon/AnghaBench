; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_geode_32.c_geode_gpio_isset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_geode_32.c_geode_gpio_isset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GEODE_DEV_GPIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geode_gpio_isset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GEODE_DEV_GPIO, align 4
  %9 = call i32 @geode_get_dev_base(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 65535
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add i32 %18, %19
  %21 = call i32 @inl(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 65535
  %24 = and i32 %21, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 65535
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %50

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %13
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 16
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 128
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %38, %39
  %41 = call i32 @inl(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %50

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %31
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %47, %29, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @geode_get_dev_base(i32) #1

declare dso_local i32 @inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
