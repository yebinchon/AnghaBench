; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_get_keycode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_get_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { {}* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_get_keycode(%struct.input_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %22

13:                                               ; preds = %3
  %14 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.input_dev*, i32, i32*)**
  %17 = load i32 (%struct.input_dev*, i32, i32*)*, i32 (%struct.input_dev*, i32, i32*)** %16, align 8
  %18 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 %17(%struct.input_dev* %18, i32 %19, i32* %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %13, %10
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
