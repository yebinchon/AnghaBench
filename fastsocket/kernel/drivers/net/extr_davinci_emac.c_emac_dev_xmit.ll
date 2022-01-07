; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_dev_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_dev_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.emac_netbufobj = type { i64, i8*, i32 }
%struct.emac_netpktobj = type { i32, i8*, i32, %struct.emac_netbufobj* }
%struct.emac_priv = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"DaVinci EMAC: No link to transmit\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@EMAC_DEF_TX_CH = common dso_local global i32 0, align 4
@EMAC_ERR_TX_OUT_OF_BD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"DaVinci EMAC: xmit() fatal err. Out of TX BD's\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @emac_dev_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_dev_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.emac_netbufobj, align 8
  %9 = alloca %struct.emac_netpktobj, align 8
  %10 = alloca %struct.emac_priv*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.emac_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.emac_priv* %14, %struct.emac_priv** %10, align 8
  %15 = load %struct.emac_priv*, %struct.emac_priv** %10, align 8
  %16 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load %struct.emac_priv*, %struct.emac_priv** %10, align 8
  %25 = call i64 @netif_msg_tx_err(%struct.emac_priv* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = call i64 (...) @net_ratelimit()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27, %23
  %34 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %34, i32* %3, align 4
  br label %102

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.emac_netpktobj, %struct.emac_netpktobj* %9, i32 0, i32 3
  store %struct.emac_netbufobj* %8, %struct.emac_netbufobj** %36, align 8
  %37 = getelementptr inbounds %struct.emac_netpktobj, %struct.emac_netpktobj* %9, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.emac_netpktobj, %struct.emac_netpktobj* %9, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = bitcast %struct.sk_buff* %42 to i8*
  %44 = getelementptr inbounds %struct.emac_netpktobj, %struct.emac_netpktobj* %9, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.emac_netbufobj, %struct.emac_netbufobj* %8, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = bitcast %struct.sk_buff* %49 to i8*
  %51 = getelementptr inbounds %struct.emac_netbufobj, %struct.emac_netbufobj* %8, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.emac_netbufobj, %struct.emac_netbufobj* %8, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @EMAC_CACHE_WRITEBACK(i64 %58, i32 %61)
  %63 = load i32, i32* @jiffies, align 4
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.emac_priv*, %struct.emac_priv** %10, align 8
  %67 = load i32, i32* @EMAC_DEF_TX_CH, align 4
  %68 = call i32 @emac_send(%struct.emac_priv* %66, %struct.emac_netpktobj* %9, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %35
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @EMAC_ERR_TX_OUT_OF_BD, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load %struct.emac_priv*, %struct.emac_priv** %10, align 8
  %80 = call i64 @netif_msg_tx_err(%struct.emac_priv* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = call i64 (...) @net_ratelimit()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %82, %78
  %89 = load %struct.emac_priv*, %struct.emac_priv** %10, align 8
  %90 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @netif_stop_queue(i32 %91)
  br label %93

93:                                               ; preds = %88, %74
  %94 = load %struct.emac_priv*, %struct.emac_priv** %10, align 8
  %95 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %99, i32* %3, align 4
  br label %102

100:                                              ; preds = %35
  %101 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %93, %33
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_msg_tx_err(%struct.emac_priv*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @EMAC_CACHE_WRITEBACK(i64, i32) #1

declare dso_local i32 @emac_send(%struct.emac_priv*, %struct.emac_netpktobj*, i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
