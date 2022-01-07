; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_clear_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_clear_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }

@BCN_TIME_CFG = common dso_local global i32 0, align 4
@BCN_TIME_CFG_BEACON_GEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_clear_beacon(%struct.queue_entry* %0) #0 {
  %2 = alloca %struct.queue_entry*, align 8
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %2, align 8
  %5 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %6 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  store %struct.rt2x00_dev* %9, %struct.rt2x00_dev** %3, align 8
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = load i32, i32* @BCN_TIME_CFG, align 4
  %12 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %10, i32 %11, i32* %4)
  %13 = load i32, i32* @BCN_TIME_CFG_BEACON_GEN, align 4
  %14 = call i32 @rt2x00_set_field32(i32* %4, i32 %13, i32 0)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = load i32, i32* @BCN_TIME_CFG, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %15, i32 %16, i32 %17)
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %20 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %21 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @HW_BEACON_OFFSET(i32 %22)
  %24 = call i32 @rt2800_clear_beacon_register(%struct.rt2x00_dev* %19, i32 %23)
  %25 = load i32, i32* @BCN_TIME_CFG_BEACON_GEN, align 4
  %26 = call i32 @rt2x00_set_field32(i32* %4, i32 %25, i32 1)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %28 = load i32, i32* @BCN_TIME_CFG, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_clear_beacon_register(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @HW_BEACON_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
