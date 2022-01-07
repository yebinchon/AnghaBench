; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_cleanup_headers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_cleanup_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i32 }
%union.e1000_adv_rx_desc = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*)* @igb_cleanup_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_cleanup_headers(%struct.igb_ring* %0, %union.e1000_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.igb_ring*, align 8
  %6 = alloca %union.e1000_adv_rx_desc*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.igb_ring* %0, %struct.igb_ring** %5, align 8
  store %union.e1000_adv_rx_desc* %1, %union.e1000_adv_rx_desc** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %10 = call i64 @skb_is_nonlinear(%struct.sk_buff* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %14 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call i32 @igb_pull_tail(%struct.igb_ring* %13, %union.e1000_adv_rx_desc* %14, %struct.sk_buff* %15)
  br label %17

17:                                               ; preds = %12, %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 60
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 60, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @skb_pad(%struct.sk_buff* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %40

35:                                               ; preds = %25
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @__skb_put(%struct.sk_buff* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %17
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i32 @igb_pull_tail(%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_pad(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
