; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-bd2802.c_bd2802_register_led_classdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-bd2802.c_bd2802_register_led_classdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd2802_led = type { %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i8*, i32, i32, i32, i8* }
%struct.TYPE_4__ = type { i32 }

@bd2802_led_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"led1_R\00", align 1
@LED_OFF = common dso_local global i8* null, align 8
@bd2802_set_led1r_brightness = common dso_local global i32 0, align 4
@bd2802_set_led1r_blink = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"couldn't register LED %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"led1_G\00", align 1
@bd2802_set_led1g_brightness = common dso_local global i32 0, align 4
@bd2802_set_led1g_blink = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"led1_B\00", align 1
@bd2802_set_led1b_brightness = common dso_local global i32 0, align 4
@bd2802_set_led1b_blink = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"led2_R\00", align 1
@bd2802_set_led2r_brightness = common dso_local global i32 0, align 4
@bd2802_set_led2r_blink = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"led2_G\00", align 1
@bd2802_set_led2g_brightness = common dso_local global i32 0, align 4
@bd2802_set_led2g_blink = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"led2_B\00", align 1
@bd2802_set_led2b_brightness = common dso_local global i32 0, align 4
@bd2802_set_led2b_blink = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bd2802_led*)* @bd2802_register_led_classdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd2802_register_led_classdev(%struct.bd2802_led* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bd2802_led*, align 8
  %4 = alloca i32, align 4
  store %struct.bd2802_led* %0, %struct.bd2802_led** %3, align 8
  %5 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %6 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %5, i32 0, i32 7
  %7 = load i32, i32* @bd2802_led_work, align 4
  %8 = call i32 @INIT_WORK(i32* %6, i32 %7)
  %9 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %10 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i8*, i8** @LED_OFF, align 8
  %13 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %14 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  store i8* %12, i8** %15, align 8
  %16 = load i32, i32* @bd2802_set_led1r_brightness, align 4
  %17 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %18 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @bd2802_set_led1r_blink, align 4
  %21 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %22 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %25 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %24, i32 0, i32 6
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %29 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %28, i32 0, i32 0
  %30 = call i32 @led_classdev_register(i32* %27, %struct.TYPE_5__* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %1
  %34 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %35 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %34, i32 0, i32 6
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %39 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %245

43:                                               ; preds = %1
  %44 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %45 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %46, align 8
  %47 = load i8*, i8** @LED_OFF, align 8
  %48 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %49 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* @bd2802_set_led1g_brightness, align 4
  %52 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %53 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @bd2802_set_led1g_blink, align 4
  %56 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %57 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %60 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %59, i32 0, i32 6
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %64 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %63, i32 0, i32 1
  %65 = call i32 @led_classdev_register(i32* %62, %struct.TYPE_5__* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %43
  %69 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %70 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %69, i32 0, i32 6
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %74 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  br label %241

78:                                               ; preds = %43
  %79 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %80 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %81, align 8
  %82 = load i8*, i8** @LED_OFF, align 8
  %83 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %84 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  store i8* %82, i8** %85, align 8
  %86 = load i32, i32* @bd2802_set_led1b_brightness, align 4
  %87 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %88 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* @bd2802_set_led1b_blink, align 4
  %91 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %92 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 4
  %94 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %95 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %94, i32 0, i32 6
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %99 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %98, i32 0, i32 2
  %100 = call i32 @led_classdev_register(i32* %97, %struct.TYPE_5__* %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %78
  %104 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %105 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %104, i32 0, i32 6
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %109 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %111)
  br label %237

113:                                              ; preds = %78
  %114 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %115 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %116, align 8
  %117 = load i8*, i8** @LED_OFF, align 8
  %118 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %119 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 4
  store i8* %117, i8** %120, align 8
  %121 = load i32, i32* @bd2802_set_led2r_brightness, align 4
  %122 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %123 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  store i32 %121, i32* %124, align 8
  %125 = load i32, i32* @bd2802_set_led2r_blink, align 4
  %126 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %127 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 4
  %129 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %130 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %129, i32 0, i32 6
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %134 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %133, i32 0, i32 3
  %135 = call i32 @led_classdev_register(i32* %132, %struct.TYPE_5__* %134)
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %113
  %139 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %140 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %139, i32 0, i32 6
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %144 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @dev_err(i32* %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %146)
  br label %233

148:                                              ; preds = %113
  %149 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %150 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %151, align 8
  %152 = load i8*, i8** @LED_OFF, align 8
  %153 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %154 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 4
  store i8* %152, i8** %155, align 8
  %156 = load i32, i32* @bd2802_set_led2g_brightness, align 4
  %157 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %158 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 3
  store i32 %156, i32* %159, align 8
  %160 = load i32, i32* @bd2802_set_led2g_blink, align 4
  %161 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %162 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  store i32 %160, i32* %163, align 4
  %164 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %165 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %164, i32 0, i32 6
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %169 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %168, i32 0, i32 4
  %170 = call i32 @led_classdev_register(i32* %167, %struct.TYPE_5__* %169)
  store i32 %170, i32* %4, align 4
  %171 = load i32, i32* %4, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %148
  %174 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %175 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %174, i32 0, i32 6
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %179 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @dev_err(i32* %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %181)
  br label %229

183:                                              ; preds = %148
  %184 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %185 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %186, align 8
  %187 = load i8*, i8** @LED_OFF, align 8
  %188 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %189 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 4
  store i8* %187, i8** %190, align 8
  %191 = load i32, i32* @bd2802_set_led2b_brightness, align 4
  %192 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %193 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 3
  store i32 %191, i32* %194, align 8
  %195 = load i32, i32* @bd2802_set_led2b_blink, align 4
  %196 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %197 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  store i32 %195, i32* %198, align 4
  %199 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %200 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %201 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %199
  store i32 %204, i32* %202, align 8
  %205 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %206 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %205, i32 0, i32 6
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %210 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %209, i32 0, i32 5
  %211 = call i32 @led_classdev_register(i32* %208, %struct.TYPE_5__* %210)
  store i32 %211, i32* %4, align 4
  %212 = load i32, i32* %4, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %183
  %215 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %216 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %215, i32 0, i32 6
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %220 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @dev_err(i32* %218, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %222)
  br label %225

224:                                              ; preds = %183
  store i32 0, i32* %2, align 4
  br label %247

225:                                              ; preds = %214
  %226 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %227 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %226, i32 0, i32 4
  %228 = call i32 @led_classdev_unregister(%struct.TYPE_5__* %227)
  br label %229

229:                                              ; preds = %225, %173
  %230 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %231 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %230, i32 0, i32 3
  %232 = call i32 @led_classdev_unregister(%struct.TYPE_5__* %231)
  br label %233

233:                                              ; preds = %229, %138
  %234 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %235 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %234, i32 0, i32 2
  %236 = call i32 @led_classdev_unregister(%struct.TYPE_5__* %235)
  br label %237

237:                                              ; preds = %233, %103
  %238 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %239 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %238, i32 0, i32 1
  %240 = call i32 @led_classdev_unregister(%struct.TYPE_5__* %239)
  br label %241

241:                                              ; preds = %237, %68
  %242 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %243 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %242, i32 0, i32 0
  %244 = call i32 @led_classdev_unregister(%struct.TYPE_5__* %243)
  br label %245

245:                                              ; preds = %241, %33
  %246 = load i32, i32* %4, align 4
  store i32 %246, i32* %2, align 4
  br label %247

247:                                              ; preds = %245, %224
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
