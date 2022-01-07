; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_wait_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { i64 (%struct.mtd_info.0*)* }
%struct.mtd_info.0 = type opaque

@jiffies = common dso_local global i32 0, align 4
@nand_led_trigger = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nand_wait_ready(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %5 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %6 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 0
  %7 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  store %struct.nand_chip* %7, %struct.nand_chip** %3, align 8
  %8 = load i32, i32* @jiffies, align 4
  %9 = add nsw i32 %8, 2
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %4, align 8
  %11 = load i32, i32* @nand_led_trigger, align 4
  %12 = load i32, i32* @LED_FULL, align 4
  %13 = call i32 @led_trigger_event(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %25, %1
  %15 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 0
  %17 = load i64 (%struct.mtd_info.0*)*, i64 (%struct.mtd_info.0*)** %16, align 8
  %18 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %19 = bitcast %struct.mtd_info* %18 to %struct.mtd_info.0*
  %20 = call i64 %17(%struct.mtd_info.0* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %30

23:                                               ; preds = %14
  %24 = call i32 (...) @touch_softlockup_watchdog()
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* @jiffies, align 4
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @time_before(i32 %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %14, label %30

30:                                               ; preds = %25, %22
  %31 = load i32, i32* @nand_led_trigger, align 4
  %32 = load i32, i32* @LED_OFF, align 4
  %33 = call i32 @led_trigger_event(i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @led_trigger_event(i32, i32) #1

declare dso_local i32 @touch_softlockup_watchdog(...) #1

declare dso_local i64 @time_before(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
