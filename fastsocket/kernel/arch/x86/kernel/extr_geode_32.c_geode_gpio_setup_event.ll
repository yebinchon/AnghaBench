; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_geode_32.c_geode_gpio_setup_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_geode_32.c_geode_gpio_setup_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GEODE_DEV_GPIO = common dso_local global i32 0, align 4
@GPIO_MAP_W = common dso_local global i32 0, align 4
@GPIO_MAP_Z = common dso_local global i32 0, align 4
@GPIO_MAP_Y = common dso_local global i32 0, align 4
@GPIO_MAP_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @geode_gpio_setup_event(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @GEODE_DEV_GPIO, align 4
  %12 = call i32 @geode_get_dev_base(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp uge i32 %13, 24
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @GPIO_MAP_W, align 4
  store i32 %16, i32* %8, align 4
  br label %31

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = icmp uge i32 %18, 16
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @GPIO_MAP_Z, align 4
  store i32 %21, i32* %8, align 4
  br label %30

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = icmp uge i32 %23, 8
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @GPIO_MAP_Y, align 4
  store i32 %26, i32* %8, align 4
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @GPIO_MAP_X, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %29, %20
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i32, i32* %4, align 4
  %33 = urem i32 %32, 8
  %34 = mul i32 %33, 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @inl(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 15, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 7
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %31
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 3
  %55 = shl i32 1, %54
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %52, %31
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %60, %61
  %63 = call i32 @outl(i32 %59, i32 %62)
  ret void
}

declare dso_local i32 @geode_get_dev_base(i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
