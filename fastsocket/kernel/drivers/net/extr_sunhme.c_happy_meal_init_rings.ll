; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunhme.c_happy_meal_init_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunhme.c_happy_meal_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.happy_meal = type { i32, %struct.sk_buff**, i64, i64, i64, i64, %struct.net_device*, %struct.hmeal_init_block* }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.hmeal_init_block = type { i32*, i32* }

@.str = private unnamed_addr constant [42 x i8] c"happy_meal_init_rings: counters to zero, \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"clean, \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"init rxring, \00", align 1
@RX_RING_SIZE = common dso_local global i32 0, align 4
@RX_BUF_ALLOC_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@RX_OFFSET = common dso_local global i32 0, align 4
@RXFLAG_OWN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"init txring, \00", align 1
@TX_RING_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.happy_meal*)* @happy_meal_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @happy_meal_init_rings(%struct.happy_meal* %0) #0 {
  %2 = alloca %struct.happy_meal*, align 8
  %3 = alloca %struct.hmeal_init_block*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.happy_meal* %0, %struct.happy_meal** %2, align 8
  %7 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %8 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %7, i32 0, i32 7
  %9 = load %struct.hmeal_init_block*, %struct.hmeal_init_block** %8, align 8
  store %struct.hmeal_init_block* %9, %struct.hmeal_init_block** %3, align 8
  %10 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %11 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %10, i32 0, i32 6
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = call i32 @HMD(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %15 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %17 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %19 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %21 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = call i32 @HMD(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %24 = call i32 @happy_meal_clean_rings(%struct.happy_meal* %23)
  %25 = call i32 @HMD(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %88, %1
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @RX_RING_SIZE, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %91

30:                                               ; preds = %26
  %31 = load i32, i32* @RX_BUF_ALLOC_SIZE, align 4
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call %struct.sk_buff* @happy_meal_alloc_skb(i32 %31, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %38 = load %struct.hmeal_init_block*, %struct.hmeal_init_block** %3, align 8
  %39 = getelementptr inbounds %struct.hmeal_init_block, %struct.hmeal_init_block* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @hme_write_rxd(%struct.happy_meal* %37, i32* %43, i32 0, i32 0)
  br label %88

45:                                               ; preds = %30
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %48 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %47, i32 0, i32 1
  %49 = load %struct.sk_buff**, %struct.sk_buff*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %49, i64 %51
  store %struct.sk_buff* %46, %struct.sk_buff** %52, align 8
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  store %struct.net_device* %53, %struct.net_device** %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = load i32, i32* @ETH_FRAME_LEN, align 4
  %58 = load i32, i32* @RX_OFFSET, align 4
  %59 = add nsw i32 %57, %58
  %60 = add nsw i32 %59, 4
  %61 = call i32 @skb_put(%struct.sk_buff* %56, i32 %60)
  %62 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %63 = load %struct.hmeal_init_block*, %struct.hmeal_init_block** %3, align 8
  %64 = getelementptr inbounds %struct.hmeal_init_block, %struct.hmeal_init_block* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* @RXFLAG_OWN, align 4
  %70 = load i32, i32* @RX_BUF_ALLOC_SIZE, align 4
  %71 = load i32, i32* @RX_OFFSET, align 4
  %72 = sub nsw i32 %70, %71
  %73 = shl i32 %72, 16
  %74 = or i32 %69, %73
  %75 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %76 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @RX_BUF_ALLOC_SIZE, align 4
  %82 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %83 = call i32 @dma_map_single(i32 %77, i32 %80, i32 %81, i32 %82)
  %84 = call i32 @hme_write_rxd(%struct.happy_meal* %62, i32* %68, i32 %74, i32 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = load i32, i32* @RX_OFFSET, align 4
  %87 = call i32 @skb_reserve(%struct.sk_buff* %85, i32 %86)
  br label %88

88:                                               ; preds = %45, %36
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %26

91:                                               ; preds = %26
  %92 = call i32 @HMD(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %106, %91
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @TX_RING_SIZE, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %99 = load %struct.hmeal_init_block*, %struct.hmeal_init_block** %3, align 8
  %100 = getelementptr inbounds %struct.hmeal_init_block, %struct.hmeal_init_block* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @hme_write_txd(%struct.happy_meal* %98, i32* %104, i32 0, i32 0)
  br label %106

106:                                              ; preds = %97
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %93

109:                                              ; preds = %93
  %110 = call i32 @HMD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @HMD(i8*) #1

declare dso_local i32 @happy_meal_clean_rings(%struct.happy_meal*) #1

declare dso_local %struct.sk_buff* @happy_meal_alloc_skb(i32, i32) #1

declare dso_local i32 @hme_write_rxd(%struct.happy_meal*, i32*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @hme_write_txd(%struct.happy_meal*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
