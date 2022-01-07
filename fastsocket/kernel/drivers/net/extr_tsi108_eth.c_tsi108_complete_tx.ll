; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tsi108_eth.c_tsi108_complete_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tsi108_eth.c_tsi108_complete_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.tsi108_prv_data = type { i32, i32, i64, %struct.TYPE_2__*, i32, %struct.sk_buff** }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@TSI108_TX_OWN = common dso_local global i32 0, align 4
@TSI108_TX_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: bad tx packet, misc %x\0A\00", align 1
@TSI108_TXRING_LEN = common dso_local global i32 0, align 4
@TSI108_TX_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tsi108_complete_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi108_complete_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tsi108_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.tsi108_prv_data* @netdev_priv(%struct.net_device* %7)
  store %struct.tsi108_prv_data* %8, %struct.tsi108_prv_data** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %101, %1
  %10 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %11 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %16 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %19 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %17, %20
  br label %22

22:                                               ; preds = %14, %9
  %23 = phi i1 [ true, %9 ], [ %21, %14 ]
  br i1 %23, label %24, label %102

24:                                               ; preds = %22
  %25 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %26 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  %28 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %29 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TSI108_TX_OWN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %102

40:                                               ; preds = %24
  %41 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %42 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %41, i32 0, i32 5
  %43 = load %struct.sk_buff**, %struct.sk_buff*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %43, i64 %45
  %47 = load %struct.sk_buff*, %struct.sk_buff** %46, align 8
  store %struct.sk_buff* %47, %struct.sk_buff** %5, align 8
  %48 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %49 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TSI108_TX_OK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %40
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %64 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %70)
  br label %72

72:                                               ; preds = %59, %40
  %73 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %74 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* @TSI108_TXRING_LEN, align 4
  %78 = srem i32 %76, %77
  %79 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %80 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %82 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %86 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @TSI108_TX_EOF, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %72
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %97)
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %96, %72
  br label %9

102:                                              ; preds = %39, %22
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %102
  %106 = load %struct.net_device*, %struct.net_device** %2, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @is_valid_ether_addr(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %113 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.net_device*, %struct.net_device** %2, align 8
  %118 = call i32 @netif_wake_queue(%struct.net_device* %117)
  br label %119

119:                                              ; preds = %116, %111, %105
  br label %120

120:                                              ; preds = %119, %102
  ret void
}

declare dso_local %struct.tsi108_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
