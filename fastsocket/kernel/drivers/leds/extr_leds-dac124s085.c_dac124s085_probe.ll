; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-dac124s085.c_dac124s085_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-dac124s085.c_dac124s085_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.dac124s085 = type { %struct.dac124s085_led* }
%struct.dac124s085_led = type { i32, %struct.TYPE_3__, i32, i32, i32, i32, %struct.spi_device*, i8* }
%struct.TYPE_3__ = type { i32, i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"dac124s085-%d\00", align 1
@dac124s085_led_work = common dso_local global i32 0, align 4
@dac124s085_set_brightness = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @dac124s085_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac124s085_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.dac124s085*, align 8
  %5 = alloca %struct.dac124s085_led*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.dac124s085* @kzalloc(i32 8, i32 %8)
  store %struct.dac124s085* %9, %struct.dac124s085** %4, align 8
  %10 = load %struct.dac124s085*, %struct.dac124s085** %4, align 8
  %11 = icmp ne %struct.dac124s085* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %109

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  store i32 16, i32* %17, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %82, %15
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.dac124s085*, %struct.dac124s085** %4, align 8
  %21 = getelementptr inbounds %struct.dac124s085, %struct.dac124s085* %20, i32 0, i32 0
  %22 = load %struct.dac124s085_led*, %struct.dac124s085_led** %21, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.dac124s085_led* %22)
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %85

25:                                               ; preds = %18
  %26 = load %struct.dac124s085*, %struct.dac124s085** %4, align 8
  %27 = getelementptr inbounds %struct.dac124s085, %struct.dac124s085* %26, i32 0, i32 0
  %28 = load %struct.dac124s085_led*, %struct.dac124s085_led** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %28, i64 %30
  store %struct.dac124s085_led* %31, %struct.dac124s085_led** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %34 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @LED_OFF, align 8
  %36 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %37 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %36, i32 0, i32 7
  store i8* %35, i8** %37, align 8
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %40 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %39, i32 0, i32 6
  store %struct.spi_device* %38, %struct.spi_device** %40, align 8
  %41 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %42 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @snprintf(i32 %43, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %47 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %46, i32 0, i32 5
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %50 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %49, i32 0, i32 4
  %51 = load i32, i32* @dac124s085_led_work, align 4
  %52 = call i32 @INIT_WORK(i32* %50, i32 %51)
  %53 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %54 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %53, i32 0, i32 3
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %57 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %60 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 8
  %62 = load i8*, i8** @LED_OFF, align 8
  %63 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %64 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i8* %62, i8** %65, align 8
  %66 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %67 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 4095, i32* %68, align 8
  %69 = load i32, i32* @dac124s085_set_brightness, align 4
  %70 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %71 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %74 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %73, i32 0, i32 1
  %75 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %76 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %75, i32 0, i32 1
  %77 = call i32 @led_classdev_register(i32* %74, %struct.TYPE_3__* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %25
  br label %89

81:                                               ; preds = %25
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %18

85:                                               ; preds = %18
  %86 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %87 = load %struct.dac124s085*, %struct.dac124s085** %4, align 8
  %88 = call i32 @spi_set_drvdata(%struct.spi_device* %86, %struct.dac124s085* %87)
  store i32 0, i32* %2, align 4
  br label %109

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %94, %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %6, align 4
  %93 = icmp ne i32 %91, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load %struct.dac124s085*, %struct.dac124s085** %4, align 8
  %96 = getelementptr inbounds %struct.dac124s085, %struct.dac124s085* %95, i32 0, i32 0
  %97 = load %struct.dac124s085_led*, %struct.dac124s085_led** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %97, i64 %99
  %101 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %100, i32 0, i32 1
  %102 = call i32 @led_classdev_unregister(%struct.TYPE_3__* %101)
  br label %90

103:                                              ; preds = %90
  %104 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %105 = call i32 @spi_set_drvdata(%struct.spi_device* %104, %struct.dac124s085* null)
  %106 = load %struct.dac124s085*, %struct.dac124s085** %4, align 8
  %107 = call i32 @kfree(%struct.dac124s085* %106)
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %103, %85, %12
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.dac124s085* @kzalloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.dac124s085_led*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.dac124s085*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.dac124s085*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
