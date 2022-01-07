; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-gpio.c_gpio_trig_gpio_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-gpio.c_gpio_trig_gpio_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { %struct.gpio_trig_data* }
%struct.gpio_trig_data = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"couldn't read gpio number\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@gpio_trig_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"ledtrig-gpio\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"request_irq failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @gpio_trig_gpio_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gpio_trig_gpio_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.led_classdev*, align 8
  %11 = alloca %struct.gpio_trig_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.led_classdev* @dev_get_drvdata(%struct.device* %14)
  store %struct.led_classdev* %15, %struct.led_classdev** %10, align 8
  %16 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %17 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %16, i32 0, i32 0
  %18 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %17, align 8
  store %struct.gpio_trig_data* %18, %struct.gpio_trig_data** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %11, align 8
  %27 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %26, i32 0, i32 1
  %28 = call i32 @flush_work(i32* %27)
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %101

31:                                               ; preds = %4
  %32 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %11, align 8
  %33 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* %9, align 8
  store i64 %38, i64* %5, align 8
  br label %101

39:                                               ; preds = %31
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %11, align 8
  %44 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %11, align 8
  %49 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gpio_to_irq(i32 %50)
  %52 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %53 = call i32 @free_irq(i32 %51, %struct.led_classdev* %52)
  br label %54

54:                                               ; preds = %47, %42
  %55 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %11, align 8
  %56 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %5, align 8
  br label %101

58:                                               ; preds = %39
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @gpio_to_irq(i32 %59)
  %61 = load i32, i32* @gpio_trig_irq, align 4
  %62 = load i32, i32* @IRQF_SHARED, align 4
  %63 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %68 = call i32 @request_irq(i32 %60, i32 %61, i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.led_classdev* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %91

75:                                               ; preds = %58
  %76 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %11, align 8
  %77 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %11, align 8
  %82 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @gpio_to_irq(i32 %83)
  %85 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %86 = call i32 @free_irq(i32 %84, %struct.led_classdev* %85)
  br label %87

87:                                               ; preds = %80, %75
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %11, align 8
  %90 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %87, %71
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  br label %99

97:                                               ; preds = %91
  %98 = load i64, i64* %9, align 8
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi i64 [ %96, %94 ], [ %98, %97 ]
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %99, %54, %37, %23
  %102 = load i64, i64* %5, align 8
  ret i64 %102
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.led_classdev*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.led_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
