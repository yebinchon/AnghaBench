; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input-polldev.c_input_open_polled_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input-polldev.c_input_open_polled_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.input_polled_dev = type { i32, i32, i32 (%struct.input_polled_dev*)* }

@polldev_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @input_open_polled_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_open_polled_device(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.input_polled_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = call %struct.input_polled_dev* @input_get_drvdata(%struct.input_dev* %6)
  store %struct.input_polled_dev* %7, %struct.input_polled_dev** %4, align 8
  %8 = call i32 (...) @input_polldev_start_workqueue()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %15 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %14, i32 0, i32 2
  %16 = load i32 (%struct.input_polled_dev*)*, i32 (%struct.input_polled_dev*)** %15, align 8
  %17 = icmp ne i32 (%struct.input_polled_dev*)* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %20 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %19, i32 0, i32 2
  %21 = load i32 (%struct.input_polled_dev*)*, i32 (%struct.input_polled_dev*)** %20, align 8
  %22 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %23 = call i32 %21(%struct.input_polled_dev* %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load i32, i32* @polldev_wq, align 4
  %26 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %27 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %26, i32 0, i32 1
  %28 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %29 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @msecs_to_jiffies(i32 %30)
  %32 = call i32 @queue_delayed_work(i32 %25, i32* %27, i32 %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %24, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.input_polled_dev* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @input_polldev_start_workqueue(...) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
