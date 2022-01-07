; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-timer.c_timer_trig_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-timer.c_timer_trig_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i64, %struct.timer_trig_data*, i32, i32 (%struct.led_classdev*, i32*, i32*)* }
%struct.timer_trig_data = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i64 0, align 8
@led_timer_function = common dso_local global i32 0, align 4
@dev_attr_delay_on = common dso_local global i32 0, align 4
@dev_attr_delay_off = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*)* @timer_trig_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_trig_activate(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  %3 = alloca %struct.timer_trig_data*, align 8
  %4 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.timer_trig_data* @kzalloc(i32 32, i32 %5)
  store %struct.timer_trig_data* %6, %struct.timer_trig_data** %3, align 8
  %7 = load %struct.timer_trig_data*, %struct.timer_trig_data** %3, align 8
  %8 = icmp ne %struct.timer_trig_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %83

10:                                               ; preds = %1
  %11 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %12 = call i64 @led_get_brightness(%struct.led_classdev* %11)
  %13 = load %struct.timer_trig_data*, %struct.timer_trig_data** %3, align 8
  %14 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.timer_trig_data*, %struct.timer_trig_data** %3, align 8
  %16 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LED_OFF, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %10
  %21 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %22 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.timer_trig_data*, %struct.timer_trig_data** %3, align 8
  %25 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %20, %10
  %27 = load %struct.timer_trig_data*, %struct.timer_trig_data** %3, align 8
  %28 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %29 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %28, i32 0, i32 1
  store %struct.timer_trig_data* %27, %struct.timer_trig_data** %29, align 8
  %30 = load %struct.timer_trig_data*, %struct.timer_trig_data** %3, align 8
  %31 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %30, i32 0, i32 3
  %32 = call i32 @init_timer(%struct.TYPE_2__* %31)
  %33 = load i32, i32* @led_timer_function, align 4
  %34 = load %struct.timer_trig_data*, %struct.timer_trig_data** %3, align 8
  %35 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %38 = ptrtoint %struct.led_classdev* %37 to i64
  %39 = load %struct.timer_trig_data*, %struct.timer_trig_data** %3, align 8
  %40 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %43 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @device_create_file(i32 %44, i32* @dev_attr_delay_on)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %26
  br label %78

49:                                               ; preds = %26
  %50 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %51 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @device_create_file(i32 %52, i32* @dev_attr_delay_off)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %73

57:                                               ; preds = %49
  %58 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %59 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %58, i32 0, i32 3
  %60 = load i32 (%struct.led_classdev*, i32*, i32*)*, i32 (%struct.led_classdev*, i32*, i32*)** %59, align 8
  %61 = icmp ne i32 (%struct.led_classdev*, i32*, i32*)* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %64 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %63, i32 0, i32 3
  %65 = load i32 (%struct.led_classdev*, i32*, i32*)*, i32 (%struct.led_classdev*, i32*, i32*)** %64, align 8
  %66 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %67 = load %struct.timer_trig_data*, %struct.timer_trig_data** %3, align 8
  %68 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %67, i32 0, i32 2
  %69 = load %struct.timer_trig_data*, %struct.timer_trig_data** %3, align 8
  %70 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %69, i32 0, i32 1
  %71 = call i32 %65(%struct.led_classdev* %66, i32* %68, i32* %70)
  br label %72

72:                                               ; preds = %62, %57
  br label %83

73:                                               ; preds = %56
  %74 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %75 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @device_remove_file(i32 %76, i32* @dev_attr_delay_on)
  br label %78

78:                                               ; preds = %73, %48
  %79 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %80 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %79, i32 0, i32 1
  store %struct.timer_trig_data* null, %struct.timer_trig_data** %80, align 8
  %81 = load %struct.timer_trig_data*, %struct.timer_trig_data** %3, align 8
  %82 = call i32 @kfree(%struct.timer_trig_data* %81)
  br label %83

83:                                               ; preds = %78, %72, %9
  ret void
}

declare dso_local %struct.timer_trig_data* @kzalloc(i32, i32) #1

declare dso_local i64 @led_get_brightness(%struct.led_classdev*) #1

declare dso_local i32 @init_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @kfree(%struct.timer_trig_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
