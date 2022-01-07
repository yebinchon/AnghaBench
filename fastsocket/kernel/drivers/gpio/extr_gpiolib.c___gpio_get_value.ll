; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpiolib.c___gpio_get_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpiolib.c___gpio_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 (%struct.gpio_chip*, i32)*, i32, i64 }

@extra_checks = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gpio_get_value(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio_chip*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.gpio_chip* @gpio_to_chip(i32 %4)
  store %struct.gpio_chip* %5, %struct.gpio_chip** %3, align 8
  %6 = load i64, i64* @extra_checks, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i1 [ false, %1 ], [ %12, %8 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %18 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %17, i32 0, i32 0
  %19 = load i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.gpio_chip*, i32)* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %23 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 0
  %24 = load i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)** %23, align 8
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %28 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sub i32 %26, %29
  %31 = call i32 %24(%struct.gpio_chip* %25, i32 %30)
  br label %33

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32, %21
  %34 = phi i32 [ %31, %21 ], [ 0, %32 ]
  ret i32 %34
}

declare dso_local %struct.gpio_chip* @gpio_to_chip(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
