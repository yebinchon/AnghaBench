; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunbmac.c_bigmac_init_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunbmac.c_bigmac_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bigmac = type { %struct.TYPE_4__*, %struct.sk_buff**, i64, i64, i64, i64, %struct.net_device*, %struct.bmac_init_block* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.bmac_init_block = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@RX_BUF_ALLOC_SIZE = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RXD_OWN = common dso_local global i32 0, align 4
@RXD_LENGTH = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bigmac*, i32)* @bigmac_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bigmac_init_rings(%struct.bigmac* %0, i32 %1) #0 {
  %3 = alloca %struct.bigmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmac_init_block*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.bigmac* %0, %struct.bigmac** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %11 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %10, i32 0, i32 7
  %12 = load %struct.bmac_init_block*, %struct.bmac_init_block** %11, align 8
  store %struct.bmac_init_block* %12, %struct.bmac_init_block** %5, align 8
  %13 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %14 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %13, i32 0, i32 6
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = call i64 (...) @in_interrupt()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %2
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %26 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %28 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %30 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %32 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %34 = call i32 @bigmac_clean_rings(%struct.bigmac* %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %93, %24
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @RX_RING_SIZE, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %96

39:                                               ; preds = %35
  %40 = load i32, i32* @RX_BUF_ALLOC_SIZE, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.sk_buff* @big_mac_alloc_skb(i32 %40, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %9, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %93

46:                                               ; preds = %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %49 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %48, i32 0, i32 1
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %50, i64 %52
  store %struct.sk_buff* %47, %struct.sk_buff** %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  store %struct.net_device* %54, %struct.net_device** %56, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = load i32, i32* @ETH_FRAME_LEN, align 4
  %59 = call i32 @skb_put(%struct.sk_buff* %57, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = call i32 @skb_reserve(%struct.sk_buff* %60, i32 34)
  %62 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %63 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @RX_BUF_ALLOC_SIZE, align 4
  %70 = sub nsw i32 %69, 34
  %71 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %72 = call i32 @dma_map_single(i32* %65, i32 %68, i32 %70, i32 %71)
  %73 = load %struct.bmac_init_block*, %struct.bmac_init_block** %5, align 8
  %74 = getelementptr inbounds %struct.bmac_init_block, %struct.bmac_init_block* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 %72, i32* %79, align 4
  %80 = load i32, i32* @RXD_OWN, align 4
  %81 = load i32, i32* @RX_BUF_ALLOC_SIZE, align 4
  %82 = sub nsw i32 %81, 34
  %83 = load i32, i32* @RXD_LENGTH, align 4
  %84 = and i32 %82, %83
  %85 = or i32 %80, %84
  %86 = load %struct.bmac_init_block*, %struct.bmac_init_block** %5, align 8
  %87 = getelementptr inbounds %struct.bmac_init_block, %struct.bmac_init_block* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 4
  br label %93

93:                                               ; preds = %46, %45
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %35

96:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %116, %96
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @TX_RING_SIZE, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %97
  %102 = load %struct.bmac_init_block*, %struct.bmac_init_block** %5, align 8
  %103 = getelementptr inbounds %struct.bmac_init_block, %struct.bmac_init_block* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.bmac_init_block*, %struct.bmac_init_block** %5, align 8
  %110 = getelementptr inbounds %struct.bmac_init_block, %struct.bmac_init_block* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %101
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %97

119:                                              ; preds = %97
  ret void
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @bigmac_clean_rings(%struct.bigmac*) #1

declare dso_local %struct.sk_buff* @big_mac_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
