; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hdlc_raw_eth.c_eth_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hdlc_raw_eth.c_eth_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.sk_buff*, %struct.net_device*)* }

@ETH_ZLEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @eth_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eth_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load i32, i32* @ETH_ZLEN, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %8, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @skb_tailroom(%struct.sk_buff* %19)
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %15
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call i64 @pskb_expand_head(%struct.sk_buff* %24, i32 0, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i32 @dev_kfree_skb(%struct.sk_buff* %35)
  store i32 0, i32* %3, align 4
  br label %58

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %15
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @skb_put(%struct.sk_buff* %39, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @memset(i64 %47, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %38, %2
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = call %struct.TYPE_4__* @dev_to_hdlc(%struct.net_device* %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.sk_buff*, %struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)** %53, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = call i32 %54(%struct.sk_buff* %55, %struct.net_device* %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %50, %29
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local %struct.TYPE_4__* @dev_to_hdlc(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
