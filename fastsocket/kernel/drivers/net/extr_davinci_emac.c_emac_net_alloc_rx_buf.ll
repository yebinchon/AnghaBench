; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_net_alloc_rx_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_net_alloc_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_priv = type { %struct.net_device* }
%struct.net_device = type { %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i8*, %struct.net_device* }

@.str = private unnamed_addr constant [34 x i8] c"DaVinci EMAC: failed to alloc skb\00", align 1
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.emac_priv*, i32, i8**, i32)* @emac_net_alloc_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @emac_net_alloc_rx_buf(%struct.emac_priv* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.emac_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.emac_priv* %0, %struct.emac_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %14 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %10, align 8
  %16 = load %struct.net_device*, %struct.net_device** %10, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.sk_buff* @dev_alloc_skb(i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %12, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %21 = icmp eq %struct.sk_buff* null, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %4
  %26 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %27 = call i64 @netif_msg_rx_err(%struct.emac_priv* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = call i64 (...) @net_ratelimit()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.device*, %struct.device** %11, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29, %25
  store i8* null, i8** %5, align 8
  br label %55

36:                                               ; preds = %4
  %37 = load %struct.net_device*, %struct.net_device** %10, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  store %struct.net_device* %37, %struct.net_device** %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %41 = load i32, i32* @NET_IP_ALIGN, align 4
  %42 = call i32 @skb_reserve(%struct.sk_buff* %40, i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %44 = bitcast %struct.sk_buff* %43 to i8*
  %45 = load i8**, i8*** %8, align 8
  store i8* %44, i8** %45, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @EMAC_CACHE_WRITEBACK_INVALIDATE(i64 %49, i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %36, %35
  %56 = load i8*, i8** %5, align 8
  ret i8* %56
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_msg_rx_err(%struct.emac_priv*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @EMAC_CACHE_WRITEBACK_INVALIDATE(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
