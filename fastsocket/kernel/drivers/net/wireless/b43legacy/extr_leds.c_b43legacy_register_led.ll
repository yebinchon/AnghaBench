; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_leds.c_b43legacy_register_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_leds.c_b43legacy_register_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.b43legacy_led = type { i32, %struct.b43legacy_wldev*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i8*, i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@b43legacy_led_brightness_set = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"LEDs: Failed to register %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*, %struct.b43legacy_led*, i8*, i8*, i32, i32)* @b43legacy_register_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_register_led(%struct.b43legacy_wldev* %0, %struct.b43legacy_led* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.b43legacy_wldev*, align 8
  %9 = alloca %struct.b43legacy_led*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %8, align 8
  store %struct.b43legacy_led* %1, %struct.b43legacy_led** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %8, align 8
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %13, align 4
  %18 = call i32 @b43legacy_led_turn_off(%struct.b43legacy_wldev* %15, i32 %16, i32 %17)
  %19 = load %struct.b43legacy_led*, %struct.b43legacy_led** %9, align 8
  %20 = getelementptr inbounds %struct.b43legacy_led, %struct.b43legacy_led* %19, i32 0, i32 1
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %20, align 8
  %22 = icmp ne %struct.b43legacy_wldev* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EEXIST, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %81

26:                                               ; preds = %6
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %81

32:                                               ; preds = %26
  %33 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %8, align 8
  %34 = load %struct.b43legacy_led*, %struct.b43legacy_led** %9, align 8
  %35 = getelementptr inbounds %struct.b43legacy_led, %struct.b43legacy_led* %34, i32 0, i32 1
  store %struct.b43legacy_wldev* %33, %struct.b43legacy_wldev** %35, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.b43legacy_led*, %struct.b43legacy_led** %9, align 8
  %38 = getelementptr inbounds %struct.b43legacy_led, %struct.b43legacy_led* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.b43legacy_led*, %struct.b43legacy_led** %9, align 8
  %41 = getelementptr inbounds %struct.b43legacy_led, %struct.b43legacy_led* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.b43legacy_led*, %struct.b43legacy_led** %9, align 8
  %43 = getelementptr inbounds %struct.b43legacy_led, %struct.b43legacy_led* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @strncpy(i32 %44, i8* %45, i32 4)
  %47 = load %struct.b43legacy_led*, %struct.b43legacy_led** %9, align 8
  %48 = getelementptr inbounds %struct.b43legacy_led, %struct.b43legacy_led* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.b43legacy_led*, %struct.b43legacy_led** %9, align 8
  %51 = getelementptr inbounds %struct.b43legacy_led, %struct.b43legacy_led* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.b43legacy_led*, %struct.b43legacy_led** %9, align 8
  %55 = getelementptr inbounds %struct.b43legacy_led, %struct.b43legacy_led* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  %57 = load i32, i32* @b43legacy_led_brightness_set, align 4
  %58 = load %struct.b43legacy_led*, %struct.b43legacy_led** %9, align 8
  %59 = getelementptr inbounds %struct.b43legacy_led, %struct.b43legacy_led* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 8
  %61 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %8, align 8
  %62 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.b43legacy_led*, %struct.b43legacy_led** %9, align 8
  %67 = getelementptr inbounds %struct.b43legacy_led, %struct.b43legacy_led* %66, i32 0, i32 2
  %68 = call i32 @led_classdev_register(i32 %65, %struct.TYPE_4__* %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %32
  %72 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %8, align 8
  %73 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @b43legacywarn(i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %75)
  %77 = load %struct.b43legacy_led*, %struct.b43legacy_led** %9, align 8
  %78 = getelementptr inbounds %struct.b43legacy_led, %struct.b43legacy_led* %77, i32 0, i32 1
  store %struct.b43legacy_wldev* null, %struct.b43legacy_wldev** %78, align 8
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %7, align 4
  br label %81

80:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %71, %29, %23
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @b43legacy_led_turn_off(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @led_classdev_register(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @b43legacywarn(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
