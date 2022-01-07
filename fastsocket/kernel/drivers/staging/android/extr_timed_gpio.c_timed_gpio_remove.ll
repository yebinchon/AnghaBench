; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_timed_gpio.c_timed_gpio_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_timed_gpio.c_timed_gpio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.timed_gpio_platform_data* }
%struct.timed_gpio_platform_data = type { i32 }
%struct.timed_gpio_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @timed_gpio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timed_gpio_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.timed_gpio_platform_data*, align 8
  %4 = alloca %struct.timed_gpio_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.timed_gpio_platform_data*, %struct.timed_gpio_platform_data** %8, align 8
  store %struct.timed_gpio_platform_data* %9, %struct.timed_gpio_platform_data** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = call %struct.timed_gpio_data* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.timed_gpio_data* %11, %struct.timed_gpio_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.timed_gpio_platform_data*, %struct.timed_gpio_platform_data** %3, align 8
  %15 = getelementptr inbounds %struct.timed_gpio_platform_data, %struct.timed_gpio_platform_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %19, i64 %21
  %23 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %22, i32 0, i32 0
  %24 = call i32 @timed_output_dev_unregister(i32* %23)
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %4, align 8
  %30 = call i32 @kfree(%struct.timed_gpio_data* %29)
  ret i32 0
}

declare dso_local %struct.timed_gpio_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @timed_output_dev_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.timed_gpio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
