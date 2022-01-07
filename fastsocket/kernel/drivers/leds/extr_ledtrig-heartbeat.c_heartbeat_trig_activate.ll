; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-heartbeat.c_heartbeat_trig_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-heartbeat.c_heartbeat_trig_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.heartbeat_trig_data* }
%struct.heartbeat_trig_data = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*)* @heartbeat_trig_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heartbeat_trig_activate(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  %3 = alloca %struct.heartbeat_trig_data*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.heartbeat_trig_data* @kzalloc(i32 16, i32 %4)
  store %struct.heartbeat_trig_data* %5, %struct.heartbeat_trig_data** %3, align 8
  %6 = load %struct.heartbeat_trig_data*, %struct.heartbeat_trig_data** %3, align 8
  %7 = icmp ne %struct.heartbeat_trig_data* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.heartbeat_trig_data*, %struct.heartbeat_trig_data** %3, align 8
  %11 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %12 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %11, i32 0, i32 0
  store %struct.heartbeat_trig_data* %10, %struct.heartbeat_trig_data** %12, align 8
  %13 = load %struct.heartbeat_trig_data*, %struct.heartbeat_trig_data** %3, align 8
  %14 = getelementptr inbounds %struct.heartbeat_trig_data, %struct.heartbeat_trig_data* %13, i32 0, i32 0
  %15 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %16 = ptrtoint %struct.led_classdev* %15 to i64
  %17 = call i32 @setup_timer(%struct.TYPE_2__* %14, i32 (i32)* @led_heartbeat_function, i64 %16)
  %18 = load %struct.heartbeat_trig_data*, %struct.heartbeat_trig_data** %3, align 8
  %19 = getelementptr inbounds %struct.heartbeat_trig_data, %struct.heartbeat_trig_data* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.heartbeat_trig_data*, %struct.heartbeat_trig_data** %3, align 8
  %21 = getelementptr inbounds %struct.heartbeat_trig_data, %struct.heartbeat_trig_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @led_heartbeat_function(i32 %23)
  br label %25

25:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.heartbeat_trig_data* @kzalloc(i32, i32) #1

declare dso_local i32 @setup_timer(%struct.TYPE_2__*, i32 (i32)*, i64) #1

declare dso_local i32 @led_heartbeat_function(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
