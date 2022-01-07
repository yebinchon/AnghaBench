; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_disable_radio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_disable_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.rt2x00_dev*, i32)* }

@DEVICE_STATE_ENABLED_RADIO = common dso_local global i32 0, align 4
@CAPABILITY_VCO_RECALIBRATION = common dso_local global i32 0, align 4
@STATE_RADIO_OFF = common dso_local global i32 0, align 4
@STATE_RADIO_IRQ_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00lib_disable_radio(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %3 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %4, i32 0, i32 2
  %6 = call i32 @test_and_clear_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %53

9:                                                ; preds = %1
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %11 = call i32 @rt2x00link_stop_watchdog(%struct.rt2x00_dev* %10)
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %13 = call i32 @rt2x00link_stop_agc(%struct.rt2x00_dev* %12)
  %14 = load i32, i32* @CAPABILITY_VCO_RECALIBRATION, align 4
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 1
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %21 = call i32 @rt2x00link_stop_vcocal(%struct.rt2x00_dev* %20)
  br label %22

22:                                               ; preds = %19, %9
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %24 = call i32 @rt2x00link_stop_tuner(%struct.rt2x00_dev* %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = call i32 @rt2x00queue_stop_queues(%struct.rt2x00_dev* %25)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %28 = call i32 @rt2x00queue_flush_queues(%struct.rt2x00_dev* %27, i32 1)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %30 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (%struct.rt2x00_dev*, i32)*, i32 (%struct.rt2x00_dev*, i32)** %34, align 8
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %37 = load i32, i32* @STATE_RADIO_OFF, align 4
  %38 = call i32 %35(%struct.rt2x00_dev* %36, i32 %37)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %40 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (%struct.rt2x00_dev*, i32)*, i32 (%struct.rt2x00_dev*, i32)** %44, align 8
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %47 = load i32, i32* @STATE_RADIO_IRQ_OFF, align 4
  %48 = call i32 %45(%struct.rt2x00_dev* %46, i32 %47)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %50 = call i32 @rt2x00led_led_activity(%struct.rt2x00_dev* %49, i32 0)
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %52 = call i32 @rt2x00leds_led_radio(%struct.rt2x00_dev* %51, i32 0)
  br label %53

53:                                               ; preds = %22, %8
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @rt2x00link_stop_watchdog(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00link_stop_agc(%struct.rt2x00_dev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00link_stop_vcocal(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00link_stop_tuner(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00queue_stop_queues(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00queue_flush_queues(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00led_led_activity(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00leds_led_radio(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
