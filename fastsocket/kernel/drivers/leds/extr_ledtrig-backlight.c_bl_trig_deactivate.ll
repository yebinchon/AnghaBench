; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-backlight.c_bl_trig_deactivate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-backlight.c_bl_trig_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i64 }
%struct.bl_trig_notifier = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*)* @bl_trig_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bl_trig_deactivate(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  %3 = alloca %struct.bl_trig_notifier*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  %4 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %5 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.bl_trig_notifier*
  store %struct.bl_trig_notifier* %7, %struct.bl_trig_notifier** %3, align 8
  %8 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %3, align 8
  %9 = icmp ne %struct.bl_trig_notifier* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %3, align 8
  %12 = getelementptr inbounds %struct.bl_trig_notifier, %struct.bl_trig_notifier* %11, i32 0, i32 0
  %13 = call i32 @fb_unregister_client(i32* %12)
  %14 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %3, align 8
  %15 = call i32 @kfree(%struct.bl_trig_notifier* %14)
  br label %16

16:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @fb_unregister_client(i32*) #1

declare dso_local i32 @kfree(%struct.bl_trig_notifier*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
