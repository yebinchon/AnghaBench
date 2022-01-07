; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_timed_gpio.c_timed_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_timed_gpio.c_timed_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.timed_gpio_platform_data* }
%struct.timed_gpio_platform_data = type { i32, %struct.timed_gpio* }
%struct.timed_gpio = type { i32, i32, i32, i32 }
%struct.timed_gpio_data = type { i32, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@gpio_timer_func = common dso_local global i32 0, align 4
@gpio_get_time = common dso_local global i32 0, align 4
@gpio_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @timed_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timed_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.timed_gpio_platform_data*, align 8
  %5 = alloca %struct.timed_gpio*, align 8
  %6 = alloca %struct.timed_gpio_data*, align 8
  %7 = alloca %struct.timed_gpio_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.timed_gpio_platform_data*, %struct.timed_gpio_platform_data** %13, align 8
  store %struct.timed_gpio_platform_data* %14, %struct.timed_gpio_platform_data** %4, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.timed_gpio_platform_data*, %struct.timed_gpio_platform_data** %4, align 8
  %16 = icmp ne %struct.timed_gpio_platform_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %132

20:                                               ; preds = %1
  %21 = load %struct.timed_gpio_platform_data*, %struct.timed_gpio_platform_data** %4, align 8
  %22 = getelementptr inbounds %struct.timed_gpio_platform_data, %struct.timed_gpio_platform_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 32, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.timed_gpio_data* @kzalloc(i32 %26, i32 %27)
  store %struct.timed_gpio_data* %28, %struct.timed_gpio_data** %6, align 8
  %29 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %6, align 8
  %30 = icmp ne %struct.timed_gpio_data* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %132

34:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %125, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.timed_gpio_platform_data*, %struct.timed_gpio_platform_data** %4, align 8
  %38 = getelementptr inbounds %struct.timed_gpio_platform_data, %struct.timed_gpio_platform_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %128

41:                                               ; preds = %35
  %42 = load %struct.timed_gpio_platform_data*, %struct.timed_gpio_platform_data** %4, align 8
  %43 = getelementptr inbounds %struct.timed_gpio_platform_data, %struct.timed_gpio_platform_data* %42, i32 0, i32 1
  %44 = load %struct.timed_gpio*, %struct.timed_gpio** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.timed_gpio, %struct.timed_gpio* %44, i64 %46
  store %struct.timed_gpio* %47, %struct.timed_gpio** %5, align 8
  %48 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %48, i64 %50
  store %struct.timed_gpio_data* %51, %struct.timed_gpio_data** %7, align 8
  %52 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %7, align 8
  %53 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %52, i32 0, i32 5
  %54 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %55 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %56 = call i32 @hrtimer_init(%struct.TYPE_7__* %53, i32 %54, i32 %55)
  %57 = load i32, i32* @gpio_timer_func, align 4
  %58 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %7, align 8
  %59 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %7, align 8
  %62 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %61, i32 0, i32 4
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load %struct.timed_gpio*, %struct.timed_gpio** %5, align 8
  %65 = getelementptr inbounds %struct.timed_gpio, %struct.timed_gpio* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %7, align 8
  %68 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @gpio_get_time, align 4
  %71 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %7, align 8
  %72 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @gpio_enable, align 4
  %75 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %7, align 8
  %76 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %7, align 8
  %79 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %78, i32 0, i32 3
  %80 = call i32 @timed_output_dev_register(%struct.TYPE_6__* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %95, %83
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %89, i64 %91
  %93 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %92, i32 0, i32 3
  %94 = call i32 @timed_output_dev_unregister(%struct.TYPE_6__* %93)
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %84

98:                                               ; preds = %84
  %99 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %6, align 8
  %100 = call i32 @kfree(%struct.timed_gpio_data* %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %2, align 4
  br label %132

102:                                              ; preds = %41
  %103 = load %struct.timed_gpio*, %struct.timed_gpio** %5, align 8
  %104 = getelementptr inbounds %struct.timed_gpio, %struct.timed_gpio* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %7, align 8
  %107 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.timed_gpio*, %struct.timed_gpio** %5, align 8
  %109 = getelementptr inbounds %struct.timed_gpio, %struct.timed_gpio* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %7, align 8
  %112 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load %struct.timed_gpio*, %struct.timed_gpio** %5, align 8
  %114 = getelementptr inbounds %struct.timed_gpio, %struct.timed_gpio* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %7, align 8
  %117 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %7, align 8
  %119 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %7, align 8
  %122 = getelementptr inbounds %struct.timed_gpio_data, %struct.timed_gpio_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @gpio_direction_output(i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %102
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %35

128:                                              ; preds = %35
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = load %struct.timed_gpio_data*, %struct.timed_gpio_data** %6, align 8
  %131 = call i32 @platform_set_drvdata(%struct.platform_device* %129, %struct.timed_gpio_data* %130)
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %128, %98, %31, %17
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.timed_gpio_data* @kzalloc(i32, i32) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timed_output_dev_register(%struct.TYPE_6__*) #1

declare dso_local i32 @timed_output_dev_unregister(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.timed_gpio_data*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.timed_gpio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
