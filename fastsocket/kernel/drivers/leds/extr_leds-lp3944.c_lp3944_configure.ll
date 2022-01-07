; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-lp3944.c_lp3944_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-lp3944.c_lp3944_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lp3944_data = type { %struct.lp3944_led_data* }
%struct.lp3944_led_data = type { i32, i32, i32, %struct.TYPE_3__, i32, %struct.i2c_client* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.lp3944_platform_data = type { i32, %struct.lp3944_led* }
%struct.lp3944_led = type { i32, i32, i32 }

@lp3944_led_set_brightness = common dso_local global i32 0, align 4
@lp3944_led_set_blink = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@lp3944_led_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"couldn't register LED %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s couldn't set STATUS %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.lp3944_data*, %struct.lp3944_platform_data*)* @lp3944_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3944_configure(%struct.i2c_client* %0, %struct.lp3944_data* %1, %struct.lp3944_platform_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.lp3944_data*, align 8
  %7 = alloca %struct.lp3944_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lp3944_led*, align 8
  %11 = alloca %struct.lp3944_led_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store %struct.lp3944_data* %1, %struct.lp3944_data** %6, align 8
  store %struct.lp3944_platform_data* %2, %struct.lp3944_platform_data** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %120, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.lp3944_platform_data*, %struct.lp3944_platform_data** %7, align 8
  %15 = getelementptr inbounds %struct.lp3944_platform_data, %struct.lp3944_platform_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %123

18:                                               ; preds = %12
  %19 = load %struct.lp3944_platform_data*, %struct.lp3944_platform_data** %7, align 8
  %20 = getelementptr inbounds %struct.lp3944_platform_data, %struct.lp3944_platform_data* %19, i32 0, i32 1
  %21 = load %struct.lp3944_led*, %struct.lp3944_led** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.lp3944_led, %struct.lp3944_led* %21, i64 %23
  store %struct.lp3944_led* %24, %struct.lp3944_led** %10, align 8
  %25 = load %struct.lp3944_data*, %struct.lp3944_data** %6, align 8
  %26 = getelementptr inbounds %struct.lp3944_data, %struct.lp3944_data* %25, i32 0, i32 0
  %27 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %27, i64 %29
  store %struct.lp3944_led_data* %30, %struct.lp3944_led_data** %11, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %33 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %32, i32 0, i32 5
  store %struct.i2c_client* %31, %struct.i2c_client** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %36 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.lp3944_led*, %struct.lp3944_led** %10, align 8
  %38 = getelementptr inbounds %struct.lp3944_led, %struct.lp3944_led* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %118 [
    i32 130, label %40
    i32 129, label %40
    i32 128, label %117
  ]

40:                                               ; preds = %18, %18
  %41 = load %struct.lp3944_led*, %struct.lp3944_led** %10, align 8
  %42 = getelementptr inbounds %struct.lp3944_led, %struct.lp3944_led* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %45 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.lp3944_led*, %struct.lp3944_led** %10, align 8
  %47 = getelementptr inbounds %struct.lp3944_led, %struct.lp3944_led* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %50 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.lp3944_led*, %struct.lp3944_led** %10, align 8
  %52 = getelementptr inbounds %struct.lp3944_led, %struct.lp3944_led* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %55 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %58 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* @lp3944_led_set_brightness, align 4
  %61 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %62 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 5
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @lp3944_led_set_blink, align 4
  %65 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %66 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %69 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %70 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %73 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %72, i32 0, i32 2
  %74 = load i32, i32* @lp3944_led_work, align 4
  %75 = call i32 @INIT_WORK(i32* %73, i32 %74)
  %76 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %79 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %78, i32 0, i32 3
  %80 = call i32 @led_classdev_register(i32* %77, %struct.TYPE_3__* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %40
  %84 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %87 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %124

91:                                               ; preds = %40
  %92 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %93 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %96 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 4
  %98 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %99 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %100 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @lp3944_led_set(%struct.lp3944_led_data* %98, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %91
  %106 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 0
  %108 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %109 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %113 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %114)
  br label %124

116:                                              ; preds = %91
  br label %119

117:                                              ; preds = %18
  br label %118

118:                                              ; preds = %18, %117
  br label %119

119:                                              ; preds = %118, %116
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %12

123:                                              ; preds = %12
  store i32 0, i32* %4, align 4
  br label %168

124:                                              ; preds = %105, %83
  %125 = load i32, i32* %8, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %166

127:                                              ; preds = %124
  %128 = load i32, i32* %8, align 4
  %129 = sub nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %162, %127
  %131 = load i32, i32* %8, align 4
  %132 = icmp sge i32 %131, 0
  br i1 %132, label %133, label %165

133:                                              ; preds = %130
  %134 = load %struct.lp3944_platform_data*, %struct.lp3944_platform_data** %7, align 8
  %135 = getelementptr inbounds %struct.lp3944_platform_data, %struct.lp3944_platform_data* %134, i32 0, i32 1
  %136 = load %struct.lp3944_led*, %struct.lp3944_led** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.lp3944_led, %struct.lp3944_led* %136, i64 %138
  %140 = getelementptr inbounds %struct.lp3944_led, %struct.lp3944_led* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  switch i32 %141, label %160 [
    i32 130, label %142
    i32 129, label %142
    i32 128, label %159
  ]

142:                                              ; preds = %133, %133
  %143 = load %struct.lp3944_data*, %struct.lp3944_data** %6, align 8
  %144 = getelementptr inbounds %struct.lp3944_data, %struct.lp3944_data* %143, i32 0, i32 0
  %145 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %145, i64 %147
  %149 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %148, i32 0, i32 3
  %150 = call i32 @led_classdev_unregister(%struct.TYPE_3__* %149)
  %151 = load %struct.lp3944_data*, %struct.lp3944_data** %6, align 8
  %152 = getelementptr inbounds %struct.lp3944_data, %struct.lp3944_data* %151, i32 0, i32 0
  %153 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %153, i64 %155
  %157 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %156, i32 0, i32 2
  %158 = call i32 @cancel_work_sync(i32* %157)
  br label %161

159:                                              ; preds = %133
  br label %160

160:                                              ; preds = %133, %159
  br label %161

161:                                              ; preds = %160, %142
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %8, align 4
  br label %130

165:                                              ; preds = %130
  br label %166

166:                                              ; preds = %165, %124
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %166, %123
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @lp3944_led_set(%struct.lp3944_led_data*, i32) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
