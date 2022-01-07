; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input-polldev.c_input_register_polled_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input-polldev.c_input_register_polled_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32, i32 }

@input_polled_device_work = common dso_local global i32 0, align 4
@input_open_polled_device = common dso_local global i32 0, align 4
@input_close_polled_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_register_polled_device(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.input_dev*, align 8
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %4 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %5 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %4, i32 0, i32 2
  %6 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  store %struct.input_dev* %6, %struct.input_dev** %3, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %9 = call i32 @input_set_drvdata(%struct.input_dev* %7, %struct.input_polled_dev* %8)
  %10 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %11 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %10, i32 0, i32 1
  %12 = load i32, i32* @input_polled_device_work, align 4
  %13 = call i32 @INIT_DELAYED_WORK(i32* %11, i32 %12)
  %14 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %15 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %20 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %19, i32 0, i32 0
  store i32 500, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i32, i32* @input_open_polled_device, align 4
  %23 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @input_close_polled_device, align 4
  %26 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %29 = call i32 @input_register_device(%struct.input_dev* %28)
  ret i32 %29
}

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.input_polled_dev*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
