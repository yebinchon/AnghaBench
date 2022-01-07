; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_try_rx_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_try_rx_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rtl8169_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i8*, %struct.rtl8169_private*, i32, i32)* @rtl8169_try_rx_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @rtl8169_try_rx_copy(i8* %0, %struct.rtl8169_private* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rtl8169_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.device*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.rtl8169_private* %1, %struct.rtl8169_private** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %12 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %10, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @rtl8169_align(i8* %15)
  store i8* %16, i8** %5, align 8
  %17 = load %struct.device*, %struct.device** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %21 = call i32 @dma_sync_single_for_cpu(%struct.device* %17, i32 %18, i32 %19, i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @prefetch(i8* %22)
  %24 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %25 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32 %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %9, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @memcpy(i32 %34, i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %4
  %39 = load %struct.device*, %struct.device** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 @dma_sync_single_for_device(%struct.device* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %44
}

declare dso_local i8* @rtl8169_align(i8*) #1

declare dso_local i32 @dma_sync_single_for_cpu(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @prefetch(i8*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
