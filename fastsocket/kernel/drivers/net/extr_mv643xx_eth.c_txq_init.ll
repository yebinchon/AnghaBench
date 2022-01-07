; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_txq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_txq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32, i32, %struct.TYPE_3__*, i64, %struct.tx_queue* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tx_queue = type { i32, i32, i32, i32, i64, i32*, i64, i64, i64 }
%struct.tx_desc = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"can't allocate tx ring (%d bytes)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv643xx_eth_private*, i32)* @txq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txq_init(%struct.mv643xx_eth_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv643xx_eth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tx_queue*, align 8
  %7 = alloca %struct.tx_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tx_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %13 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %12, i32 0, i32 4
  %14 = load %struct.tx_queue*, %struct.tx_queue** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %14, i64 %16
  store %struct.tx_queue* %17, %struct.tx_queue** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %20 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %22 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %25 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %27 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %26, i32 0, i32 8
  store i64 0, i64* %27, align 8
  %28 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %29 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %28, i32 0, i32 7
  store i64 0, i64* %29, align 8
  %30 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %31 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %30, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %33 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 16
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %2
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %43 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %41, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %48 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %51 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @ioremap(i64 %49, i32 %52)
  %54 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %55 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %54, i32 0, i32 5
  store i32* %53, i32** %55, align 8
  %56 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %57 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %60 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  br label %75

61:                                               ; preds = %40, %2
  %62 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %63 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %70 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %69, i32 0, i32 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32* @dma_alloc_coherent(i32 %67, i32 %68, i64* %70, i32 %71)
  %73 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %74 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %73, i32 0, i32 5
  store i32* %72, i32** %74, align 8
  br label %75

75:                                               ; preds = %61, %46
  %76 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %77 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load i32, i32* @KERN_ERR, align 4
  %82 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %83 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %82, i32 0, i32 2
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @dev_printk(i32 %81, %struct.TYPE_4__* %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %141

90:                                               ; preds = %75
  %91 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %92 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @memset(i32* %93, i32 0, i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %98 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %100 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = bitcast i32* %101 to %struct.tx_desc*
  store %struct.tx_desc* %102, %struct.tx_desc** %7, align 8
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %134, %90
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %106 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %137

109:                                              ; preds = %103
  %110 = load %struct.tx_desc*, %struct.tx_desc** %7, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %110, i64 %112
  store %struct.tx_desc* %113, %struct.tx_desc** %10, align 8
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %118 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  store i32 0, i32* %11, align 4
  br label %122

122:                                              ; preds = %121, %109
  %123 = load %struct.tx_desc*, %struct.tx_desc** %10, align 8
  %124 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  %125 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %126 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 16
  %131 = add i64 %127, %130
  %132 = load %struct.tx_desc*, %struct.tx_desc** %10, align 8
  %133 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %122
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %103

137:                                              ; preds = %103
  %138 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %139 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %138, i32 0, i32 3
  %140 = call i32 @skb_queue_head_init(i32* %139)
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %137, %80
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @dev_printk(i32, %struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
