; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_leds.c_b43_register_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_leds.c_b43_register_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.b43_led = type { i32, i32*, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i8*, i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@b43_led_brightness_set = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"LEDs: Failed to register %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, %struct.b43_led*, i8*, i8*, i32, i32)* @b43_register_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_register_led(%struct.b43_wldev* %0, %struct.b43_led* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.b43_wldev*, align 8
  %9 = alloca %struct.b43_led*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %8, align 8
  store %struct.b43_led* %1, %struct.b43_led** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.b43_led*, %struct.b43_led** %9, align 8
  %16 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @EEXIST, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %82

22:                                               ; preds = %6
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %82

28:                                               ; preds = %22
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %30 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.b43_led*, %struct.b43_led** %9, align 8
  %33 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.b43_led*, %struct.b43_led** %9, align 8
  %36 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.b43_led*, %struct.b43_led** %9, align 8
  %39 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.b43_led*, %struct.b43_led** %9, align 8
  %41 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @strncpy(i32 %42, i8* %43, i32 4)
  %45 = load %struct.b43_led*, %struct.b43_led** %9, align 8
  %46 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %45, i32 0, i32 4
  %47 = call i32 @atomic_set(i32* %46, i32 0)
  %48 = load %struct.b43_led*, %struct.b43_led** %9, align 8
  %49 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.b43_led*, %struct.b43_led** %9, align 8
  %52 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.b43_led*, %struct.b43_led** %9, align 8
  %56 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* @b43_led_brightness_set, align 4
  %59 = load %struct.b43_led*, %struct.b43_led** %9, align 8
  %60 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %63 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.b43_led*, %struct.b43_led** %9, align 8
  %68 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %67, i32 0, i32 2
  %69 = call i32 @led_classdev_register(i32 %66, %struct.TYPE_4__* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %28
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %74 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @b43warn(i32* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %76)
  %78 = load %struct.b43_led*, %struct.b43_led** %9, align 8
  %79 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %7, align 4
  br label %82

81:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %72, %25, %19
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @led_classdev_register(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @b43warn(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
