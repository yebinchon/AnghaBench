; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bfin_mac.c_bfin_mac_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bfin_mac.c_bfin_mac_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__, %struct.TYPE_5__, %struct.sk_buff* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@current_tx_ptr = common dso_local global %struct.TYPE_7__* null, align 8
@DMAEN = common dso_local global i32 0, align 4
@DMA_RUN = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bfin_mac_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_mac_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = and i64 %9, 3
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_tx_ptr, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  store %struct.sk_buff* %12, %struct.sk_buff** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i64*
  %22 = getelementptr inbounds i64, i64* %21, i64 -1
  store i64* %22, i64** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = load i64*, i64** %5, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = ptrtoint i64* %28 to i32
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_tx_ptr, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i64*, i64** %5, align 8
  %34 = ptrtoint i64* %33 to i32
  %35 = load i64*, i64** %5, align 8
  %36 = bitcast i64* %35 to i32*
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = ptrtoint i32* %42 to i32
  %44 = call i32 @blackfin_dcache_flush_range(i32 %34, i32 %43)
  br label %96

45:                                               ; preds = %2
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_tx_ptr, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i64*
  store i64 %49, i64* %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_tx_ptr, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32*
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @memcpy(i32* %60, i64 %63, i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_tx_ptr, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_tx_ptr, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_tx_ptr, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %45
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_tx_ptr, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %79, %45
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_tx_ptr, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_tx_ptr, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %89, %92
  %94 = add nsw i32 %93, 2
  %95 = call i32 @blackfin_dcache_flush_range(i32 %86, i32 %94)
  br label %96

96:                                               ; preds = %83, %17
  %97 = call i32 (...) @SSYNC()
  %98 = load i32, i32* @DMAEN, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_tx_ptr, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %98
  store i32 %103, i32* %101, align 4
  %104 = call i32 (...) @bfin_read_DMA2_IRQ_STATUS()
  %105 = load i32, i32* @DMA_RUN, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  br label %122

109:                                              ; preds = %96
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_tx_ptr, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = call i32 @bfin_write_DMA2_NEXT_DESC_PTR(%struct.TYPE_8__* %111)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_tx_ptr, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @bfin_write_DMA2_CONFIG(i32 %116)
  %118 = call i32 (...) @bfin_read_EMAC_OPMODE()
  %119 = load i32, i32* @TE, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @bfin_write_EMAC_OPMODE(i32 %120)
  br label %122

122:                                              ; preds = %109, %108
  %123 = call i32 (...) @adjust_tx_list()
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_tx_ptr, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  store %struct.TYPE_7__* %126, %struct.TYPE_7__** @current_tx_ptr, align 8
  %127 = load i32, i32* @jiffies, align 4
  %128 = load %struct.net_device*, %struct.net_device** %4, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.net_device*, %struct.net_device** %4, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.net_device*, %struct.net_device** %4, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, %137
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %143
}

declare dso_local i32 @blackfin_dcache_flush_range(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @SSYNC(...) #1

declare dso_local i32 @bfin_read_DMA2_IRQ_STATUS(...) #1

declare dso_local i32 @bfin_write_DMA2_NEXT_DESC_PTR(%struct.TYPE_8__*) #1

declare dso_local i32 @bfin_write_DMA2_CONFIG(i32) #1

declare dso_local i32 @bfin_write_EMAC_OPMODE(i32) #1

declare dso_local i32 @bfin_read_EMAC_OPMODE(...) #1

declare dso_local i32 @adjust_tx_list(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
