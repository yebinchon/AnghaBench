; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xen-netfront.c_xennet_get_rx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xen-netfront.c_xennet_get_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netfront_info = type { %struct.sk_buff** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.netfront_info*, i32)* @xennet_get_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @xennet_get_rx_skb(%struct.netfront_info* %0, i32 %1) #0 {
  %3 = alloca %struct.netfront_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.netfront_info* %0, %struct.netfront_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @xennet_rxidx(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %10 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %9, i32 0, i32 0
  %11 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %11, i64 %13
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %17 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %16, i32 0, i32 0
  %18 = load %struct.sk_buff**, %struct.sk_buff*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %18, i64 %20
  store %struct.sk_buff* null, %struct.sk_buff** %21, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %22
}

declare dso_local i32 @xennet_rxidx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
