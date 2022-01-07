; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_cm_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_cm_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }

@cm_packets_received = common dso_local global i32 0, align 4
@g_cm_core = common dso_local global %struct.TYPE_5__* null, align 8
@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Unable to process packet for CM, cm is not setup properly.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nes_cm_recv(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @cm_packets_received, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @cm_packets_received, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_cm_core, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_cm_core, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_cm_core, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_5__*, i32, %struct.sk_buff*)*, i32 (%struct.TYPE_5__*, i32, %struct.sk_buff*)** %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_cm_core, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i32 @netdev_priv(%struct.net_device* %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call i32 %20(%struct.TYPE_5__* %21, i32 %23, %struct.sk_buff* %24)
  store i32 %25, i32* %5, align 4
  br label %29

26:                                               ; preds = %10, %2
  %27 = load i32, i32* @NES_DBG_CM, align 4
  %28 = call i32 @nes_debug(i32 %27, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %15
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nes_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
