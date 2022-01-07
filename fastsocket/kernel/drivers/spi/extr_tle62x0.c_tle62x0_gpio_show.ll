; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_tle62x0.c_tle62x0_gpio_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_tle62x0.c_tle62x0_gpio_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tle62x0_state = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @tle62x0_gpio_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tle62x0_gpio_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tle62x0_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.tle62x0_state* @dev_get_drvdata(%struct.device* %10)
  store %struct.tle62x0_state* %11, %struct.tle62x0_state** %7, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %13 = call i32 @to_gpio_num(%struct.device_attribute* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.tle62x0_state*, %struct.tle62x0_state** %7, align 8
  %15 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.tle62x0_state*, %struct.tle62x0_state** %7, align 8
  %18 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %19, %20
  %22 = and i32 %21, 1
  store i32 %22, i32* %9, align 4
  %23 = load %struct.tle62x0_state*, %struct.tle62x0_state** %7, align 8
  %24 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %28)
  ret i32 %29
}

declare dso_local %struct.tle62x0_state* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @to_gpio_num(%struct.device_attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
