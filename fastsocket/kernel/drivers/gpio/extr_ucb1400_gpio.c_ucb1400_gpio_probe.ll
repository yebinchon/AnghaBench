; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_ucb1400_gpio.c_ucb1400_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_ucb1400_gpio.c_ucb1400_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32)*, i64 }
%struct.TYPE_5__ = type { %struct.ucb1400_gpio* }
%struct.ucb1400_gpio = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.platform_device = type { %struct.TYPE_5__ }

@ucbdata = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ucb1400_gpio\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@ucb1400_gpio_dir_in = common dso_local global i32 0, align 4
@ucb1400_gpio_dir_out = common dso_local global i32 0, align 4
@ucb1400_gpio_get = common dso_local global i32 0, align 4
@ucb1400_gpio_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ucb1400_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1400_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ucb1400_gpio*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.ucb1400_gpio*, %struct.ucb1400_gpio** %7, align 8
  store %struct.ucb1400_gpio* %8, %struct.ucb1400_gpio** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ucbdata, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ucbdata, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %84

19:                                               ; preds = %11
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = load %struct.ucb1400_gpio*, %struct.ucb1400_gpio** %3, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.ucb1400_gpio* %21)
  %23 = load %struct.ucb1400_gpio*, %struct.ucb1400_gpio** %3, align 8
  %24 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ucbdata, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ucb1400_gpio*, %struct.ucb1400_gpio** %3, align 8
  %30 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 8
  store i64 %28, i64* %31, align 8
  %32 = load %struct.ucb1400_gpio*, %struct.ucb1400_gpio** %3, align 8
  %33 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 10, i32* %34, align 8
  %35 = load i32, i32* @THIS_MODULE, align 4
  %36 = load %struct.ucb1400_gpio*, %struct.ucb1400_gpio** %3, align 8
  %37 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 7
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @ucb1400_gpio_dir_in, align 4
  %40 = load %struct.ucb1400_gpio*, %struct.ucb1400_gpio** %3, align 8
  %41 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 6
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @ucb1400_gpio_dir_out, align 4
  %44 = load %struct.ucb1400_gpio*, %struct.ucb1400_gpio** %3, align 8
  %45 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* @ucb1400_gpio_get, align 4
  %48 = load %struct.ucb1400_gpio*, %struct.ucb1400_gpio** %3, align 8
  %49 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @ucb1400_gpio_set, align 4
  %52 = load %struct.ucb1400_gpio*, %struct.ucb1400_gpio** %3, align 8
  %53 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 8
  %55 = load %struct.ucb1400_gpio*, %struct.ucb1400_gpio** %3, align 8
  %56 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 1, i32* %57, align 4
  %58 = load %struct.ucb1400_gpio*, %struct.ucb1400_gpio** %3, align 8
  %59 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %58, i32 0, i32 0
  %60 = call i32 @gpiochip_add(%struct.TYPE_6__* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %19
  br label %84

64:                                               ; preds = %19
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ucbdata, align 8
  %66 = icmp ne %struct.TYPE_4__* %65, null
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ucbdata, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %69, align 8
  %71 = icmp ne i32 (%struct.TYPE_5__*, i32)* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ucbdata, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %74, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.ucb1400_gpio*, %struct.ucb1400_gpio** %3, align 8
  %79 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 %75(%struct.TYPE_5__* %77, i32 %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %72, %67, %64
  br label %84

84:                                               ; preds = %83, %63, %16
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ucb1400_gpio*) #1

declare dso_local i32 @gpiochip_add(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
