; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_refill_rxbuffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_refill_rxbuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8695_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8*, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }

@MAX_RX_DESC = common dso_local global i32 0, align 4
@MAX_RXBUF_SIZE = common dso_local global i8* null, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RDES_OWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks8695_priv*)* @ks8695_refill_rxbuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8695_refill_rxbuffers(%struct.ks8695_priv* %0) #0 {
  %2 = alloca %struct.ks8695_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  store %struct.ks8695_priv* %0, %struct.ks8695_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %112, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MAX_RX_DESC, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %115

10:                                               ; preds = %6
  %11 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %12 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %111, label %20

20:                                               ; preds = %10
  %21 = load i8*, i8** @MAX_RXBUF_SIZE, align 8
  %22 = call %struct.sk_buff* @dev_alloc_skb(i8* %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %4, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %25 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store %struct.sk_buff* %23, %struct.sk_buff** %30, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = icmp eq %struct.sk_buff* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %115

34:                                               ; preds = %20
  %35 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %36 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** @MAX_RXBUF_SIZE, align 8
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i8* @dma_map_single(i32 %37, i32 %40, i8* %41, i32 %42)
  store i8* %43, i8** %5, align 8
  %44 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %45 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @dma_mapping_error(i32 %46, i8* %47)
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %34
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %52)
  %54 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %55 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %60, align 8
  br label %115

61:                                               ; preds = %34
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %64 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i8* %62, i8** %69, align 8
  %70 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %71 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i8*, i8** @MAX_RXBUF_SIZE, align 8
  %76 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %77 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i8* %75, i8** %82, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i8* @cpu_to_le32(i8* %83)
  %85 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %86 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  store i8* %84, i8** %91, align 8
  %92 = load i8*, i8** @MAX_RXBUF_SIZE, align 8
  %93 = call i8* @cpu_to_le32(i8* %92)
  %94 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %95 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i8* %93, i8** %100, align 8
  %101 = call i32 (...) @wmb()
  %102 = load i8*, i8** @RDES_OWN, align 8
  %103 = call i8* @cpu_to_le32(i8* %102)
  %104 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %105 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i8* %103, i8** %110, align 8
  br label %111

111:                                              ; preds = %61, %10
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %6

115:                                              ; preds = %51, %33, %6
  ret void
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i8*) #1

declare dso_local i8* @dma_map_single(i32, i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i8*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le32(i8*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
