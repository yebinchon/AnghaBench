; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_ep93xx_keypad.c_ep93xx_keypad_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_ep93xx_keypad.c_ep93xx_keypad_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_keypad = type { i32, %struct.ep93xx_keypad_platform_data* }
%struct.ep93xx_keypad_platform_data = type { i32, i32, i32 }

@EP93XX_KEYPAD_KDIV = common dso_local global i32 0, align 4
@EP93XX_KEYPAD_DISABLE_3_KEY = common dso_local global i32 0, align 4
@KEY_INIT_DIS3KY = common dso_local global i32 0, align 4
@EP93XX_KEYPAD_DIAG_MODE = common dso_local global i32 0, align 4
@KEY_INIT_DIAG = common dso_local global i32 0, align 4
@EP93XX_KEYPAD_BACK_DRIVE = common dso_local global i32 0, align 4
@KEY_INIT_BACK = common dso_local global i32 0, align 4
@EP93XX_KEYPAD_TEST_MODE = common dso_local global i32 0, align 4
@KEY_INIT_T2 = common dso_local global i32 0, align 4
@KEY_INIT_DBNC_SHIFT = common dso_local global i32 0, align 4
@KEY_INIT_DBNC_MASK = common dso_local global i32 0, align 4
@KEY_INIT_PRSCL_SHIFT = common dso_local global i32 0, align 4
@KEY_INIT_PRSCL_MASK = common dso_local global i32 0, align 4
@KEY_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep93xx_keypad*)* @ep93xx_keypad_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_keypad_config(%struct.ep93xx_keypad* %0) #0 {
  %2 = alloca %struct.ep93xx_keypad*, align 8
  %3 = alloca %struct.ep93xx_keypad_platform_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ep93xx_keypad* %0, %struct.ep93xx_keypad** %2, align 8
  %5 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %2, align 8
  %6 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %5, i32 0, i32 1
  %7 = load %struct.ep93xx_keypad_platform_data*, %struct.ep93xx_keypad_platform_data** %6, align 8
  store %struct.ep93xx_keypad_platform_data* %7, %struct.ep93xx_keypad_platform_data** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %2, align 8
  %9 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.ep93xx_keypad_platform_data*, %struct.ep93xx_keypad_platform_data** %3, align 8
  %12 = getelementptr inbounds %struct.ep93xx_keypad_platform_data, %struct.ep93xx_keypad_platform_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @EP93XX_KEYPAD_KDIV, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @clk_set_rate(i32 %10, i32 %15)
  %17 = load %struct.ep93xx_keypad_platform_data*, %struct.ep93xx_keypad_platform_data** %3, align 8
  %18 = getelementptr inbounds %struct.ep93xx_keypad_platform_data, %struct.ep93xx_keypad_platform_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EP93XX_KEYPAD_DISABLE_3_KEY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @KEY_INIT_DIS3KY, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.ep93xx_keypad_platform_data*, %struct.ep93xx_keypad_platform_data** %3, align 8
  %29 = getelementptr inbounds %struct.ep93xx_keypad_platform_data, %struct.ep93xx_keypad_platform_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @EP93XX_KEYPAD_DIAG_MODE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @KEY_INIT_DIAG, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.ep93xx_keypad_platform_data*, %struct.ep93xx_keypad_platform_data** %3, align 8
  %40 = getelementptr inbounds %struct.ep93xx_keypad_platform_data, %struct.ep93xx_keypad_platform_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EP93XX_KEYPAD_BACK_DRIVE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @KEY_INIT_BACK, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.ep93xx_keypad_platform_data*, %struct.ep93xx_keypad_platform_data** %3, align 8
  %51 = getelementptr inbounds %struct.ep93xx_keypad_platform_data, %struct.ep93xx_keypad_platform_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @EP93XX_KEYPAD_TEST_MODE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @KEY_INIT_T2, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.ep93xx_keypad_platform_data*, %struct.ep93xx_keypad_platform_data** %3, align 8
  %62 = getelementptr inbounds %struct.ep93xx_keypad_platform_data, %struct.ep93xx_keypad_platform_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @KEY_INIT_DBNC_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* @KEY_INIT_DBNC_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* %4, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load %struct.ep93xx_keypad_platform_data*, %struct.ep93xx_keypad_platform_data** %3, align 8
  %71 = getelementptr inbounds %struct.ep93xx_keypad_platform_data, %struct.ep93xx_keypad_platform_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @KEY_INIT_PRSCL_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* @KEY_INIT_PRSCL_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @KEY_INIT, align 4
  %81 = call i32 @keypad_writel(i32 %79, i32 %80)
  ret void
}

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @keypad_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
