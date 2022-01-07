; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_pass_skb_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_pass_skb_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_descr = type { %struct.sk_buff*, %struct.spider_net_hw_descr* }
%struct.sk_buff = type { i64, i8*, i32 }
%struct.spider_net_hw_descr = type { i32, i32, i32 }
%struct.spider_net_card = type { %struct.TYPE_3__, %struct.net_device* }
%struct.TYPE_3__ = type { i64 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@SPIDER_NET_DATA_STATUS_CKSUM_MASK = common dso_local global i32 0, align 4
@SPIDER_NET_DATA_ERR_CKSUM_MASK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i8* null, align 8
@CHECKSUM_NONE = common dso_local global i8* null, align 8
@SPIDER_NET_VLAN_PACKET = common dso_local global i32 0, align 4
@SPIDER_MISALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spider_net_descr*, %struct.spider_net_card*)* @spider_net_pass_skb_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spider_net_pass_skb_up(%struct.spider_net_descr* %0, %struct.spider_net_card* %1) #0 {
  %3 = alloca %struct.spider_net_descr*, align 8
  %4 = alloca %struct.spider_net_card*, align 8
  %5 = alloca %struct.spider_net_hw_descr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spider_net_descr* %0, %struct.spider_net_descr** %3, align 8
  store %struct.spider_net_card* %1, %struct.spider_net_card** %4, align 8
  %10 = load %struct.spider_net_descr*, %struct.spider_net_descr** %3, align 8
  %11 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %10, i32 0, i32 1
  %12 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %11, align 8
  store %struct.spider_net_hw_descr* %12, %struct.spider_net_hw_descr** %5, align 8
  %13 = load %struct.spider_net_descr*, %struct.spider_net_descr** %3, align 8
  %14 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %13, i32 0, i32 0
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %17 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %16, i32 0, i32 1
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %7, align 8
  %19 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %5, align 8
  %20 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %5, align 8
  %23 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %5, align 8
  %27 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @skb_put(%struct.sk_buff* %25, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i32 @skb_pull(%struct.sk_buff* %30, i32 2)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = call i32 @eth_type_trans(%struct.sk_buff* %32, %struct.net_device* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %38 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SPIDER_NET_DATA_STATUS_CKSUM_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @SPIDER_NET_DATA_STATUS_CKSUM_MASK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SPIDER_NET_DATA_ERR_CKSUM_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  br label %61

57:                                               ; preds = %48, %42
  %58 = load i8*, i8** @CHECKSUM_NONE, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %57, %53
  br label %66

62:                                               ; preds = %2
  %63 = load i8*, i8** @CHECKSUM_NONE, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %62, %61
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @SPIDER_NET_VLAN_PACKET, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %66
  %73 = load %struct.net_device*, %struct.net_device** %7, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.net_device*, %struct.net_device** %7, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %80
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = call i32 @netif_receive_skb(%struct.sk_buff* %88)
  ret void
}

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
