; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_led-class.c_led_blink_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_led-class.c_led_blink_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32, i32, i32 (%struct.led_classdev*, i64*, i64*)* }
%struct.led_timer = type { i64, i64, i32, i32 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_blink_set(%struct.led_classdev* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.led_timer*, align 8
  %8 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %10 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %9, i32 0, i32 2
  %11 = load i32 (%struct.led_classdev*, i64*, i64*)*, i32 (%struct.led_classdev*, i64*, i64*)** %10, align 8
  %12 = icmp ne i32 (%struct.led_classdev*, i64*, i64*)* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %15 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %14, i32 0, i32 2
  %16 = load i32 (%struct.led_classdev*, i64*, i64*)*, i32 (%struct.led_classdev*, i64*, i64*)** %15, align 8
  %17 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = call i32 %16(%struct.led_classdev* %17, i64* %18, i64* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %113

23:                                               ; preds = %13, %3
  %24 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %25 = call %struct.led_timer* @led_get_timer(%struct.led_classdev* %24)
  store %struct.led_timer* %25, %struct.led_timer** %7, align 8
  %26 = load %struct.led_timer*, %struct.led_timer** %7, align 8
  %27 = icmp ne %struct.led_timer* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %30 = call %struct.led_timer* @led_new_timer(%struct.led_classdev* %29)
  store %struct.led_timer* %30, %struct.led_timer** %7, align 8
  %31 = load %struct.led_timer*, %struct.led_timer** %7, align 8
  %32 = icmp ne %struct.led_timer* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %113

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i64*, i64** %5, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i64*, i64** %6, align 8
  store i64 500, i64* %44, align 8
  %45 = load i64*, i64** %5, align 8
  store i64 500, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %39, %35
  %47 = load %struct.led_timer*, %struct.led_timer** %7, align 8
  %48 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %5, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.led_timer*, %struct.led_timer** %7, align 8
  %55 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %6, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %113

61:                                               ; preds = %53, %46
  %62 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %63 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.led_timer*, %struct.led_timer** %7, align 8
  %70 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %61
  %72 = load %struct.led_timer*, %struct.led_timer** %7, align 8
  %73 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %78 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.led_timer*, %struct.led_timer** %7, align 8
  %81 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.led_timer*, %struct.led_timer** %7, align 8
  %84 = call i32 @led_stop_software_blink(%struct.led_timer* %83)
  %85 = load i64*, i64** %5, align 8
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.led_timer*, %struct.led_timer** %7, align 8
  %88 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i64*, i64** %6, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.led_timer*, %struct.led_timer** %7, align 8
  %92 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load i64*, i64** %5, align 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %82
  br label %113

97:                                               ; preds = %82
  %98 = load i64*, i64** %6, align 8
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %103 = load %struct.led_timer*, %struct.led_timer** %7, align 8
  %104 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @__led_set_brightness(%struct.led_classdev* %102, i32 %105)
  br label %113

107:                                              ; preds = %97
  %108 = load %struct.led_timer*, %struct.led_timer** %7, align 8
  %109 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %108, i32 0, i32 3
  %110 = load i64, i64* @jiffies, align 8
  %111 = add nsw i64 %110, 1
  %112 = call i32 @mod_timer(i32* %109, i64 %111)
  br label %113

113:                                              ; preds = %107, %101, %96, %60, %33, %22
  ret void
}

declare dso_local %struct.led_timer* @led_get_timer(%struct.led_classdev*) #1

declare dso_local %struct.led_timer* @led_new_timer(%struct.led_classdev*) #1

declare dso_local i32 @led_stop_software_blink(%struct.led_timer*) #1

declare dso_local i32 @__led_set_brightness(%struct.led_classdev*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
