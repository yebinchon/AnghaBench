; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_rxq_deinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_rxq_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_queue = type { i32, i64, i64, i64*, i32, i32, i64 }
%struct.mv643xx_eth_private = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"error freeing rx ring -- %d skbs stuck\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rx_queue*)* @rxq_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxq_deinit(%struct.rx_queue* %0) #0 {
  %2 = alloca %struct.rx_queue*, align 8
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca i32, align 4
  store %struct.rx_queue* %0, %struct.rx_queue** %2, align 8
  %5 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %6 = call %struct.mv643xx_eth_private* @rxq_to_mp(%struct.rx_queue* %5)
  store %struct.mv643xx_eth_private* %6, %struct.mv643xx_eth_private** %3, align 8
  %7 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %8 = call i32 @rxq_disable(%struct.rx_queue* %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %38, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %12 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %9
  %16 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %17 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %16, i32 0, i32 3
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %15
  %25 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %26 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %25, i32 0, i32 3
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dev_kfree_skb(i64 %31)
  %33 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %34 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %24, %15
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %9

41:                                               ; preds = %9
  %42 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %43 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i32, i32* @KERN_ERR, align 4
  %48 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %49 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %53 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @dev_printk(i32 %47, %struct.TYPE_4__* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %46, %41
  %57 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %58 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %63 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %66 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sle i64 %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %71 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @iounmap(i32 %72)
  br label %91

74:                                               ; preds = %61, %56
  %75 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %76 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %82 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %85 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %88 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dma_free_coherent(i32 %80, i64 %83, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %74, %69
  %92 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %93 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %92, i32 0, i32 3
  %94 = load i64*, i64** %93, align 8
  %95 = call i32 @kfree(i64* %94)
  ret void
}

declare dso_local %struct.mv643xx_eth_private* @rxq_to_mp(%struct.rx_queue*) #1

declare dso_local i32 @rxq_disable(%struct.rx_queue*) #1

declare dso_local i32 @dev_kfree_skb(i64) #1

declare dso_local i32 @dev_printk(i32, %struct.TYPE_4__*, i8*, i64) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
