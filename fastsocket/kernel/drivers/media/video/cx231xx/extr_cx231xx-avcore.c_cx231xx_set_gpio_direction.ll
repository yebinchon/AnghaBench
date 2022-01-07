; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_set_gpio_direction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_set_gpio_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_set_gpio_direction(%struct.cx231xx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx231xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %43

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %20 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  store i32 %25, i32* %9, align 4
  br label %33

26:                                               ; preds = %15
  %27 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 1, %30
  %32 = or i32 %29, %31
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %26, %18
  %34 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %37 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %36, i32 0, i32 1
  %38 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %34, i32 %35, i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %41 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %33, %12
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @cx231xx_set_gpio_bit(%struct.cx231xx*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
