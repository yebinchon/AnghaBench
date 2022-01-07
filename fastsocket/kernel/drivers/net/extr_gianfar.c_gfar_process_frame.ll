; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_gfar_process_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_gfar_process_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.gfar_private = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.rxfcb = type { i32, i32 }

@RXFCB_VLN = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, i32)* @gfar_process_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_process_frame(%struct.net_device* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfar_private*, align 8
  %8 = alloca %struct.rxfcb*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %10)
  store %struct.gfar_private* %11, %struct.gfar_private** %7, align 8
  store %struct.rxfcb* null, %struct.rxfcb** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.rxfcb*
  store %struct.rxfcb* %15, %struct.rxfcb** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @skb_pull(%struct.sk_buff* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %3
  %23 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %24 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load %struct.rxfcb*, %struct.rxfcb** %8, align 8
  %30 = call i32 @gfar_rx_checksum(%struct.sk_buff* %28, %struct.rxfcb* %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 @eth_type_trans(%struct.sk_buff* %32, %struct.net_device* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %38 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load %struct.rxfcb*, %struct.rxfcb** %8, align 8
  %43 = getelementptr inbounds %struct.rxfcb, %struct.rxfcb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RXFCB_VLN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %41, %31
  %49 = phi i1 [ false, %31 ], [ %47, %41 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %56 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.rxfcb*, %struct.rxfcb** %8, align 8
  %59 = getelementptr inbounds %struct.rxfcb, %struct.rxfcb* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @vlan_hwaccel_receive_skb(%struct.sk_buff* %54, i64 %57, i32 %60)
  store i32 %61, i32* %9, align 4
  br label %65

62:                                               ; preds = %48
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @netif_receive_skb(%struct.sk_buff* %63)
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %62, %53
  %66 = load i32, i32* @NET_RX_DROP, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %71 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %65
  ret i32 0
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @gfar_rx_checksum(%struct.sk_buff*, %struct.rxfcb*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlan_hwaccel_receive_skb(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
