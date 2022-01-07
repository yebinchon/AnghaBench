; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_set_pbd_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_set_pbd_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.eth_tx_parse_bd_e1x = type { i32, i32, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_TX_PARSE_BD_E1X_LLC_SNAP_EN_SHIFT = common dso_local global i32 0, align 4
@XMIT_CSUM_TCP = common dso_local global i32 0, align 4
@NETIF_MSG_TX_QUEUED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"hlen %d  fix %d  csum before fix %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"csum after fix %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.sk_buff*, %struct.eth_tx_parse_bd_e1x*, i32)* @bnx2x_set_pbd_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_pbd_csum(%struct.bnx2x* %0, %struct.sk_buff* %1, %struct.eth_tx_parse_bd_e1x* %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.eth_tx_parse_bd_e1x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.eth_tx_parse_bd_e1x* %2, %struct.eth_tx_parse_bd_e1x** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call i32 @skb_network_header(%struct.sk_buff* %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %12, %15
  %17 = ashr i32 %16, 1
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @ETH_P_8021Q, align 4
  %23 = call i64 @cpu_to_be16(i32 %22)
  %24 = icmp eq i64 %21, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @ETH_TX_PARSE_BD_E1X_LLC_SNAP_EN_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %18, %27
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.eth_tx_parse_bd_e1x*, %struct.eth_tx_parse_bd_e1x** %7, align 8
  %31 = getelementptr inbounds %struct.eth_tx_parse_bd_e1x, %struct.eth_tx_parse_bd_e1x* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @skb_transport_header(%struct.sk_buff* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call i32 @skb_network_header(%struct.sk_buff* %34)
  %36 = sub nsw i32 %33, %35
  %37 = ashr i32 %36, 1
  %38 = load %struct.eth_tx_parse_bd_e1x*, %struct.eth_tx_parse_bd_e1x** %7, align 8
  %39 = getelementptr inbounds %struct.eth_tx_parse_bd_e1x, %struct.eth_tx_parse_bd_e1x* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.eth_tx_parse_bd_e1x*, %struct.eth_tx_parse_bd_e1x** %7, align 8
  %41 = getelementptr inbounds %struct.eth_tx_parse_bd_e1x, %struct.eth_tx_parse_bd_e1x* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @XMIT_CSUM_TCP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = call i32 @tcp_hdrlen(%struct.sk_buff* %50)
  %52 = sdiv i32 %51, 2
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %60

55:                                               ; preds = %4
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, 2
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %55, %49
  %61 = load i32, i32* %9, align 4
  %62 = call i8* @cpu_to_le16(i32 %61)
  %63 = load %struct.eth_tx_parse_bd_e1x*, %struct.eth_tx_parse_bd_e1x** %7, align 8
  %64 = getelementptr inbounds %struct.eth_tx_parse_bd_e1x, %struct.eth_tx_parse_bd_e1x* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = mul nsw i32 %65, 2
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @XMIT_CSUM_TCP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %60
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = call %struct.TYPE_2__* @tcp_hdr(%struct.sk_buff* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bswab16(i32 %75)
  %77 = load %struct.eth_tx_parse_bd_e1x*, %struct.eth_tx_parse_bd_e1x** %7, align 8
  %78 = getelementptr inbounds %struct.eth_tx_parse_bd_e1x, %struct.eth_tx_parse_bd_e1x* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %104

79:                                               ; preds = %60
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = call i32 @SKB_CS_OFF(%struct.sk_buff* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* @NETIF_MSG_TX_QUEUED, align 4
  %83 = load %struct.eth_tx_parse_bd_e1x*, %struct.eth_tx_parse_bd_e1x** %7, align 8
  %84 = getelementptr inbounds %struct.eth_tx_parse_bd_e1x, %struct.eth_tx_parse_bd_e1x* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @le16_to_cpu(i8* %85)
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = call i32 @SKB_CS(%struct.sk_buff* %88)
  %90 = call i32 (i32, i8*, i32, ...) @DP(i32 %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87, i32 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = call i32 @skb_transport_header(%struct.sk_buff* %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = call i32 @SKB_CS(%struct.sk_buff* %93)
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @bnx2x_csum_fix(i32 %92, i32 %94, i32 %95)
  %97 = load %struct.eth_tx_parse_bd_e1x*, %struct.eth_tx_parse_bd_e1x** %7, align 8
  %98 = getelementptr inbounds %struct.eth_tx_parse_bd_e1x, %struct.eth_tx_parse_bd_e1x* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @NETIF_MSG_TX_QUEUED, align 4
  %100 = load %struct.eth_tx_parse_bd_e1x*, %struct.eth_tx_parse_bd_e1x** %7, align 8
  %101 = getelementptr inbounds %struct.eth_tx_parse_bd_e1x, %struct.eth_tx_parse_bd_e1x* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, i32, ...) @DP(i32 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %79, %71
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @bswab16(i32) #1

declare dso_local %struct.TYPE_2__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @SKB_CS_OFF(%struct.sk_buff*) #1

declare dso_local i32 @DP(i32, i8*, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @SKB_CS(%struct.sk_buff*) #1

declare dso_local i32 @bnx2x_csum_fix(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
