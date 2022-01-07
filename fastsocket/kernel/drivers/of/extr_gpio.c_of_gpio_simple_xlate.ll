; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_gpio.c_of_gpio_simple_xlate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_gpio.c_of_gpio_simple_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_gpio_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_gpio_simple_xlate(%struct.of_gpio_chip* %0, %struct.device_node* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.of_gpio_chip*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  store %struct.of_gpio_chip* %0, %struct.of_gpio_chip** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %10, align 8
  %13 = load %struct.of_gpio_chip*, %struct.of_gpio_chip** %6, align 8
  %14 = getelementptr inbounds %struct.of_gpio_chip, %struct.of_gpio_chip* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = call i32 @WARN_ON(i32 1)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %45

21:                                               ; preds = %4
  %22 = load i64*, i64** %10, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.of_gpio_chip*, %struct.of_gpio_chip** %6, align 8
  %25 = getelementptr inbounds %struct.of_gpio_chip, %struct.of_gpio_chip* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %23, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %45

32:                                               ; preds = %21
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i64*, i64** %10, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i64*, i64** %10, align 8
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %29, %17
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
