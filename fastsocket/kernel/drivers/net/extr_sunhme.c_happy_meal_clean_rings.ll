; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunhme.c_happy_meal_clean_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunhme.c_happy_meal_clean_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.happy_meal = type { i32, %struct.TYPE_3__*, %struct.sk_buff**, %struct.sk_buff** }
%struct.TYPE_3__ = type { %struct.happy_meal_txd*, %struct.happy_meal_rxd* }
%struct.happy_meal_txd = type { i32, i32 }
%struct.happy_meal_rxd = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@RX_BUF_ALLOC_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@TXFLAG_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.happy_meal*)* @happy_meal_clean_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @happy_meal_clean_rings(%struct.happy_meal* %0) #0 {
  %2 = alloca %struct.happy_meal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.happy_meal_rxd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.happy_meal_txd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.happy_meal* %0, %struct.happy_meal** %2, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %60, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @RX_RING_SIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %11
  %16 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %17 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %16, i32 0, i32 3
  %18 = load %struct.sk_buff**, %struct.sk_buff*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %18, i64 %20
  %22 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %59

24:                                               ; preds = %15
  %25 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %26 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %25, i32 0, i32 3
  %27 = load %struct.sk_buff**, %struct.sk_buff*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %27, i64 %29
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  store %struct.sk_buff* %31, %struct.sk_buff** %4, align 8
  %32 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %33 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.happy_meal_rxd*, %struct.happy_meal_rxd** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.happy_meal_rxd, %struct.happy_meal_rxd* %36, i64 %38
  store %struct.happy_meal_rxd* %39, %struct.happy_meal_rxd** %5, align 8
  %40 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %41 = load %struct.happy_meal_rxd*, %struct.happy_meal_rxd** %5, align 8
  %42 = getelementptr inbounds %struct.happy_meal_rxd, %struct.happy_meal_rxd* %41, i32 0, i32 0
  %43 = call i32 @hme_read_desc32(%struct.happy_meal* %40, i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %45 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @RX_BUF_ALLOC_SIZE, align 4
  %49 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %50 = call i32 @dma_unmap_single(i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %51)
  %53 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %54 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %53, i32 0, i32 3
  %55 = load %struct.sk_buff**, %struct.sk_buff*** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %55, i64 %57
  store %struct.sk_buff* null, %struct.sk_buff** %58, align 8
  br label %59

59:                                               ; preds = %24, %15
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %11

63:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %140, %63
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @TX_RING_SIZE, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %143

68:                                               ; preds = %64
  %69 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %70 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %69, i32 0, i32 2
  %71 = load %struct.sk_buff**, %struct.sk_buff*** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %71, i64 %73
  %75 = load %struct.sk_buff*, %struct.sk_buff** %74, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %77, label %139

77:                                               ; preds = %68
  %78 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %79 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %78, i32 0, i32 2
  %80 = load %struct.sk_buff**, %struct.sk_buff*** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %80, i64 %82
  %84 = load %struct.sk_buff*, %struct.sk_buff** %83, align 8
  store %struct.sk_buff* %84, %struct.sk_buff** %7, align 8
  %85 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %86 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %85, i32 0, i32 2
  %87 = load %struct.sk_buff**, %struct.sk_buff*** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %87, i64 %89
  store %struct.sk_buff* null, %struct.sk_buff** %90, align 8
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %133, %77
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %94 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %93)
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sle i32 %92, %96
  br i1 %97, label %98, label %136

98:                                               ; preds = %91
  %99 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %100 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load %struct.happy_meal_txd*, %struct.happy_meal_txd** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.happy_meal_txd, %struct.happy_meal_txd* %103, i64 %105
  store %struct.happy_meal_txd* %106, %struct.happy_meal_txd** %8, align 8
  %107 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %108 = load %struct.happy_meal_txd*, %struct.happy_meal_txd** %8, align 8
  %109 = getelementptr inbounds %struct.happy_meal_txd, %struct.happy_meal_txd* %108, i32 0, i32 1
  %110 = call i32 @hme_read_desc32(%struct.happy_meal* %107, i32* %109)
  store i32 %110, i32* %9, align 4
  %111 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %112 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %116 = load %struct.happy_meal_txd*, %struct.happy_meal_txd** %8, align 8
  %117 = getelementptr inbounds %struct.happy_meal_txd, %struct.happy_meal_txd* %116, i32 0, i32 0
  %118 = call i32 @hme_read_desc32(%struct.happy_meal* %115, i32* %117)
  %119 = load i32, i32* @TXFLAG_SIZE, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* @DMA_TO_DEVICE, align 4
  %122 = call i32 @dma_unmap_single(i32 %113, i32 %114, i32 %120, i32 %121)
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %125 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %124)
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %123, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %98
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %129, %98
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %91

136:                                              ; preds = %91
  %137 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %138 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %137)
  br label %139

139:                                              ; preds = %136, %68
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %3, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %3, align 4
  br label %64

143:                                              ; preds = %64
  ret void
}

declare dso_local i32 @hme_read_desc32(%struct.happy_meal*, i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
