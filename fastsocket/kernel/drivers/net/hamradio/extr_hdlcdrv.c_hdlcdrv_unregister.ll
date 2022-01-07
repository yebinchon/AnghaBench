; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_hdlcdrv.c_hdlcdrv_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_hdlcdrv.c_hdlcdrv_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hdlcdrv_state = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*)* }

@HDLCDRV_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdlcdrv_unregister(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hdlcdrv_state*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.hdlcdrv_state* @netdev_priv(%struct.net_device* %4)
  store %struct.hdlcdrv_state* %5, %struct.hdlcdrv_state** %3, align 8
  %6 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %7 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HDLCDRV_MAGIC, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %14 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %19 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %21, align 8
  %23 = icmp ne i32 (%struct.net_device*)* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %26 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %28, align 8
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 %29(%struct.net_device* %30)
  br label %32

32:                                               ; preds = %24, %17, %1
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @unregister_netdev(%struct.net_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = call i32 @free_netdev(%struct.net_device* %35)
  ret void
}

declare dso_local %struct.hdlcdrv_state* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
