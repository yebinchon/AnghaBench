; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atmel_private = type { i64, i64, i32 }
%union.iwreq_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@STATION_STATE_READY = common dso_local global i64 0, align 8
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4
@STATION_STATE_DOWN = common dso_local global i32 0, align 4
@BUS_TYPE_PCCARD = common dso_local global i64 0, align 8
@GCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @atmel_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.atmel_private*, align 8
  %4 = alloca %union.iwreq_data, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %5)
  store %struct.atmel_private* %6, %struct.atmel_private** %3, align 8
  %7 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @STATION_STATE_READY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = bitcast %union.iwreq_data* %4 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = bitcast %union.iwreq_data* %4 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @ARPHRD_ETHER, align 4
  %18 = bitcast %union.iwreq_data* %4 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = bitcast %union.iwreq_data* %4 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = call i32 @memset(i32 %22, i32 0, i32 %23)
  %25 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %26 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SIOCGIWAP, align 4
  %29 = call i32 @wireless_send_event(i32 %27, i32 %28, %union.iwreq_data* %4, i32* null)
  br label %30

30:                                               ; preds = %12, %1
  %31 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %32 = load i32, i32* @STATION_STATE_DOWN, align 4
  %33 = call i32 @atmel_enter_state(%struct.atmel_private* %31, i32 %32)
  %34 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %35 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BUS_TYPE_PCCARD, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = load i32, i32* @GCR, align 4
  %42 = call i32 @atmel_write16(%struct.net_device* %40, i32 %41, i32 96)
  br label %43

43:                                               ; preds = %39, %30
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load i32, i32* @GCR, align 4
  %46 = call i32 @atmel_write16(%struct.net_device* %44, i32 %45, i32 64)
  ret i32 0
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @wireless_send_event(i32, i32, %union.iwreq_data*, i32*) #1

declare dso_local i32 @atmel_enter_state(%struct.atmel_private*, i32) #1

declare dso_local i32 @atmel_write16(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
