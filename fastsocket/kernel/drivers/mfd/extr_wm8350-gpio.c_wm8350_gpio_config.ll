; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-gpio.c_wm8350_gpio_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-gpio.c_wm8350_gpio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }

@WM8350_GPIO_PULL_NONE = common dso_local global i32 0, align 4
@WM8350_GPIO_PULL_UP = common dso_local global i32 0, align 4
@WM8350_GPIO_PULL_DOWN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8350_gpio_config(%struct.wm8350* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm8350*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* @WM8350_GPIO_PULL_NONE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %8
  %22 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @gpio_set_pull_up(%struct.wm8350* %22, i32 %23, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %103

27:                                               ; preds = %21
  %28 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @gpio_set_pull_down(%struct.wm8350* %28, i32 %29, i32 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %103

33:                                               ; preds = %27
  br label %70

34:                                               ; preds = %8
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @WM8350_GPIO_PULL_UP, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @gpio_set_pull_down(%struct.wm8350* %39, i32 %40, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %103

44:                                               ; preds = %38
  %45 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @gpio_set_pull_up(%struct.wm8350* %45, i32 %46, i32 1)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %103

50:                                               ; preds = %44
  br label %69

51:                                               ; preds = %34
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* @WM8350_GPIO_PULL_DOWN, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @gpio_set_pull_up(%struct.wm8350* %56, i32 %57, i32 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %103

61:                                               ; preds = %55
  %62 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @gpio_set_pull_down(%struct.wm8350* %62, i32 %63, i32 1)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %103

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %51
  br label %69

69:                                               ; preds = %68, %50
  br label %70

70:                                               ; preds = %69, %33
  %71 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %16, align 4
  %74 = call i64 @gpio_set_invert(%struct.wm8350* %71, i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %103

77:                                               ; preds = %70
  %78 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i64 @gpio_set_polarity(%struct.wm8350* %78, i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %103

84:                                               ; preds = %77
  %85 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %17, align 4
  %88 = call i64 @gpio_set_debounce(%struct.wm8350* %85, i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %103

91:                                               ; preds = %84
  %92 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i64 @gpio_set_dir(%struct.wm8350* %92, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %103

98:                                               ; preds = %91
  %99 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @gpio_set_func(%struct.wm8350* %99, i32 %100, i32 %101)
  store i32 %102, i32* %9, align 4
  br label %106

103:                                              ; preds = %97, %90, %83, %76, %66, %60, %49, %43, %32, %26
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %103, %98
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i64 @gpio_set_pull_up(%struct.wm8350*, i32, i32) #1

declare dso_local i64 @gpio_set_pull_down(%struct.wm8350*, i32, i32) #1

declare dso_local i64 @gpio_set_invert(%struct.wm8350*, i32, i32) #1

declare dso_local i64 @gpio_set_polarity(%struct.wm8350*, i32, i32) #1

declare dso_local i64 @gpio_set_debounce(%struct.wm8350*, i32, i32) #1

declare dso_local i64 @gpio_set_dir(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @gpio_set_func(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
