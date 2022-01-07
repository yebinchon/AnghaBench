; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-wm831x-status.c_wm831x_status_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-wm831x-status.c_wm831x_status_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.wm831x = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.wm831x_pdata* }
%struct.wm831x_pdata = type { i64* }
%struct.wm831x_status_pdata = type { i32, i32, i32 }
%struct.wm831x_status = type { i32, i32, %struct.TYPE_7__, i32, i32, i32, i32, i32, %struct.wm831x* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"No I/O resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm831x_status_work = common dso_local global i32 0, align 4
@WM831X_LED_MODE_MASK = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@WM831X_STATUS_PRESERVE = common dso_local global i32 0, align 4
@WM831X_LED_SRC_MASK = common dso_local global i32 0, align 4
@WM831X_LED_SRC_SHIFT = common dso_local global i32 0, align 4
@wm831x_status_set = common dso_local global i32 0, align 4
@wm831x_status_blink_set = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to register LED: %d\0A\00", align 1
@dev_attr_src = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"No source control for LED: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_status_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_status_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca %struct.wm831x_pdata*, align 8
  %6 = alloca %struct.wm831x_status_pdata, align 4
  %7 = alloca %struct.wm831x_status*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.wm831x* @dev_get_drvdata(i32 %14)
  store %struct.wm831x* %15, %struct.wm831x** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %20 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = call i32 @ARRAY_SIZE(i64* %21)
  %23 = srem i32 %18, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_IO, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %8, align 8
  %27 = load %struct.resource*, %struct.resource** %8, align 8
  %28 = icmp eq %struct.resource* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 1
  %32 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %10, align 4
  br label %207

35:                                               ; preds = %1
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.wm831x_status* @kzalloc(i32 56, i32 %36)
  store %struct.wm831x_status* %37, %struct.wm831x_status** %7, align 8
  %38 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %39 = icmp ne %struct.wm831x_status* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %209

43:                                               ; preds = %35
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 1
  %46 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %47 = call i32 @dev_set_drvdata(%struct.TYPE_9__* %45, %struct.wm831x_status* %46)
  %48 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %49 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %50 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %49, i32 0, i32 8
  store %struct.wm831x* %48, %struct.wm831x** %50, align 8
  %51 = load %struct.resource*, %struct.resource** %8, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %55 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %57 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %59, align 8
  %61 = icmp ne %struct.wm831x_pdata* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %43
  %63 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %64 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %66, align 8
  store %struct.wm831x_pdata* %67, %struct.wm831x_pdata** %5, align 8
  br label %69

68:                                               ; preds = %43
  store %struct.wm831x_pdata* null, %struct.wm831x_pdata** %5, align 8
  br label %69

69:                                               ; preds = %68, %62
  %70 = call i32 @memset(%struct.wm831x_status_pdata* %6, i32 0, i32 12)
  %71 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %72 = icmp ne %struct.wm831x_pdata* %71, null
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  %74 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %75 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %73
  %83 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %84 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @memcpy(%struct.wm831x_status_pdata* %6, i64 %89, i32 12)
  br label %96

91:                                               ; preds = %73, %69
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 1
  %94 = call i32 @dev_name(%struct.TYPE_9__* %93)
  %95 = getelementptr inbounds %struct.wm831x_status_pdata, %struct.wm831x_status_pdata* %6, i32 0, i32 2
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %91, %82
  %97 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %98 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %97, i32 0, i32 7
  %99 = call i32 @mutex_init(i32* %98)
  %100 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %101 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %100, i32 0, i32 6
  %102 = load i32, i32* @wm831x_status_work, align 4
  %103 = call i32 @INIT_WORK(i32* %101, i32 %102)
  %104 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %105 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %104, i32 0, i32 5
  %106 = call i32 @spin_lock_init(i32* %105)
  %107 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %108 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %109 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @wm831x_reg_read(%struct.wm831x* %107, i32 %110)
  %112 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %113 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %115 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @WM831X_LED_MODE_MASK, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %96
  %121 = load i32, i32* @LED_FULL, align 4
  %122 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %123 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  br label %128

124:                                              ; preds = %96
  %125 = load i32, i32* @LED_OFF, align 4
  %126 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %127 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %124, %120
  %129 = getelementptr inbounds %struct.wm831x_status_pdata, %struct.wm831x_status_pdata* %6, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @WM831X_STATUS_PRESERVE, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %149

133:                                              ; preds = %128
  %134 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %135 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %138 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @WM831X_LED_SRC_MASK, align 4
  %140 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %141 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* @WM831X_LED_SRC_SHIFT, align 4
  %145 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %146 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = ashr i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %155

149:                                              ; preds = %128
  %150 = getelementptr inbounds %struct.wm831x_status_pdata, %struct.wm831x_status_pdata* %6, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, 1
  %153 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %154 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %149, %133
  %156 = getelementptr inbounds %struct.wm831x_status_pdata, %struct.wm831x_status_pdata* %6, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %159 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 4
  store i32 %157, i32* %160, align 8
  %161 = getelementptr inbounds %struct.wm831x_status_pdata, %struct.wm831x_status_pdata* %6, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %164 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  store i32 %162, i32* %165, align 4
  %166 = load i32, i32* @wm831x_status_set, align 4
  %167 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %168 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 2
  store i32 %166, i32* %169, align 8
  %170 = load i32, i32* @wm831x_status_blink_set, align 4
  %171 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %172 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  store i32 %170, i32* %173, align 4
  %174 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %175 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %174, i32 0, i32 0
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %178 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %177, i32 0, i32 2
  %179 = call i32 @led_classdev_register(%struct.TYPE_8__* %176, %struct.TYPE_7__* %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %155
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 1
  %185 = load i32, i32* %10, align 4
  %186 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %184, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %185)
  br label %201

187:                                              ; preds = %155
  %188 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %189 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @device_create_file(i32 %191, i32* @dev_attr_src)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %187
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %196, i32 0, i32 1
  %198 = load i32, i32* %10, align 4
  %199 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %197, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %195, %187
  store i32 0, i32* %2, align 4
  br label %209

201:                                              ; preds = %182
  %202 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %203 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %202, i32 0, i32 2
  %204 = call i32 @led_classdev_unregister(%struct.TYPE_7__* %203)
  %205 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %206 = call i32 @kfree(%struct.wm831x_status* %205)
  br label %207

207:                                              ; preds = %201, %29
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %207, %200, %40
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local %struct.wm831x_status* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_9__*, %struct.wm831x_status*) #1

declare dso_local i32 @memset(%struct.wm831x_status_pdata*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.wm831x_status_pdata*, i64, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @led_classdev_register(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.wm831x_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
