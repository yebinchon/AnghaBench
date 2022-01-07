; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/platforms/iss/extr_network.c_iss_net_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/platforms/iss/extr_network.c_iss_net_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.iss_net_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 (%struct.iss_net_private.0*)*, i32 (%struct.iss_net_private.1*, %struct.sk_buff**)*, i32 (%struct.sk_buff*)* }
%struct.iss_net_private.0 = type opaque
%struct.iss_net_private.1 = type opaque
%struct.sk_buff = type { i64, i32, %struct.net_device* }

@ETH_HEADER_OTHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @iss_net_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_net_rx(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.iss_net_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.iss_net_private* @netdev_priv(%struct.net_device* %7)
  store %struct.iss_net_private* %8, %struct.iss_net_private** %4, align 8
  %9 = load %struct.iss_net_private*, %struct.iss_net_private** %4, align 8
  %10 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64 (%struct.iss_net_private.0*)*, i64 (%struct.iss_net_private.0*)** %11, align 8
  %13 = load %struct.iss_net_private*, %struct.iss_net_private** %4, align 8
  %14 = bitcast %struct.iss_net_private* %13 to %struct.iss_net_private.0*
  %15 = call i64 %12(%struct.iss_net_private.0* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 2
  %23 = load i64, i64* @ETH_HEADER_OTHER, align 8
  %24 = add nsw i64 %22, %23
  %25 = call %struct.sk_buff* @dev_alloc_skb(i64 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %6, align 8
  %26 = icmp eq %struct.sk_buff* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.iss_net_private*, %struct.iss_net_private** %4, align 8
  %29 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  store i32 0, i32* %2, align 4
  br label %87

33:                                               ; preds = %18
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call i32 @skb_reserve(%struct.sk_buff* %34, i32 2)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 2
  store %struct.net_device* %36, %struct.net_device** %38, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i32 @skb_reset_mac_header(%struct.sk_buff* %39)
  %41 = load %struct.iss_net_private*, %struct.iss_net_private** %4, align 8
  %42 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32 (%struct.iss_net_private.1*, %struct.sk_buff**)*, i32 (%struct.iss_net_private.1*, %struct.sk_buff**)** %43, align 8
  %45 = load %struct.iss_net_private*, %struct.iss_net_private** %4, align 8
  %46 = bitcast %struct.iss_net_private* %45 to %struct.iss_net_private.1*
  %47 = call i32 %44(%struct.iss_net_private.1* %46, %struct.sk_buff** %6)
  store i32 %47, i32* %5, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @skb_put(%struct.sk_buff* %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %33
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @skb_trim(%struct.sk_buff* %54, i32 %55)
  %57 = load %struct.iss_net_private*, %struct.iss_net_private** %4, align 8
  %58 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %59, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call i32 %60(%struct.sk_buff* %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.iss_net_private*, %struct.iss_net_private** %4, align 8
  %69 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %67
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 4
  %75 = load %struct.iss_net_private*, %struct.iss_net_private** %4, align 8
  %76 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = call i32 @netif_rx_ni(%struct.sk_buff* %80)
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %87

83:                                               ; preds = %33
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = call i32 @kfree_skb(%struct.sk_buff* %84)
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %53, %27, %17
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.iss_net_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
