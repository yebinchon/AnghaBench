; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_tc6393xb.c_tc6393xb_register_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_tc6393xb.c_tc6393xb_register_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc6393xb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"tc6393xb\00", align 1
@tc6393xb_gpio_set = common dso_local global i32 0, align 4
@tc6393xb_gpio_get = common dso_local global i32 0, align 4
@tc6393xb_gpio_direction_input = common dso_local global i32 0, align 4
@tc6393xb_gpio_direction_output = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc6393xb*, i32)* @tc6393xb_register_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc6393xb_register_gpio(%struct.tc6393xb* %0, i32 %1) #0 {
  %3 = alloca %struct.tc6393xb*, align 8
  %4 = alloca i32, align 4
  store %struct.tc6393xb* %0, %struct.tc6393xb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %6 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %10 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 8
  %12 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %13 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32 16, i32* %14, align 4
  %15 = load i32, i32* @tc6393xb_gpio_set, align 4
  %16 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %17 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 6
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @tc6393xb_gpio_get, align 4
  %20 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %21 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 5
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @tc6393xb_gpio_direction_input, align 4
  %24 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %25 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @tc6393xb_gpio_direction_output, align 4
  %28 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %29 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 8
  %31 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %32 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %31, i32 0, i32 0
  %33 = call i32 @gpiochip_add(%struct.TYPE_2__* %32)
  ret i32 %33
}

declare dso_local i32 @gpiochip_add(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
