; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00leds.c_rt2x00leds_led_quality.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00leds.c_rt2x00leds_led_quality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i64, %struct.rt2x00_led }
%struct.rt2x00_led = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)* }

@LED_TYPE_QUALITY = common dso_local global i64 0, align 8
@LED_REGISTERED = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00leds_led_quality(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_led*, align 8
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %7, i32 0, i32 1
  store %struct.rt2x00_led* %8, %struct.rt2x00_led** %5, align 8
  %9 = load %struct.rt2x00_led*, %struct.rt2x00_led** %5, align 8
  %10 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LED_TYPE_QUALITY, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.rt2x00_led*, %struct.rt2x00_led** %5, align 8
  %16 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @LED_REGISTERED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %2
  br label %79

22:                                               ; preds = %14
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %24 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp sle i32 %30, 30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %54

33:                                               ; preds = %22
  %34 = load i32, i32* %4, align 4
  %35 = icmp sle i32 %34, 39
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %53

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = icmp sle i32 %38, 49
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 2, i32* %4, align 4
  br label %52

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = icmp sle i32 %42, 53
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 3, i32* %4, align 4
  br label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = icmp sle i32 %46, 63
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 4, i32* %4, align 4
  br label %50

49:                                               ; preds = %45
  store i32 5, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %50, %44
  br label %52

52:                                               ; preds = %51, %40
  br label %53

53:                                               ; preds = %52, %36
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i32, i32* @LED_FULL, align 4
  %56 = sdiv i32 %55, 6
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 %56, %57
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.rt2x00_led*, %struct.rt2x00_led** %5, align 8
  %62 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %60, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %54
  %67 = load %struct.rt2x00_led*, %struct.rt2x00_led** %5, align 8
  %68 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %69, align 8
  %71 = load %struct.rt2x00_led*, %struct.rt2x00_led** %5, align 8
  %72 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %71, i32 0, i32 2
  %73 = load i32, i32* %6, align 4
  %74 = call i32 %70(%struct.TYPE_2__* %72, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.rt2x00_led*, %struct.rt2x00_led** %5, align 8
  %77 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  br label %79

79:                                               ; preds = %21, %66, %54
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
