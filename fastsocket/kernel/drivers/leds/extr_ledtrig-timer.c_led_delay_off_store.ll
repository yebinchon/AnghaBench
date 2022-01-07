; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-timer.c_led_delay_off_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-timer.c_led_delay_off_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i64 (%struct.led_classdev*, i32*, i64*)*, %struct.timer_trig_data* }
%struct.timer_trig_data = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @led_delay_off_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_delay_off_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.led_classdev*, align 8
  %10 = alloca %struct.timer_trig_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.led_classdev* @dev_get_drvdata(%struct.device* %15)
  store %struct.led_classdev* %16, %struct.led_classdev** %9, align 8
  %17 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %18 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %17, i32 0, i32 1
  %19 = load %struct.timer_trig_data*, %struct.timer_trig_data** %18, align 8
  store %struct.timer_trig_data* %19, %struct.timer_trig_data** %10, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @simple_strtoul(i8* %22, i8** %12, i32 10)
  store i64 %23, i64* %13, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  store i64 %28, i64* %14, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @isspace(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i64, i64* %14, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %14, align 8
  br label %36

36:                                               ; preds = %33, %4
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = load %struct.timer_trig_data*, %struct.timer_trig_data** %10, align 8
  %42 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %40
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.timer_trig_data*, %struct.timer_trig_data** %10, align 8
  %49 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.timer_trig_data*, %struct.timer_trig_data** %10, align 8
  %51 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %50, i32 0, i32 1
  %52 = call i32 @del_timer_sync(i32* %51)
  %53 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %54 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %53, i32 0, i32 0
  %55 = load i64 (%struct.led_classdev*, i32*, i64*)*, i64 (%struct.led_classdev*, i32*, i64*)** %54, align 8
  %56 = icmp ne i64 (%struct.led_classdev*, i32*, i64*)* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %46
  %58 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %59 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %58, i32 0, i32 0
  %60 = load i64 (%struct.led_classdev*, i32*, i64*)*, i64 (%struct.led_classdev*, i32*, i64*)** %59, align 8
  %61 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %62 = load %struct.timer_trig_data*, %struct.timer_trig_data** %10, align 8
  %63 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %62, i32 0, i32 2
  %64 = load %struct.timer_trig_data*, %struct.timer_trig_data** %10, align 8
  %65 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %64, i32 0, i32 0
  %66 = call i64 %60(%struct.led_classdev* %61, i32* %63, i64* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %57, %46
  %69 = load %struct.timer_trig_data*, %struct.timer_trig_data** %10, align 8
  %70 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %69, i32 0, i32 1
  %71 = load i64, i64* @jiffies, align 8
  %72 = add nsw i64 %71, 1
  %73 = call i32 @mod_timer(i32* %70, i64 %72)
  br label %74

74:                                               ; preds = %68, %57
  br label %75

75:                                               ; preds = %74, %40
  %76 = load i64, i64* %14, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %75, %36
  %79 = load i32, i32* %11, align 4
  ret i32 %79
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
