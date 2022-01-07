; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_txfree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_txfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sh_eth_private = type { i64, i32, %struct.TYPE_2__, i32**, %struct.sh_eth_txdesc* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sh_eth_txdesc = type { i32, i64 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@TD_TACT = common dso_local global i32 0, align 4
@TD_TFP = common dso_local global i32 0, align 4
@TD_TDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sh_eth_txfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_txfree(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sh_eth_private*, align 8
  %4 = alloca %struct.sh_eth_txdesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %7)
  store %struct.sh_eth_private* %8, %struct.sh_eth_private** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %100, %1
  %10 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %11 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %14 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = sub nsw i64 %12, %16
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %105

19:                                               ; preds = %9
  %20 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %21 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TX_RING_SIZE, align 4
  %24 = srem i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %26 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %25, i32 0, i32 4
  %27 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %27, i64 %29
  store %struct.sh_eth_txdesc* %30, %struct.sh_eth_txdesc** %4, align 8
  %31 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %4, align 8
  %32 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %35 = load i32, i32* @TD_TACT, align 4
  %36 = call i32 @cpu_to_edmac(%struct.sh_eth_private* %34, i32 %35)
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %19
  br label %105

40:                                               ; preds = %19
  %41 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %42 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %41, i32 0, i32 3
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %40
  %50 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %51 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %50, i32 0, i32 3
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @dev_kfree_skb_irq(i32* %56)
  %58 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %59 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %58, i32 0, i32 3
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %49, %40
  %67 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %68 = load i32, i32* @TD_TFP, align 4
  %69 = call i32 @cpu_to_edmac(%struct.sh_eth_private* %67, i32 %68)
  %70 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %4, align 8
  %71 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @TX_RING_SIZE, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp sge i32 %72, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %66
  %77 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %78 = load i32, i32* @TD_TDLE, align 4
  %79 = call i32 @cpu_to_edmac(%struct.sh_eth_private* %77, i32 %78)
  %80 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %4, align 8
  %81 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %76, %66
  %85 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %86 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %4, align 8
  %91 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %94 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %92
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  br label %100

100:                                              ; preds = %84
  %101 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %102 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  br label %9

105:                                              ; preds = %39, %9
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_edmac(%struct.sh_eth_private*, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
