; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_setup_rx_descbuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_setup_rx_descbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.b43_dmaring*, %struct.b43_dmadesc_generic*, i32, i32, i32, i32, i32)* }
%struct.TYPE_3__ = type { i32 }
%struct.b43_dmadesc_generic = type { i32 }
%struct.b43_dmadesc_meta = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"RX DMA buffer allocation failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_dmaring*, %struct.b43_dmadesc_generic*, %struct.b43_dmadesc_meta*, i32)* @setup_rx_descbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_rx_descbuffer(%struct.b43_dmaring* %0, %struct.b43_dmadesc_generic* %1, %struct.b43_dmadesc_meta* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43_dmaring*, align 8
  %7 = alloca %struct.b43_dmadesc_generic*, align 8
  %8 = alloca %struct.b43_dmadesc_meta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %6, align 8
  store %struct.b43_dmadesc_generic* %1, %struct.b43_dmadesc_generic** %7, align 8
  store %struct.b43_dmadesc_meta* %2, %struct.b43_dmadesc_meta** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %13 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @B43_WARN_ON(i32 %14)
  %16 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %17 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.sk_buff* @__dev_alloc_skb(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %11, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %119

30:                                               ; preds = %4
  %31 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %33 = call i32 @b43_poison_rx_buffer(%struct.b43_dmaring* %31, %struct.sk_buff* %32)
  %34 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %39 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @map_descbuffer(%struct.b43_dmaring* %34, i32 %37, i32 %40, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %45 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @b43_dma_mapping_error(%struct.b43_dmaring* %42, i32 %43, i32 %46, i32 0)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %100

49:                                               ; preds = %30
  %50 = load i32, i32* @GFP_DMA, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %54 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %53)
  %55 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %56 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call %struct.sk_buff* @__dev_alloc_skb(i32 %57, i32 %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %11, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %49
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %119

69:                                               ; preds = %49
  %70 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %72 = call i32 @b43_poison_rx_buffer(%struct.b43_dmaring* %70, %struct.sk_buff* %71)
  %73 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %78 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @map_descbuffer(%struct.b43_dmaring* %73, i32 %76, i32 %79, i32 0)
  store i32 %80, i32* %10, align 4
  %81 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %84 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @b43_dma_mapping_error(%struct.b43_dmaring* %81, i32 %82, i32 %85, i32 0)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %69
  %89 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %90 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @b43err(i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %96 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %119

99:                                               ; preds = %69
  br label %100

100:                                              ; preds = %99, %30
  %101 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %102 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %8, align 8
  %103 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %102, i32 0, i32 1
  store %struct.sk_buff* %101, %struct.sk_buff** %103, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %8, align 8
  %106 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %108 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32 (%struct.b43_dmaring*, %struct.b43_dmadesc_generic*, i32, i32, i32, i32, i32)*, i32 (%struct.b43_dmaring*, %struct.b43_dmadesc_generic*, i32, i32, i32, i32, i32)** %110, align 8
  %112 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %113 = load %struct.b43_dmadesc_generic*, %struct.b43_dmadesc_generic** %7, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %116 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 %111(%struct.b43_dmaring* %112, %struct.b43_dmadesc_generic* %113, i32 %114, i32 %117, i32 0, i32 0, i32 0)
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %100, %88, %66, %27
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @b43_poison_rx_buffer(%struct.b43_dmaring*, %struct.sk_buff*) #1

declare dso_local i32 @map_descbuffer(%struct.b43_dmaring*, i32, i32, i32) #1

declare dso_local i64 @b43_dma_mapping_error(%struct.b43_dmaring*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @b43err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
