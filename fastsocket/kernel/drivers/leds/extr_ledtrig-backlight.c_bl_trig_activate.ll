; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-backlight.c_bl_trig_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-backlight.c_bl_trig_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32, i32, %struct.bl_trig_notifier* }
%struct.bl_trig_notifier = type { %struct.TYPE_2__, i32, i32, %struct.led_classdev* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unable to allocate backlight trigger\0A\00", align 1
@UNBLANK = common dso_local global i32 0, align 4
@fb_notifier_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to register backlight trigger\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*)* @bl_trig_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bl_trig_activate(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bl_trig_notifier*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.bl_trig_notifier* @kzalloc(i32 24, i32 %5)
  store %struct.bl_trig_notifier* %6, %struct.bl_trig_notifier** %4, align 8
  %7 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %4, align 8
  %8 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %9 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %8, i32 0, i32 2
  store %struct.bl_trig_notifier* %7, %struct.bl_trig_notifier** %9, align 8
  %10 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %4, align 8
  %11 = icmp ne %struct.bl_trig_notifier* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %14 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %43

17:                                               ; preds = %1
  %18 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %19 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %4, align 8
  %20 = getelementptr inbounds %struct.bl_trig_notifier, %struct.bl_trig_notifier* %19, i32 0, i32 3
  store %struct.led_classdev* %18, %struct.led_classdev** %20, align 8
  %21 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %22 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %4, align 8
  %25 = getelementptr inbounds %struct.bl_trig_notifier, %struct.bl_trig_notifier* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @UNBLANK, align 4
  %27 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %4, align 8
  %28 = getelementptr inbounds %struct.bl_trig_notifier, %struct.bl_trig_notifier* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @fb_notifier_callback, align 4
  %30 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %4, align 8
  %31 = getelementptr inbounds %struct.bl_trig_notifier, %struct.bl_trig_notifier* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %4, align 8
  %34 = getelementptr inbounds %struct.bl_trig_notifier, %struct.bl_trig_notifier* %33, i32 0, i32 0
  %35 = call i32 @fb_register_client(%struct.TYPE_2__* %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %17
  %39 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %40 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %12, %38, %17
  ret void
}

declare dso_local %struct.bl_trig_notifier* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @fb_register_client(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
