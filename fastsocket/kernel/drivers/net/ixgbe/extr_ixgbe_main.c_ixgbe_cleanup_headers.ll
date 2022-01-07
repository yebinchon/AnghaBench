; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_cleanup_headers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_cleanup_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i32 }
%union.ixgbe_adv_rx_desc = type { i32 }
%struct.sk_buff = type { i32 }

@IXGBE_RXDADV_ERR_FRAME_ERR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*)* @ixgbe_cleanup_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_cleanup_headers(%struct.ixgbe_ring* %0, %union.ixgbe_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %5, align 8
  store %union.ixgbe_adv_rx_desc* %1, %union.ixgbe_adv_rx_desc** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %9 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %6, align 8
  %10 = load i32, i32* @IXGBE_RXDADV_ERR_FRAME_ERR_MASK, align 4
  %11 = call i32 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %9, i32 %10)
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %15)
  store i32 1, i32* %4, align 4
  br label %48

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call i64 @skb_is_nonlinear(%struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = call i32 @ixgbe_pull_tail(%struct.ixgbe_ring* %22, %struct.sk_buff* %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 60
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %25
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 60, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @skb_pad(%struct.sk_buff* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %48

43:                                               ; preds = %33
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @__skb_put(%struct.sk_buff* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %25
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %42, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i32 @ixgbe_pull_tail(%struct.ixgbe_ring*, %struct.sk_buff*) #1

declare dso_local i64 @skb_pad(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
