; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_pull_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_pull_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i32 }
%union.e1000_adv_rx_desc = type { i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.skb_frag_struct = type { i32 }
%struct.TYPE_2__ = type { %struct.skb_frag_struct* }

@E1000_RXDADV_STAT_TSIP = common dso_local global i32 0, align 4
@IGB_TS_HDR_LEN = common dso_local global i32 0, align 4
@IGB_RX_HDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*)* @igb_pull_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_pull_tail(%struct.igb_ring* %0, %union.e1000_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.igb_ring*, align 8
  %5 = alloca %union.e1000_adv_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.skb_frag_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.igb_ring* %0, %struct.igb_ring** %4, align 8
  store %union.e1000_adv_rx_desc* %1, %union.e1000_adv_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %14 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %13, i64 0
  store %struct.skb_frag_struct* %14, %struct.skb_frag_struct** %7, align 8
  %15 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %7, align 8
  %16 = call i8* @skb_frag_address(%struct.skb_frag_struct* %15)
  store i8* %16, i8** %8, align 8
  %17 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %18 = load i32, i32* @E1000_RXDADV_STAT_TSIP, align 4
  %19 = call i64 @igb_test_staterr(%union.e1000_adv_rx_desc* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %3
  %22 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %23 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @igb_ptp_rx_pktstamp(i32 %24, i8* %25, %struct.sk_buff* %26)
  %28 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %7, align 8
  %29 = load i32, i32* @IGB_TS_HDR_LEN, align 4
  %30 = call i32 @skb_frag_size_sub(%struct.skb_frag_struct* %28, i32 %29)
  %31 = load i32, i32* @IGB_TS_HDR_LEN, align 4
  %32 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %7, align 8
  %33 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @IGB_TS_HDR_LEN, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @IGB_TS_HDR_LEN, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sub i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @IGB_TS_HDR_LEN, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %21, %3
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @IGB_RX_HDR_LEN, align 4
  %53 = call i32 @igb_get_headlen(i8* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ALIGN(i32 %56, i32 8)
  %58 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %54, i8* %55, i32 %57)
  %59 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @skb_frag_size_sub(%struct.skb_frag_struct* %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %7, align 8
  %64 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, %72
  store i32 %76, i32* %74, align 4
  ret void
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i8* @skb_frag_address(%struct.skb_frag_struct*) #1

declare dso_local i64 @igb_test_staterr(%union.e1000_adv_rx_desc*, i32) #1

declare dso_local i32 @igb_ptp_rx_pktstamp(i32, i8*, %struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size_sub(%struct.skb_frag_struct*, i32) #1

declare dso_local i32 @igb_get_headlen(i8*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
