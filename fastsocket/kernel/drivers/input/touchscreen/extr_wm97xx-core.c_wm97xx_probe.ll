; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.wm97xx*)* }
%struct.wm97xx = type { i32, %struct.TYPE_16__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i8**, %struct.TYPE_19__*, %struct.device*, i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i8*, %struct.TYPE_17__, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.device* }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.wm97xx_pdata*, %struct.device* }
%struct.wm97xx_pdata = type { i32 }
%struct.device = type { %struct.wm97xx_pdata* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AC97_VENDOR_ID1 = common dso_local global i32 0, align 4
@WM97XX_ID1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Device with vendor %04x is not a wm97xx\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@AC97_VENDOR_ID2 = common dso_local global i32 0, align 4
@WM97xx_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"detected a wm97%02x codec\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Support for wm97%02x not compiled in.\0A\00", align 1
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@AC97_GPIO_CFG = common dso_local global i32 0, align 4
@AC97_GPIO_POLARITY = common dso_local global i32 0, align 4
@AC97_GPIO_STATUS = common dso_local global i32 0, align 4
@AC97_GPIO_STICKY = common dso_local global i32 0, align 4
@AC97_GPIO_WAKEUP = common dso_local global i32 0, align 4
@AC97_MISC_AFE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@abs_p = common dso_local global i32* null, align 8
@abs_x = common dso_local global i32* null, align 8
@abs_y = common dso_local global i32* null, align 8
@wm9705_codec = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@wm9712_codec = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@wm9713_codec = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@wm97xx_ts_input_close = common dso_local global i32 0, align 4
@wm97xx_ts_input_open = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @wm97xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.wm97xx*, align 8
  %5 = alloca %struct.wm97xx_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.wm97xx_pdata*, %struct.wm97xx_pdata** %9, align 8
  store %struct.wm97xx_pdata* %10, %struct.wm97xx_pdata** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wm97xx* @kzalloc(i32 72, i32 %11)
  store %struct.wm97xx* %12, %struct.wm97xx** %4, align 8
  %13 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %14 = icmp ne %struct.wm97xx* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %111

18:                                               ; preds = %1
  %19 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %20 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %19, i32 0, i32 9
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %24 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %23, i32 0, i32 6
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %27 = call i32 @dev_set_drvdata(%struct.device* %25, %struct.wm97xx* %26)
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = call i32 @to_ac97_t(%struct.device* %28)
  %30 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %31 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  %32 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %33 = load i32, i32* @AC97_VENDOR_ID1, align 4
  %34 = call i8* @wm97xx_reg_read(%struct.wm97xx* %32, i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @WM97XX_ID1, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %18
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %107

45:                                               ; preds = %18
  %46 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %47 = load i32, i32* @AC97_VENDOR_ID2, align 4
  %48 = call i8* @wm97xx_reg_read(%struct.wm97xx* %46, i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %51 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @WM97xx_GENERIC, align 4
  %53 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %54 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 8
  %55 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %56 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %55, i32 0, i32 6
  %57 = load %struct.device*, %struct.device** %56, align 8
  %58 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %59 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 255
  %62 = call i32 @dev_info(%struct.device* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %64 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, 255
  switch i32 %66, label %67 [
  ]

67:                                               ; preds = %45
  %68 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %69 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %68, i32 0, i32 6
  %70 = load %struct.device*, %struct.device** %69, align 8
  %71 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %72 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 255
  %75 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %107

78:                                               ; No predecessors!
  %79 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %80 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %79, i32 0, i32 3
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = call i32 @platform_device_put(%struct.TYPE_20__* %81)
  br label %83

83:                                               ; preds = %78
  %84 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %85 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %84, i32 0, i32 2
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = call i32 @platform_device_unregister(%struct.TYPE_20__* %86)
  %88 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %89 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %88, i32 0, i32 2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %89, align 8
  br label %90

90:                                               ; preds = %83
  %91 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %92 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %91, i32 0, i32 2
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = call i32 @platform_device_put(%struct.TYPE_20__* %93)
  br label %95

95:                                               ; preds = %90
  %96 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %97 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %96, i32 0, i32 1
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = call i32 @input_unregister_device(%struct.TYPE_16__* %98)
  %100 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %101 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %100, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %101, align 8
  br label %102

102:                                              ; preds = %95
  %103 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %104 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %103, i32 0, i32 1
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = call i32 @input_free_device(%struct.TYPE_16__* %105)
  br label %107

107:                                              ; preds = %102, %67, %39
  %108 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %109 = call i32 @kfree(%struct.wm97xx* %108)
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %15
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.wm97xx* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.wm97xx*) #1

declare dso_local i32 @to_ac97_t(%struct.device*) #1

declare dso_local i8* @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_20__*) #1

declare dso_local i32 @platform_device_unregister(%struct.TYPE_20__*) #1

declare dso_local i32 @input_unregister_device(%struct.TYPE_16__*) #1

declare dso_local i32 @input_free_device(%struct.TYPE_16__*) #1

declare dso_local i32 @kfree(%struct.wm97xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
