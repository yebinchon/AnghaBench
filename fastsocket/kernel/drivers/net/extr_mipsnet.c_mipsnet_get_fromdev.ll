; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mipsnet.c_mipsnet_get_fromdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mipsnet.c_mipsnet_get_fromdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.sk_buff = type { i32, i32 }

@NET_IP_ALIGN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*, i64)* @mipsnet_get_fromdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mipsnet_get_fromdev(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %3, align 8
  br label %63

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @NET_IP_ALIGN, align 8
  %14 = add i64 %12, %13
  %15 = call %struct.sk_buff* @dev_alloc_skb(i64 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load i64, i64* @ENOMEM, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %3, align 8
  br label %63

26:                                               ; preds = %11
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load i64, i64* @NET_IP_ALIGN, align 8
  %29 = call i32 @skb_reserve(%struct.sk_buff* %27, i64 %28)
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @skb_put(%struct.sk_buff* %31, i64 %32)
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @ioiocpy_frommipsnet(%struct.net_device* %30, i32 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i64, i64* @EFAULT, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %3, align 8
  br label %63

40:                                               ; preds = %26
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call i32 @eth_type_trans(%struct.sk_buff* %41, %struct.net_device* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i32 @netif_rx(%struct.sk_buff* %49)
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %56
  store i64 %61, i64* %59, align 8
  %62 = load i64, i64* %5, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %40, %37, %18, %9
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @ioiocpy_frommipsnet(%struct.net_device*, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
