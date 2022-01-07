; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_vnet_rx_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_vnet_rx_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ldc_trans_cookie = type { i32 }
%struct.sk_buff = type { i32, i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VNET_PACKET_SKIP = common dso_local global i32 0, align 4
@LDC_COPY_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnet_port*, i32, %struct.ldc_trans_cookie*, i32)* @vnet_rx_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnet_rx_one(%struct.vnet_port* %0, i32 %1, %struct.ldc_trans_cookie* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnet_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ldc_trans_cookie*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.vnet_port* %0, %struct.vnet_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ldc_trans_cookie* %2, %struct.ldc_trans_cookie** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %15 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %10, align 8
  %19 = load i32, i32* @EMSGSIZE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ETH_ZLEN, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ETH_FRAME_LEN, align 4
  %27 = icmp ugt i32 %25, %26
  br label %28

28:                                               ; preds = %24, %4
  %29 = phi i1 [ true, %4 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.net_device*, %struct.net_device** %10, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %117

39:                                               ; preds = %28
  %40 = load %struct.net_device*, %struct.net_device** %10, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.sk_buff* @alloc_and_align_skb(%struct.net_device* %40, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %12, align 8
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %13, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load %struct.net_device*, %struct.net_device** %10, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %117

57:                                               ; preds = %39
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @VNET_PACKET_SKIP, align 4
  %60 = add i32 %58, %59
  %61 = add i32 %60, 7
  %62 = and i32 %61, -8
  store i32 %62, i32* %11, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @skb_put(%struct.sk_buff* %63, i32 %64)
  %66 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %67 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @LDC_COPY_IN, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.ldc_trans_cookie*, %struct.ldc_trans_cookie** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @ldc_copy(i32 %69, i32 %70, i32 %73, i32 %74, i32 0, %struct.ldc_trans_cookie* %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %57
  %84 = load %struct.net_device*, %struct.net_device** %10, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %114

89:                                               ; preds = %57
  %90 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %91 = load i32, i32* @VNET_PACKET_SKIP, align 4
  %92 = call i32 @skb_pull(%struct.sk_buff* %90, i32 %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @skb_trim(%struct.sk_buff* %93, i32 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %97 = load %struct.net_device*, %struct.net_device** %10, align 8
  %98 = call i32 @eth_type_trans(%struct.sk_buff* %96, %struct.net_device* %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.net_device*, %struct.net_device** %10, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.net_device*, %struct.net_device** %10, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add i32 %110, %106
  store i32 %111, i32* %109, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %113 = call i32 @netif_rx(%struct.sk_buff* %112)
  store i32 0, i32* %5, align 4
  br label %124

114:                                              ; preds = %83
  %115 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %116 = call i32 @kfree_skb(%struct.sk_buff* %115)
  br label %117

117:                                              ; preds = %114, %51, %33
  %118 = load %struct.net_device*, %struct.net_device** %10, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %117, %89
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @alloc_and_align_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ldc_copy(i32, i32, i32, i32, i32, %struct.ldc_trans_cookie*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
