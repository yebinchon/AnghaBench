; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_wm8350_device_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_wm8350_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 (%struct.wm8350*, i32, i32, i32*)*, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_12__, %struct.TYPE_8__, %struct.TYPE_14__, %struct.TYPE_13__, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.wm8350_platform_data = type { i32 (%struct.wm8350.0*)*, i64 }
%struct.wm8350.0 = type opaque

@WM8350_RESET_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to read ID: %d\0A\00", align 1
@WM8350_ID = common dso_local global i32 0, align 4
@WM8350_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to read revision: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Device with ID %x is not a WM8350\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@WM8350_CONF_STS_MASK = common dso_local global i32 0, align 4
@WM8350_CUST_ID_MASK = common dso_local global i32 0, align 4
@WM8350_CHIP_REV_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"CONF_STS %d, CUST_ID %d, MASK_REV %d, CHIP_REV %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Unsupported CUST_ID\0A\00", align 1
@WM8350_DCDC_6 = common dso_local global i8* null, align 8
@WM8350_ISINK_B = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"WM8350 Rev E\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"WM8350 Rev F\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"WM8350 Rev G\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"WM8350 Rev H\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Unknown WM8350 CHIP_REV\0A\00", align 1
@WM8350_DCDC_4 = common dso_local global i8* null, align 8
@WM8350_ISINK_A = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"WM8351 Rev A\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"WM8351 Rev B\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Unknown WM8351 CHIP_REV\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"WM8352 Rev A\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Unknown WM8352 CHIP_REV\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Unknown MASK_REV\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"Failed to create register cache\0A\00", align 1
@WM8350_SYSTEM_INTERRUPTS_MASK = common dso_local global i32 0, align 4
@WM8350_INT_STATUS_1_MASK = common dso_local global i32 0, align 4
@WM8350_INT_STATUS_2_MASK = common dso_local global i32 0, align 4
@WM8350_UNDER_VOLTAGE_INT_STATUS_MASK = common dso_local global i32 0, align 4
@WM8350_GPIO_INT_STATUS_MASK = common dso_local global i32 0, align 4
@WM8350_COMPARATOR_INT_STATUS_MASK = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@WM8350_SYSTEM_CONTROL_1 = common dso_local global i32 0, align 4
@WM8350_IRQ_POL = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@wm8350_irq = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"wm8350\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"No IRQ configured\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Platform init() failed: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"wm8350-codec\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"wm8350-gpio\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"wm8350-hwmon\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"wm8350-power\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"wm8350-rtc\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"wm8350-wdt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8350_device_init(%struct.wm8350* %0, i32 %1, %struct.wm8350_platform_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8350*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm8350_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wm8350_platform_data* %2, %struct.wm8350_platform_data** %7, align 8
  %16 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %17 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %16, i32 0, i32 0
  %18 = load i32 (%struct.wm8350*, i32, i32, i32*)*, i32 (%struct.wm8350*, i32, i32, i32*)** %17, align 8
  %19 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %20 = load i32, i32* @WM8350_RESET_ID, align 4
  %21 = call i32 %18(%struct.wm8350* %19, i32 %20, i32 4, i32* %9)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %26 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %365

30:                                               ; preds = %3
  %31 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %32 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %31, i32 0, i32 0
  %33 = load i32 (%struct.wm8350*, i32, i32, i32*)*, i32 (%struct.wm8350*, i32, i32, i32*)** %32, align 8
  %34 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %35 = load i32, i32* @WM8350_ID, align 4
  %36 = call i32 %33(%struct.wm8350* %34, i32 %35, i32 4, i32* %10)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %41 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %365

45:                                               ; preds = %30
  %46 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %47 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %46, i32 0, i32 0
  %48 = load i32 (%struct.wm8350*, i32, i32, i32*)*, i32 (%struct.wm8350*, i32, i32, i32*)** %47, align 8
  %49 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %50 = load i32, i32* @WM8350_REVISION, align 4
  %51 = call i32 %48(%struct.wm8350* %49, i32 %50, i32 4, i32* %11)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %56 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %365

60:                                               ; preds = %45
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @be16_to_cpu(i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @be16_to_cpu(i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @be16_to_cpu(i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 24899
  br i1 %68, label %69, label %77

69:                                               ; preds = %60
  %70 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %71 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (i32, i8*, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %365

77:                                               ; preds = %60
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @WM8350_CONF_STS_MASK, align 4
  %80 = ashr i32 %79, 10
  %81 = and i32 %78, %80
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @WM8350_CUST_ID_MASK, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @WM8350_CHIP_REV_MASK, align 4
  %87 = and i32 %85, %86
  %88 = ashr i32 %87, 12
  store i32 %88, i32* %14, align 4
  %89 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %90 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 (i32, i8*, ...) @dev_info(i32 %91, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %77
  %100 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %101 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, ...) @dev_err(i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %8, align 4
  br label %365

106:                                              ; preds = %77
  %107 = load i32, i32* %11, align 4
  switch i32 %107, label %212 [
    i32 0, label %108
    i32 1, label %152
    i32 2, label %186
  ]

108:                                              ; preds = %106
  %109 = load i8*, i8** @WM8350_DCDC_6, align 8
  %110 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %111 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %110, i32 0, i32 12
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  store i8* %109, i8** %112, align 8
  %113 = load i8*, i8** @WM8350_ISINK_B, align 8
  %114 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %115 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %114, i32 0, i32 12
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  store i8* %113, i8** %116, align 8
  %117 = load i32, i32* %14, align 4
  switch i32 %117, label %144 [
    i32 131, label %118
    i32 130, label %123
    i32 129, label %128
    i32 128, label %136
  ]

118:                                              ; preds = %108
  %119 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %120 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i8*, ...) @dev_info(i32 %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %151

123:                                              ; preds = %108
  %124 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %125 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32, i8*, ...) @dev_info(i32 %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %151

128:                                              ; preds = %108
  %129 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %130 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i8*, ...) @dev_info(i32 %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %133 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %134 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  br label %151

136:                                              ; preds = %108
  %137 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %138 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i8*, ...) @dev_info(i32 %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %141 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %142 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  br label %151

144:                                              ; preds = %108
  %145 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %146 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i32, i8*, ...) @dev_err(i32 %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %149 = load i32, i32* @ENODEV, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %8, align 4
  br label %365

151:                                              ; preds = %136, %128, %123, %118
  br label %219

152:                                              ; preds = %106
  %153 = load i8*, i8** @WM8350_DCDC_4, align 8
  %154 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %155 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %154, i32 0, i32 12
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  store i8* %153, i8** %156, align 8
  %157 = load i8*, i8** @WM8350_ISINK_A, align 8
  %158 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %159 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %158, i32 0, i32 12
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  store i8* %157, i8** %160, align 8
  %161 = load i32, i32* %14, align 4
  switch i32 %161, label %178 [
    i32 0, label %162
    i32 1, label %170
  ]

162:                                              ; preds = %152
  %163 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %164 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i8*, ...) @dev_info(i32 %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %167 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %168 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  br label %185

170:                                              ; preds = %152
  %171 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %172 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32, i8*, ...) @dev_info(i32 %173, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %175 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %176 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 8
  br label %185

178:                                              ; preds = %152
  %179 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %180 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %179, i32 0, i32 9
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, ...) @dev_err(i32 %181, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %183 = load i32, i32* @ENODEV, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %8, align 4
  br label %365

185:                                              ; preds = %170, %162
  br label %219

186:                                              ; preds = %106
  %187 = load i8*, i8** @WM8350_DCDC_6, align 8
  %188 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %189 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %188, i32 0, i32 12
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  store i8* %187, i8** %190, align 8
  %191 = load i8*, i8** @WM8350_ISINK_B, align 8
  %192 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %193 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %192, i32 0, i32 12
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  store i8* %191, i8** %194, align 8
  %195 = load i32, i32* %14, align 4
  switch i32 %195, label %204 [
    i32 0, label %196
  ]

196:                                              ; preds = %186
  %197 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %198 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %197, i32 0, i32 9
  %199 = load i32, i32* %198, align 4
  %200 = call i32 (i32, i8*, ...) @dev_info(i32 %199, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %201 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %202 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  store i32 1, i32* %203, align 8
  br label %211

204:                                              ; preds = %186
  %205 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %206 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %205, i32 0, i32 9
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (i32, i8*, ...) @dev_err(i32 %207, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %209 = load i32, i32* @ENODEV, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %8, align 4
  br label %365

211:                                              ; preds = %196
  br label %219

212:                                              ; preds = %106
  %213 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %214 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %213, i32 0, i32 9
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (i32, i8*, ...) @dev_err(i32 %215, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %217 = load i32, i32* @ENODEV, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %8, align 4
  br label %365

219:                                              ; preds = %211, %185, %151
  %220 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* %13, align 4
  %223 = call i32 @wm8350_create_cache(%struct.wm8350* %220, i32 %221, i32 %222)
  store i32 %223, i32* %8, align 4
  %224 = load i32, i32* %8, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %219
  %227 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %228 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %227, i32 0, i32 9
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i32, i8*, ...) @dev_err(i32 %229, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  %231 = load i32, i32* %8, align 4
  store i32 %231, i32* %4, align 4
  br label %371

232:                                              ; preds = %219
  %233 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %234 = load i32, i32* @WM8350_SYSTEM_INTERRUPTS_MASK, align 4
  %235 = call i32 @wm8350_reg_write(%struct.wm8350* %233, i32 %234, i32 65535)
  %236 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %237 = load i32, i32* @WM8350_INT_STATUS_1_MASK, align 4
  %238 = call i32 @wm8350_reg_write(%struct.wm8350* %236, i32 %237, i32 65535)
  %239 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %240 = load i32, i32* @WM8350_INT_STATUS_2_MASK, align 4
  %241 = call i32 @wm8350_reg_write(%struct.wm8350* %239, i32 %240, i32 65535)
  %242 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %243 = load i32, i32* @WM8350_UNDER_VOLTAGE_INT_STATUS_MASK, align 4
  %244 = call i32 @wm8350_reg_write(%struct.wm8350* %242, i32 %243, i32 65535)
  %245 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %246 = load i32, i32* @WM8350_GPIO_INT_STATUS_MASK, align 4
  %247 = call i32 @wm8350_reg_write(%struct.wm8350* %245, i32 %246, i32 65535)
  %248 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %249 = load i32, i32* @WM8350_COMPARATOR_INT_STATUS_MASK, align 4
  %250 = call i32 @wm8350_reg_write(%struct.wm8350* %248, i32 %249, i32 65535)
  %251 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %252 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %251, i32 0, i32 11
  %253 = call i32 @mutex_init(i32* %252)
  %254 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %255 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %254, i32 0, i32 10
  %256 = call i32 @mutex_init(i32* %255)
  %257 = load i32, i32* %6, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %299

259:                                              ; preds = %232
  %260 = load i32, i32* @IRQF_ONESHOT, align 4
  store i32 %260, i32* %15, align 4
  %261 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %7, align 8
  %262 = icmp ne %struct.wm8350_platform_data* %261, null
  br i1 %262, label %263, label %276

263:                                              ; preds = %259
  %264 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %7, align 8
  %265 = getelementptr inbounds %struct.wm8350_platform_data, %struct.wm8350_platform_data* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %263
  %269 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %270 = load i32, i32* %15, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %15, align 4
  %272 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %273 = load i32, i32* @WM8350_SYSTEM_CONTROL_1, align 4
  %274 = load i32, i32* @WM8350_IRQ_POL, align 4
  %275 = call i32 @wm8350_set_bits(%struct.wm8350* %272, i32 %273, i32 %274)
  br label %284

276:                                              ; preds = %263, %259
  %277 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %278 = load i32, i32* %15, align 4
  %279 = or i32 %278, %277
  store i32 %279, i32* %15, align 4
  %280 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %281 = load i32, i32* @WM8350_SYSTEM_CONTROL_1, align 4
  %282 = load i32, i32* @WM8350_IRQ_POL, align 4
  %283 = call i32 @wm8350_clear_bits(%struct.wm8350* %280, i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %276, %268
  %285 = load i32, i32* %6, align 4
  %286 = load i32, i32* @wm8350_irq, align 4
  %287 = load i32, i32* %15, align 4
  %288 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %289 = call i32 @request_threaded_irq(i32 %285, i32* null, i32 %286, i32 %287, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), %struct.wm8350* %288)
  store i32 %289, i32* %8, align 4
  %290 = load i32, i32* %8, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %284
  %293 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %294 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %293, i32 0, i32 9
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %8, align 4
  %297 = call i32 (i32, i8*, ...) @dev_err(i32 %295, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32 %296)
  br label %365

298:                                              ; preds = %284
  br label %304

299:                                              ; preds = %232
  %300 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %301 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %300, i32 0, i32 9
  %302 = load i32, i32* %301, align 4
  %303 = call i32 (i32, i8*, ...) @dev_err(i32 %302, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  br label %365

304:                                              ; preds = %298
  %305 = load i32, i32* %6, align 4
  %306 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %307 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %306, i32 0, i32 1
  store i32 %305, i32* %307, align 8
  %308 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %7, align 8
  %309 = icmp ne %struct.wm8350_platform_data* %308, null
  br i1 %309, label %310, label %331

310:                                              ; preds = %304
  %311 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %7, align 8
  %312 = getelementptr inbounds %struct.wm8350_platform_data, %struct.wm8350_platform_data* %311, i32 0, i32 0
  %313 = load i32 (%struct.wm8350.0*)*, i32 (%struct.wm8350.0*)** %312, align 8
  %314 = icmp ne i32 (%struct.wm8350.0*)* %313, null
  br i1 %314, label %315, label %331

315:                                              ; preds = %310
  %316 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %7, align 8
  %317 = getelementptr inbounds %struct.wm8350_platform_data, %struct.wm8350_platform_data* %316, i32 0, i32 0
  %318 = load i32 (%struct.wm8350.0*)*, i32 (%struct.wm8350.0*)** %317, align 8
  %319 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %320 = bitcast %struct.wm8350* %319 to %struct.wm8350.0*
  %321 = call i32 %318(%struct.wm8350.0* %320)
  store i32 %321, i32* %8, align 4
  %322 = load i32, i32* %8, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %330

324:                                              ; preds = %315
  %325 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %326 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %325, i32 0, i32 9
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %8, align 4
  %329 = call i32 (i32, i8*, ...) @dev_err(i32 %327, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i32 %328)
  br label %365

330:                                              ; preds = %315
  br label %331

331:                                              ; preds = %330, %310, %304
  %332 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %333 = load i32, i32* @WM8350_SYSTEM_INTERRUPTS_MASK, align 4
  %334 = call i32 @wm8350_reg_write(%struct.wm8350* %332, i32 %333, i32 0)
  %335 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %336 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %337 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %336, i32 0, i32 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 0
  %339 = call i32 @wm8350_client_dev_register(%struct.wm8350* %335, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i32* %338)
  %340 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %341 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %342 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %341, i32 0, i32 7
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 0
  %344 = call i32 @wm8350_client_dev_register(%struct.wm8350* %340, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32* %343)
  %345 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %346 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %347 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %346, i32 0, i32 6
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 0
  %349 = call i32 @wm8350_client_dev_register(%struct.wm8350* %345, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32* %348)
  %350 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %351 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %352 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %351, i32 0, i32 5
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 1
  %354 = call i32 @wm8350_client_dev_register(%struct.wm8350* %350, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32* %353)
  %355 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %356 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %357 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %356, i32 0, i32 4
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 0
  %359 = call i32 @wm8350_client_dev_register(%struct.wm8350* %355, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32* %358)
  %360 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %361 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %362 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %361, i32 0, i32 3
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 0
  %364 = call i32 @wm8350_client_dev_register(%struct.wm8350* %360, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i32* %363)
  store i32 0, i32* %4, align 4
  br label %371

365:                                              ; preds = %324, %299, %292, %212, %204, %178, %144, %99, %69, %54, %39, %24
  %366 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %367 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @kfree(i32 %368)
  %370 = load i32, i32* %8, align 4
  store i32 %370, i32* %4, align 4
  br label %371

371:                                              ; preds = %365, %331, %226
  %372 = load i32, i32* %4, align 4
  ret i32 %372
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @wm8350_create_cache(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.wm8350*) #1

declare dso_local i32 @wm8350_client_dev_register(%struct.wm8350*, i8*, i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
