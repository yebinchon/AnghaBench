; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bfin_mac.c_desc_list_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bfin_mac.c_desc_list_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_dma_desc_tx = type { %struct.net_dma_desc_tx*, i32* }
%struct.net_dma_desc_rx = type { %struct.net_dma_desc_rx*, i32* }

@tx_desc = common dso_local global i64 0, align 8
@tx_list_head = common dso_local global %struct.net_dma_desc_tx* null, align 8
@CONFIG_BFIN_TX_DESC_NUM = common dso_local global i32 0, align 4
@rx_desc = common dso_local global i64 0, align 8
@rx_list_head = common dso_local global %struct.net_dma_desc_rx* null, align 8
@CONFIG_BFIN_RX_DESC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @desc_list_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desc_list_free() #0 {
  %1 = alloca %struct.net_dma_desc_rx*, align 8
  %2 = alloca %struct.net_dma_desc_tx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = load i64, i64* @tx_desc, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %0
  %8 = load %struct.net_dma_desc_tx*, %struct.net_dma_desc_tx** @tx_list_head, align 8
  store %struct.net_dma_desc_tx* %8, %struct.net_dma_desc_tx** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %33, %7
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @CONFIG_BFIN_TX_DESC_NUM, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load %struct.net_dma_desc_tx*, %struct.net_dma_desc_tx** %2, align 8
  %15 = icmp ne %struct.net_dma_desc_tx* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load %struct.net_dma_desc_tx*, %struct.net_dma_desc_tx** %2, align 8
  %18 = getelementptr inbounds %struct.net_dma_desc_tx, %struct.net_dma_desc_tx* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.net_dma_desc_tx*, %struct.net_dma_desc_tx** %2, align 8
  %23 = getelementptr inbounds %struct.net_dma_desc_tx, %struct.net_dma_desc_tx* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @dev_kfree_skb(i32* %24)
  %26 = load %struct.net_dma_desc_tx*, %struct.net_dma_desc_tx** %2, align 8
  %27 = getelementptr inbounds %struct.net_dma_desc_tx, %struct.net_dma_desc_tx* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %16
  %29 = load %struct.net_dma_desc_tx*, %struct.net_dma_desc_tx** %2, align 8
  %30 = getelementptr inbounds %struct.net_dma_desc_tx, %struct.net_dma_desc_tx* %29, i32 0, i32 0
  %31 = load %struct.net_dma_desc_tx*, %struct.net_dma_desc_tx** %30, align 8
  store %struct.net_dma_desc_tx* %31, %struct.net_dma_desc_tx** %2, align 8
  br label %32

32:                                               ; preds = %28, %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %9

36:                                               ; preds = %9
  %37 = load i32, i32* %4, align 4
  %38 = load i64, i64* @tx_desc, align 8
  %39 = call i32 @bfin_mac_free(i32 %37, i64 %38)
  br label %40

40:                                               ; preds = %36, %0
  %41 = load i64, i64* @rx_desc, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %40
  %44 = load %struct.net_dma_desc_rx*, %struct.net_dma_desc_rx** @rx_list_head, align 8
  store %struct.net_dma_desc_rx* %44, %struct.net_dma_desc_rx** %1, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %69, %43
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @CONFIG_BFIN_RX_DESC_NUM, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %45
  %50 = load %struct.net_dma_desc_rx*, %struct.net_dma_desc_rx** %1, align 8
  %51 = icmp ne %struct.net_dma_desc_rx* %50, null
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load %struct.net_dma_desc_rx*, %struct.net_dma_desc_rx** %1, align 8
  %54 = getelementptr inbounds %struct.net_dma_desc_rx, %struct.net_dma_desc_rx* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.net_dma_desc_rx*, %struct.net_dma_desc_rx** %1, align 8
  %59 = getelementptr inbounds %struct.net_dma_desc_rx, %struct.net_dma_desc_rx* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @dev_kfree_skb(i32* %60)
  %62 = load %struct.net_dma_desc_rx*, %struct.net_dma_desc_rx** %1, align 8
  %63 = getelementptr inbounds %struct.net_dma_desc_rx, %struct.net_dma_desc_rx* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %57, %52
  %65 = load %struct.net_dma_desc_rx*, %struct.net_dma_desc_rx** %1, align 8
  %66 = getelementptr inbounds %struct.net_dma_desc_rx, %struct.net_dma_desc_rx* %65, i32 0, i32 0
  %67 = load %struct.net_dma_desc_rx*, %struct.net_dma_desc_rx** %66, align 8
  store %struct.net_dma_desc_rx* %67, %struct.net_dma_desc_rx** %1, align 8
  br label %68

68:                                               ; preds = %64, %49
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %45

72:                                               ; preds = %45
  %73 = load i32, i32* %4, align 4
  %74 = load i64, i64* @rx_desc, align 8
  %75 = call i32 @bfin_mac_free(i32 %73, i64 %74)
  br label %76

76:                                               ; preds = %72, %40
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @bfin_mac_free(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
