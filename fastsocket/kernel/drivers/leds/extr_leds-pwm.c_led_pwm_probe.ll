; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-pwm.c_led_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-pwm.c_led_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.led_pwm_platform_data* }
%struct.led_pwm_platform_data = type { i32, %struct.led_pwm* }
%struct.led_pwm = type { i32, i32, i32, i32, i32, i32 }
%struct.led_pwm_data = type { i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unable to request PWM %d\0A\00", align 1
@led_pwm_set = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @led_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.led_pwm_platform_data*, align 8
  %5 = alloca %struct.led_pwm*, align 8
  %6 = alloca %struct.led_pwm_data*, align 8
  %7 = alloca %struct.led_pwm_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.led_pwm_platform_data*, %struct.led_pwm_platform_data** %12, align 8
  store %struct.led_pwm_platform_data* %13, %struct.led_pwm_platform_data** %4, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.led_pwm_platform_data*, %struct.led_pwm_platform_data** %4, align 8
  %15 = icmp ne %struct.led_pwm_platform_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %165

19:                                               ; preds = %1
  %20 = load %struct.led_pwm_platform_data*, %struct.led_pwm_platform_data** %4, align 8
  %21 = getelementptr inbounds %struct.led_pwm_platform_data, %struct.led_pwm_platform_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 36, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.led_pwm_data* @kzalloc(i32 %25, i32 %26)
  store %struct.led_pwm_data* %27, %struct.led_pwm_data** %6, align 8
  %28 = load %struct.led_pwm_data*, %struct.led_pwm_data** %6, align 8
  %29 = icmp ne %struct.led_pwm_data* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %165

33:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %127, %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.led_pwm_platform_data*, %struct.led_pwm_platform_data** %4, align 8
  %37 = getelementptr inbounds %struct.led_pwm_platform_data, %struct.led_pwm_platform_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %130

40:                                               ; preds = %34
  %41 = load %struct.led_pwm_platform_data*, %struct.led_pwm_platform_data** %4, align 8
  %42 = getelementptr inbounds %struct.led_pwm_platform_data, %struct.led_pwm_platform_data* %41, i32 0, i32 1
  %43 = load %struct.led_pwm*, %struct.led_pwm** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %43, i64 %45
  store %struct.led_pwm* %46, %struct.led_pwm** %5, align 8
  %47 = load %struct.led_pwm_data*, %struct.led_pwm_data** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %47, i64 %49
  store %struct.led_pwm_data* %50, %struct.led_pwm_data** %7, align 8
  %51 = load %struct.led_pwm*, %struct.led_pwm** %5, align 8
  %52 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.led_pwm*, %struct.led_pwm** %5, align 8
  %55 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pwm_request(i32 %53, i32 %56)
  %58 = load %struct.led_pwm_data*, %struct.led_pwm_data** %7, align 8
  %59 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.led_pwm_data*, %struct.led_pwm_data** %7, align 8
  %61 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %40
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.led_pwm*, %struct.led_pwm** %5, align 8
  %69 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(%struct.TYPE_6__* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %134

72:                                               ; preds = %40
  %73 = load %struct.led_pwm*, %struct.led_pwm** %5, align 8
  %74 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.led_pwm_data*, %struct.led_pwm_data** %7, align 8
  %77 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  store i32 %75, i32* %78, align 4
  %79 = load %struct.led_pwm*, %struct.led_pwm** %5, align 8
  %80 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.led_pwm_data*, %struct.led_pwm_data** %7, align 8
  %83 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 4
  %85 = load %struct.led_pwm*, %struct.led_pwm** %5, align 8
  %86 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.led_pwm_data*, %struct.led_pwm_data** %7, align 8
  %89 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load %struct.led_pwm*, %struct.led_pwm** %5, align 8
  %91 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.led_pwm_data*, %struct.led_pwm_data** %7, align 8
  %94 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.led_pwm*, %struct.led_pwm** %5, align 8
  %96 = getelementptr inbounds %struct.led_pwm, %struct.led_pwm* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.led_pwm_data*, %struct.led_pwm_data** %7, align 8
  %99 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @led_pwm_set, align 4
  %101 = load %struct.led_pwm_data*, %struct.led_pwm_data** %7, align 8
  %102 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* @LED_OFF, align 4
  %105 = load %struct.led_pwm_data*, %struct.led_pwm_data** %7, align 8
  %106 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %109 = load %struct.led_pwm_data*, %struct.led_pwm_data** %7, align 8
  %110 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %108
  store i32 %113, i32* %111, align 4
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load %struct.led_pwm_data*, %struct.led_pwm_data** %7, align 8
  %117 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %116, i32 0, i32 1
  %118 = call i32 @led_classdev_register(%struct.TYPE_6__* %115, %struct.TYPE_5__* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %72
  %122 = load %struct.led_pwm_data*, %struct.led_pwm_data** %7, align 8
  %123 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @pwm_free(i32 %124)
  br label %134

126:                                              ; preds = %72
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %34

130:                                              ; preds = %34
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = load %struct.led_pwm_data*, %struct.led_pwm_data** %6, align 8
  %133 = call i32 @platform_set_drvdata(%struct.platform_device* %131, %struct.led_pwm_data* %132)
  store i32 0, i32* %2, align 4
  br label %165

134:                                              ; preds = %121, %65
  %135 = load i32, i32* %8, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %161

137:                                              ; preds = %134
  %138 = load i32, i32* %8, align 4
  %139 = sub nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %157, %137
  %141 = load i32, i32* %8, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %140
  %144 = load %struct.led_pwm_data*, %struct.led_pwm_data** %6, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %144, i64 %146
  %148 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %147, i32 0, i32 1
  %149 = call i32 @led_classdev_unregister(%struct.TYPE_5__* %148)
  %150 = load %struct.led_pwm_data*, %struct.led_pwm_data** %6, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %150, i64 %152
  %154 = getelementptr inbounds %struct.led_pwm_data, %struct.led_pwm_data* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @pwm_free(i32 %155)
  br label %157

157:                                              ; preds = %143
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %8, align 4
  br label %140

160:                                              ; preds = %140
  br label %161

161:                                              ; preds = %160, %134
  %162 = load %struct.led_pwm_data*, %struct.led_pwm_data** %6, align 8
  %163 = call i32 @kfree(%struct.led_pwm_data* %162)
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %161, %130, %30, %16
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.led_pwm_data* @kzalloc(i32, i32) #1

declare dso_local i32 @pwm_request(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @led_classdev_register(%struct.TYPE_6__*, %struct.TYPE_5__*) #1

declare dso_local i32 @pwm_free(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.led_pwm_data*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.led_pwm_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
