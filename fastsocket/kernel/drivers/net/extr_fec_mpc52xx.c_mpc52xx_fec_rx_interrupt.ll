; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec_mpc52xx.c_mpc52xx_fec_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec_mpc52xx.c_mpc52xx_fec_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mpc52xx_fec_priv = type { i32 }
%struct.sk_buff = type { i32, i32, %struct.net_device*, i32 }
%struct.bcom_fec_bd = type { i8*, i8* }
%struct.bcom_bd = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@BCOM_FEC_RX_BD_ERRORS = common dso_local global i32 0, align 4
@FEC_RX_BUFFER_SIZE = common dso_local global i8* null, align 8
@BCOM_FEC_RX_BD_LEN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Memory squeeze, dropping packet.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mpc52xx_fec_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_fec_rx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mpc52xx_fec_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.bcom_fec_bd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.mpc52xx_fec_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.mpc52xx_fec_priv* %15, %struct.mpc52xx_fec_priv** %6, align 8
  br label %16

16:                                               ; preds = %108, %44, %2
  %17 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %18 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @bcom_buffer_done(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %134

22:                                               ; preds = %16
  %23 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %24 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = bitcast %struct.bcom_fec_bd** %9 to %struct.bcom_bd**
  %27 = call %struct.sk_buff* @bcom_retrieve_buffer(i32 %25, i32* %10, %struct.bcom_bd** %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %8, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bcom_fec_bd*, %struct.bcom_fec_bd** %9, align 8
  %33 = getelementptr inbounds %struct.bcom_fec_bd, %struct.bcom_fec_bd* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %39 = call i32 @dma_unmap_single(i32 %31, i8* %34, i32 %37, i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @BCOM_FEC_RX_BD_ERRORS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %22
  %45 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %46 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @bcom_prepare_next_buffer(i32 %47)
  %49 = inttoptr i64 %48 to %struct.bcom_fec_bd*
  store %struct.bcom_fec_bd* %49, %struct.bcom_fec_bd** %9, align 8
  %50 = load i8*, i8** @FEC_RX_BUFFER_SIZE, align 8
  %51 = load %struct.bcom_fec_bd*, %struct.bcom_fec_bd** %9, align 8
  %52 = getelementptr inbounds %struct.bcom_fec_bd, %struct.bcom_fec_bd* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** @FEC_RX_BUFFER_SIZE, align 8
  %61 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %62 = call i8* @dma_map_single(i32 %56, i32 %59, i8* %60, i32 %61)
  %63 = load %struct.bcom_fec_bd*, %struct.bcom_fec_bd** %9, align 8
  %64 = getelementptr inbounds %struct.bcom_fec_bd, %struct.bcom_fec_bd* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %66 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = call i32 @bcom_submit_next_buffer(i32 %67, %struct.sk_buff* %68)
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %16

75:                                               ; preds = %22
  %76 = load i8*, i8** @FEC_RX_BUFFER_SIZE, align 8
  %77 = call %struct.sk_buff* @dev_alloc_skb(i8* %76)
  store %struct.sk_buff* %77, %struct.sk_buff** %7, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = icmp ne %struct.sk_buff* %78, null
  br i1 %79, label %80, label %98

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @BCOM_FEC_RX_BD_LEN_MASK, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %11, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %85, 4
  %87 = call i32 @skb_put(%struct.sk_buff* %84, i32 %86)
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 2
  store %struct.net_device* %88, %struct.net_device** %90, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = load %struct.net_device*, %struct.net_device** %5, align 8
  %93 = call i32 @eth_type_trans(%struct.sk_buff* %91, %struct.net_device* %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = call i32 @netif_rx(%struct.sk_buff* %96)
  br label %108

98:                                               ; preds = %75
  %99 = load %struct.net_device*, %struct.net_device** %5, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = call i32 @dev_notice(%struct.TYPE_4__* %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %102 = load %struct.net_device*, %struct.net_device** %5, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %107, %struct.sk_buff** %7, align 8
  br label %108

108:                                              ; preds = %98, %80
  %109 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %110 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @bcom_prepare_next_buffer(i32 %111)
  %113 = inttoptr i64 %112 to %struct.bcom_fec_bd*
  store %struct.bcom_fec_bd* %113, %struct.bcom_fec_bd** %9, align 8
  %114 = load i8*, i8** @FEC_RX_BUFFER_SIZE, align 8
  %115 = load %struct.bcom_fec_bd*, %struct.bcom_fec_bd** %9, align 8
  %116 = getelementptr inbounds %struct.bcom_fec_bd, %struct.bcom_fec_bd* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load %struct.net_device*, %struct.net_device** %5, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i8*, i8** @FEC_RX_BUFFER_SIZE, align 8
  %125 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %126 = call i8* @dma_map_single(i32 %120, i32 %123, i8* %124, i32 %125)
  %127 = load %struct.bcom_fec_bd*, %struct.bcom_fec_bd** %9, align 8
  %128 = getelementptr inbounds %struct.bcom_fec_bd, %struct.bcom_fec_bd* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  %129 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %130 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %133 = call i32 @bcom_submit_next_buffer(i32 %131, %struct.sk_buff* %132)
  br label %16

134:                                              ; preds = %16
  %135 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %135
}

declare dso_local %struct.mpc52xx_fec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @bcom_buffer_done(i32) #1

declare dso_local %struct.sk_buff* @bcom_retrieve_buffer(i32, i32*, %struct.bcom_bd**) #1

declare dso_local i32 @dma_unmap_single(i32, i8*, i32, i32) #1

declare dso_local i64 @bcom_prepare_next_buffer(i32) #1

declare dso_local i8* @dma_map_single(i32, i32, i8*, i32) #1

declare dso_local i32 @bcom_submit_next_buffer(i32, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i8*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @dev_notice(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
