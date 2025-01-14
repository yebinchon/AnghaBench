; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_set_pbd_gso_e2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_set_pbd_gso_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ETH_TX_PARSE_BD_E2_LSO_MSS_SHIFT = common dso_local global i32 0, align 4
@ETH_TX_PARSE_BD_E2_LSO_MSS = common dso_local global i32 0, align 4
@XMIT_GSO_V6 = common dso_local global i32 0, align 4
@NEXTHDR_IPV6 = common dso_local global i64 0, align 8
@ETH_TX_PARSE_BD_E2_IPV6_WITH_EXT_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32*, i32)* @bnx2x_set_pbd_gso_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_pbd_gso_e2(%struct.sk_buff* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ETH_TX_PARSE_BD_E2_LSO_MSS_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* @ETH_TX_PARSE_BD_E2_LSO_MSS, align 4
  %14 = and i32 %12, %13
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %14
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @XMIT_GSO_V6, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NEXTHDR_IPV6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i32, i32* @ETH_TX_PARSE_BD_E2_IPV6_WITH_EXT_HDR, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %29, %22, %3
  ret void
}

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
