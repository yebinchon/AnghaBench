; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wm831x = type { i32 }
%struct.wm831x_rtc = type { i32, i32, %struct.wm831x* }

@.str = private unnamed_addr constant [4 x i8] c"PER\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ALM\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WM831X_RTC_CONTROL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to read RTC control: %d\0A\00", align 1
@WM831X_RTC_ALM_ENA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"wm831x\00", align 1
@wm831x_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@wm831x_per_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"wm831x_rtc_per\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to request periodic IRQ %d: %d\0A\00", align 1
@wm831x_alm_irq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"wm831x_rtc_alm\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Failed to request alarm IRQ %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca %struct.wm831x_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.wm831x* @dev_get_drvdata(i32 %12)
  store %struct.wm831x* %13, %struct.wm831x** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call i32 @platform_get_irq_byname(%struct.platform_device* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call i32 @platform_get_irq_byname(%struct.platform_device* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.wm831x_rtc* @kzalloc(i32 16, i32 %18)
  store %struct.wm831x_rtc* %19, %struct.wm831x_rtc** %5, align 8
  %20 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %21 = icmp eq %struct.wm831x_rtc* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %105

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %28 = call i32 @platform_set_drvdata(%struct.platform_device* %26, %struct.wm831x_rtc* %27)
  %29 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %30 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %31 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %30, i32 0, i32 2
  store %struct.wm831x* %29, %struct.wm831x** %31, align 8
  %32 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %33 = load i32, i32* @WM831X_RTC_CONTROL, align 4
  %34 = call i32 @wm831x_reg_read(%struct.wm831x* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (%struct.TYPE_4__*, i8*, i32, ...) @dev_err(%struct.TYPE_4__* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %101

42:                                               ; preds = %25
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @WM831X_RTC_ALM_ENA, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %49 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @device_init_wakeup(%struct.TYPE_4__* %52, i32 1)
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* @THIS_MODULE, align 4
  %57 = call i32 @rtc_device_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__* %55, i32* @wm831x_rtc_ops, i32 %56)
  %58 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %59 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %61 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %50
  %66 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %67 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %8, align 4
  br label %101

70:                                               ; preds = %50
  %71 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @wm831x_per_irq, align 4
  %74 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %75 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %76 = call i32 @wm831x_request_irq(%struct.wm831x* %71, i32 %72, i32 %73, i32 %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.wm831x_rtc* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %70
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (%struct.TYPE_4__*, i8*, i32, ...) @dev_err(%struct.TYPE_4__* %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %70
  %86 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @wm831x_alm_irq, align 4
  %89 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %90 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %91 = call i32 @wm831x_request_irq(%struct.wm831x* %86, i32 %87, i32 %88, i32 %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), %struct.wm831x_rtc* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 (%struct.TYPE_4__*, i8*, i32, ...) @dev_err(%struct.TYPE_4__* %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %85
  store i32 0, i32* %2, align 4
  br label %105

101:                                              ; preds = %65, %37
  %102 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %103 = call i32 @kfree(%struct.wm831x_rtc* %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %100, %22
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local %struct.wm831x_rtc* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm831x_rtc*) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32, ...) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @rtc_device_register(i8*, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @wm831x_request_irq(%struct.wm831x*, i32, i32, i32, i8*, %struct.wm831x_rtc*) #1

declare dso_local i32 @kfree(%struct.wm831x_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
