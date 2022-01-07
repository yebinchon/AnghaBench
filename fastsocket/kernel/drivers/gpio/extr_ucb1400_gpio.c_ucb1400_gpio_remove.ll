; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_ucb1400_gpio.c_ucb1400_gpio_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_ucb1400_gpio.c_ucb1400_gpio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, i32)* }
%struct.platform_device = type { i32 }
%struct.ucb1400_gpio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ucbdata = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ucb1400_gpio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1400_gpio_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucb1400_gpio*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.ucb1400_gpio* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.ucb1400_gpio* %7, %struct.ucb1400_gpio** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ucbdata, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ucbdata, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (i32*, i32)*, i32 (i32*, i32)** %12, align 8
  %14 = icmp ne i32 (i32*, i32)* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ucbdata, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (i32*, i32)*, i32 (i32*, i32)** %17, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.ucb1400_gpio*, %struct.ucb1400_gpio** %5, align 8
  %22 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 %18(i32* %20, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30, %10, %1
  %32 = load %struct.ucb1400_gpio*, %struct.ucb1400_gpio** %5, align 8
  %33 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %32, i32 0, i32 0
  %34 = call i32 @gpiochip_remove(%struct.TYPE_4__* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.ucb1400_gpio* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
