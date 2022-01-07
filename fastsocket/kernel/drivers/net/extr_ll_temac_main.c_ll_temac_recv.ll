; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_ll_temac_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_ll_temac_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.temac_local = type { i32, i32, %struct.cdmac_bd*, %struct.sk_buff**, i64 }
%struct.cdmac_bd = type { i32, i32, i64, i32 }
%struct.sk_buff = type { i32, i32, i32, %struct.net_device* }

@STS_CTRL_APP0_CMPLT = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@XTE_MAX_JUMBO_FRAME_SIZE = common dso_local global i64 0, align 8
@XTE_ALIGN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no memory for new sk_buff\0A\00", align 1
@STS_CTRL_APP0_IRQONEND = common dso_local global i32 0, align 4
@RX_BD_NUM = common dso_local global i64 0, align 8
@RX_TAILDESC_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ll_temac_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ll_temac_recv(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.temac_local*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdmac_bd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.temac_local* @netdev_priv(%struct.net_device* %12)
  store %struct.temac_local* %13, %struct.temac_local** %3, align 8
  %14 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %15 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %14, i32 0, i32 1
  %16 = load i64, i64* %11, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %19 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %22 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 24, %24
  %26 = add i64 %20, %25
  store i64 %26, i64* %8, align 8
  %27 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %28 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %27, i32 0, i32 2
  %29 = load %struct.cdmac_bd*, %struct.cdmac_bd** %28, align 8
  %30 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %31 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %29, i64 %33
  store %struct.cdmac_bd* %34, %struct.cdmac_bd** %7, align 8
  %35 = load %struct.cdmac_bd*, %struct.cdmac_bd** %7, align 8
  %36 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %157, %1
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @STS_CTRL_APP0_CMPLT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %169

43:                                               ; preds = %38
  %44 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %45 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %44, i32 0, i32 3
  %46 = load %struct.sk_buff**, %struct.sk_buff*** %45, align 8
  %47 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %48 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %46, i64 %50
  %52 = load %struct.sk_buff*, %struct.sk_buff** %51, align 8
  store %struct.sk_buff* %52, %struct.sk_buff** %4, align 8
  %53 = load %struct.cdmac_bd*, %struct.cdmac_bd** %7, align 8
  %54 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @virt_to_bus(i32 %58)
  store i64 %59, i64* %10, align 8
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %67 = call i32 @dma_unmap_single(i32 %63, i64 %64, i32 %65, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @skb_put(%struct.sk_buff* %68, i32 %69)
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 3
  store %struct.net_device* %71, %struct.net_device** %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = call i32 @eth_type_trans(%struct.sk_buff* %74, %struct.net_device* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @CHECKSUM_NONE, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call i32 @netif_rx(%struct.sk_buff* %82)
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %89
  store i32 %94, i32* %92, align 4
  %95 = load i64, i64* @XTE_MAX_JUMBO_FRAME_SIZE, align 8
  %96 = load i64, i64* @XTE_ALIGN, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i32, i32* @GFP_ATOMIC, align 4
  %99 = call %struct.sk_buff* @alloc_skb(i64 %97, i32 %98)
  store %struct.sk_buff* %99, %struct.sk_buff** %5, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = icmp eq %struct.sk_buff* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %43
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = call i32 @dev_err(%struct.TYPE_4__* %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %107 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %106, i32 0, i32 1
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  br label %178

110:                                              ; preds = %43
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @BUFFER_ALIGN(i32 %114)
  %116 = call i32 @skb_reserve(%struct.sk_buff* %111, i32 %115)
  %117 = load i32, i32* @STS_CTRL_APP0_IRQONEND, align 4
  %118 = load %struct.cdmac_bd*, %struct.cdmac_bd** %7, align 8
  %119 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* @XTE_MAX_JUMBO_FRAME_SIZE, align 8
  %128 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %129 = call i32 @dma_map_single(i32 %123, i32 %126, i64 %127, i32 %128)
  %130 = load %struct.cdmac_bd*, %struct.cdmac_bd** %7, align 8
  %131 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load i64, i64* @XTE_MAX_JUMBO_FRAME_SIZE, align 8
  %133 = load %struct.cdmac_bd*, %struct.cdmac_bd** %7, align 8
  %134 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %136 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %137 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %136, i32 0, i32 3
  %138 = load %struct.sk_buff**, %struct.sk_buff*** %137, align 8
  %139 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %140 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %138, i64 %142
  store %struct.sk_buff* %135, %struct.sk_buff** %143, align 8
  %144 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %145 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  %148 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %149 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* @RX_BD_NUM, align 8
  %153 = icmp uge i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %110
  %155 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %156 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %155, i32 0, i32 0
  store i32 0, i32* %156, align 8
  br label %157

157:                                              ; preds = %154, %110
  %158 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %159 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %158, i32 0, i32 2
  %160 = load %struct.cdmac_bd*, %struct.cdmac_bd** %159, align 8
  %161 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %162 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %160, i64 %164
  store %struct.cdmac_bd* %165, %struct.cdmac_bd** %7, align 8
  %166 = load %struct.cdmac_bd*, %struct.cdmac_bd** %7, align 8
  %167 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %6, align 4
  br label %38

169:                                              ; preds = %38
  %170 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %171 = load i32, i32* @RX_TAILDESC_PTR, align 4
  %172 = load i64, i64* %8, align 8
  %173 = call i32 @temac_dma_out32(%struct.temac_local* %170, i32 %171, i64 %172)
  %174 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %175 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %174, i32 0, i32 1
  %176 = load i64, i64* %11, align 8
  %177 = call i32 @spin_unlock_irqrestore(i32* %175, i64 %176)
  br label %178

178:                                              ; preds = %169, %102
  ret void
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @virt_to_bus(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @BUFFER_ALIGN(i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i64, i32) #1

declare dso_local i32 @temac_dma_out32(%struct.temac_local*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
