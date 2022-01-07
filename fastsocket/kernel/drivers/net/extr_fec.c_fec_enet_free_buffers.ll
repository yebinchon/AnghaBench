; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_enet_free_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_enet_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32*, %struct.bufdesc*, %struct.sk_buff**, %struct.bufdesc* }
%struct.sk_buff = type { i32 }
%struct.bufdesc = type { i64 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@FEC_ENET_RX_FRSIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fec_enet_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_enet_free_buffers(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.bufdesc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fec_enet_private* %8, %struct.fec_enet_private** %3, align 8
  %9 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %10 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %9, i32 0, i32 3
  %11 = load %struct.bufdesc*, %struct.bufdesc** %10, align 8
  store %struct.bufdesc* %11, %struct.bufdesc** %6, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %46, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @RX_RING_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %18 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %17, i32 0, i32 2
  %19 = load %struct.sk_buff**, %struct.sk_buff*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %19, i64 %21
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %5, align 8
  %24 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %25 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %16
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %32 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @FEC_ENET_RX_FRSIZE, align 4
  %35 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %36 = call i32 @dma_unmap_single(i32* %30, i64 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %16
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @dev_kfree_skb(%struct.sk_buff* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %45 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %44, i32 1
  store %struct.bufdesc* %45, %struct.bufdesc** %6, align 8
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %12

49:                                               ; preds = %12
  %50 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %51 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %50, i32 0, i32 1
  %52 = load %struct.bufdesc*, %struct.bufdesc** %51, align 8
  store %struct.bufdesc* %52, %struct.bufdesc** %6, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %66, %49
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @TX_RING_SIZE, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %59 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @kfree(i32 %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %53

69:                                               ; preds = %53
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
