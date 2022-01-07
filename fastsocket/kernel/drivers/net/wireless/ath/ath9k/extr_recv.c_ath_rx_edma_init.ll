; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_rx_edma_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_rx_edma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_4__, i32, %struct.ath_hw* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.ath_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.ath_common = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ath_buf = type { i32, i64, %struct.sk_buff* }

@ATH9K_RX_QUEUE_LP = common dso_local global i64 0, align 8
@ATH9K_RX_QUEUE_HP = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"dma_mapping_error() on RX init\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, i32)* @ath_rx_edma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_rx_edma_init(%struct.ath_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ath_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 2
  %15 = load %struct.ath_hw*, %struct.ath_hw** %14, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %6, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 2
  %19 = load %struct.ath_hw*, %struct.ath_hw** %18, align 8
  store %struct.ath_hw* %19, %struct.ath_hw** %7, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %21 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %22 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %25 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %23, %27
  %29 = call i32 @ath9k_hw_set_rx_bufsize(%struct.ath_hw* %20, i64 %28)
  %30 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @ATH9K_RX_QUEUE_LP, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ath_rx_edma_init_queue(i32* %35, i32 %39)
  %41 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %42 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @ATH9K_RX_QUEUE_HP, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %48 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ath_rx_edma_init_queue(i32* %46, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 24, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %12, align 4
  %56 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %57 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.ath_buf* @devm_kzalloc(i32 %58, i32 %59, i32 %60)
  store %struct.ath_buf* %61, %struct.ath_buf** %9, align 8
  %62 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %63 = icmp ne %struct.ath_buf* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %2
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %149

67:                                               ; preds = %2
  %68 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %69 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %139, %67
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %144

76:                                               ; preds = %72
  %77 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %78 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %79 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.sk_buff* @ath_rxbuf_alloc(%struct.ath_common* %77, i64 %80, i32 %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %8, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %76
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %10, align 4
  br label %145

88:                                               ; preds = %76
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %93 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @memset(i32 %91, i32 0, i64 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %98 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %97, i32 0, i32 2
  store %struct.sk_buff* %96, %struct.sk_buff** %98, align 8
  %99 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %100 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %106 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %109 = call i64 @dma_map_single(i32 %101, i32 %104, i64 %107, i32 %108)
  %110 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %111 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %113 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %116 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @dma_mapping_error(i32 %114, i64 %117)
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %88
  %122 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %123 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %122)
  %124 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %125 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %124, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %125, align 8
  %126 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %127 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %129 = call i32 @ath_err(%struct.ath_common* %128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %10, align 4
  br label %145

132:                                              ; preds = %88
  %133 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %134 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %133, i32 0, i32 0
  %135 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %136 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = call i32 @list_add_tail(i32* %134, i32* %137)
  br label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  %142 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %143 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %142, i32 1
  store %struct.ath_buf* %143, %struct.ath_buf** %9, align 8
  br label %72

144:                                              ; preds = %72
  store i32 0, i32* %3, align 4
  br label %149

145:                                              ; preds = %121, %85
  %146 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %147 = call i32 @ath_rx_edma_cleanup(%struct.ath_softc* %146)
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %145, %144, %64
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_set_rx_bufsize(%struct.ath_hw*, i64) #1

declare dso_local i32 @ath_rx_edma_init_queue(i32*, i32) #1

declare dso_local %struct.ath_buf* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.sk_buff* @ath_rxbuf_alloc(%struct.ath_common*, i64, i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i64 @dma_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ath_rx_edma_cleanup(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
