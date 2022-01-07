; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_Close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32* }

@TLAN_RECORD = common dso_local global i32 0, align 4
@TLAN_HC_AD_RST = common dso_local global i32 0, align 4
@TLAN_HOST_CMD = common dso_local global i64 0, align 8
@TLAN_DEBUG_GNRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Device %s closed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @TLan_Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TLan_Close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.TYPE_4__* @netdev_priv(%struct.net_device* %4)
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = load i32, i32* @TLAN_RECORD, align 4
  %12 = call i32 @TLan_ReadAndClearStats(%struct.net_device* %10, i32 %11)
  %13 = load i32, i32* @TLAN_HC_AD_RST, align 4
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TLAN_HOST_CMD, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @outl(i32 %13, i64 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @del_timer_sync(%struct.TYPE_5__* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %1
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @free_irq(i32 %35, %struct.net_device* %36)
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = call i32 @TLan_FreeLists(%struct.net_device* %38)
  %40 = load i32, i32* @TLAN_DEBUG_GNRL, align 4
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @TLAN_DBG(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %43)
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @TLan_ReadAndClearStats(%struct.net_device*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_5__*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @TLan_FreeLists(%struct.net_device*) #1

declare dso_local i32 @TLAN_DBG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
