; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_enet_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_enet_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32*, %struct.bufdesc*, %struct.sk_buff**, %struct.bufdesc* }
%struct.sk_buff = type { i32 }
%struct.bufdesc = type { i32, i64 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@FEC_ENET_RX_FRSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@BD_ENET_RX_EMPTY = common dso_local global i32 0, align 4
@BD_SC_WRAP = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@FEC_ENET_TX_FRSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fec_enet_alloc_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_alloc_buffers(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fec_enet_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.bufdesc*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %8)
  store %struct.fec_enet_private* %9, %struct.fec_enet_private** %4, align 8
  %10 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %11 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %10, i32 0, i32 3
  %12 = load %struct.bufdesc*, %struct.bufdesc** %11, align 8
  store %struct.bufdesc* %12, %struct.bufdesc** %7, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %50, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @RX_RING_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %13
  %18 = load i32, i32* @FEC_ENET_RX_FRSIZE, align 4
  %19 = call %struct.sk_buff* @dev_alloc_skb(i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @fec_enet_free_buffers(%struct.net_device* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %95

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %30 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %29, i32 0, i32 2
  %31 = load %struct.sk_buff**, %struct.sk_buff*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %31, i64 %33
  store %struct.sk_buff* %28, %struct.sk_buff** %34, align 8
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FEC_ENET_RX_FRSIZE, align 4
  %41 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %42 = call i64 @dma_map_single(i32* %36, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %44 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* @BD_ENET_RX_EMPTY, align 4
  %46 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %47 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %49 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %48, i32 1
  store %struct.bufdesc* %49, %struct.bufdesc** %7, align 8
  br label %50

50:                                               ; preds = %27
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %13

53:                                               ; preds = %13
  %54 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %55 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %54, i32 -1
  store %struct.bufdesc* %55, %struct.bufdesc** %7, align 8
  %56 = load i32, i32* @BD_SC_WRAP, align 4
  %57 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %58 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %62 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %61, i32 0, i32 1
  %63 = load %struct.bufdesc*, %struct.bufdesc** %62, align 8
  store %struct.bufdesc* %63, %struct.bufdesc** %7, align 8
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %84, %53
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @TX_RING_SIZE, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %64
  %69 = load i32, i32* @FEC_ENET_TX_FRSIZE, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i32 @kmalloc(i32 %69, i32 %70)
  %72 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %73 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %79 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %81 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %83 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %82, i32 1
  store %struct.bufdesc* %83, %struct.bufdesc** %7, align 8
  br label %84

84:                                               ; preds = %68
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %64

87:                                               ; preds = %64
  %88 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %89 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %88, i32 -1
  store %struct.bufdesc* %89, %struct.bufdesc** %7, align 8
  %90 = load i32, i32* @BD_SC_WRAP, align 4
  %91 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %92 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %87, %22
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @fec_enet_free_buffers(%struct.net_device*) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
