; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_led.c_ath5k_register_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_led.c_ath5k_register_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ath5k_led = type { %struct.ath5k_hw*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32 }

@ath5k_led_brightness_set = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not register LED %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ath5k_led*, i8*, i8*)* @ath5k_register_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_register_led(%struct.ath5k_hw* %0, %struct.ath5k_led* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca %struct.ath5k_led*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store %struct.ath5k_led* %1, %struct.ath5k_led** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %11 = load %struct.ath5k_led*, %struct.ath5k_led** %6, align 8
  %12 = getelementptr inbounds %struct.ath5k_led, %struct.ath5k_led* %11, i32 0, i32 0
  store %struct.ath5k_hw* %10, %struct.ath5k_hw** %12, align 8
  %13 = load %struct.ath5k_led*, %struct.ath5k_led** %6, align 8
  %14 = getelementptr inbounds %struct.ath5k_led, %struct.ath5k_led* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strncpy(i32 %15, i8* %16, i32 4)
  %18 = load %struct.ath5k_led*, %struct.ath5k_led** %6, align 8
  %19 = getelementptr inbounds %struct.ath5k_led, %struct.ath5k_led* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ath5k_led*, %struct.ath5k_led** %6, align 8
  %22 = getelementptr inbounds %struct.ath5k_led, %struct.ath5k_led* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.ath5k_led*, %struct.ath5k_led** %6, align 8
  %26 = getelementptr inbounds %struct.ath5k_led, %struct.ath5k_led* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = load i32, i32* @ath5k_led_brightness_set, align 4
  %29 = load %struct.ath5k_led*, %struct.ath5k_led** %6, align 8
  %30 = getelementptr inbounds %struct.ath5k_led, %struct.ath5k_led* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %33 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ath5k_led*, %struct.ath5k_led** %6, align 8
  %36 = getelementptr inbounds %struct.ath5k_led, %struct.ath5k_led* %35, i32 0, i32 1
  %37 = call i32 @led_classdev_register(i32 %34, %struct.TYPE_2__* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %4
  %41 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @ATH5K_WARN(%struct.ath5k_hw* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load %struct.ath5k_led*, %struct.ath5k_led** %6, align 8
  %45 = getelementptr inbounds %struct.ath5k_led, %struct.ath5k_led* %44, i32 0, i32 0
  store %struct.ath5k_hw* null, %struct.ath5k_hw** %45, align 8
  br label %46

46:                                               ; preds = %40, %4
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @led_classdev_register(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @ATH5K_WARN(%struct.ath5k_hw*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
