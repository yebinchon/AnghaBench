; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_meth.c_meth_tx_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_meth.c_meth_tx_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.meth_private = type { i64, i64, i32, i32, %struct.TYPE_8__*, %struct.sk_buff**, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.sk_buff = type { i64 }

@TX_INFO_RPTR = common dso_local global i64 0, align 8
@METH_DMA_TX_INT_EN = common dso_local global i32 0, align 4
@mace = common dso_local global %struct.TYPE_10__* null, align 8
@METH_TX_ST_DONE = common dso_local global i64 0, align 8
@METH_TX_ST_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"RPTR points us here, but packet not done?\0A\00", align 1
@TX_RING_ENTRIES = common dso_local global i32 0, align 4
@METH_INT_TX_EMPTY = common dso_local global i32 0, align 4
@METH_INT_TX_PKT = common dso_local global i32 0, align 4
@METH_TX_ST_DEFER = common dso_local global i64 0, align 8
@METH_TX_ST_EXCCOLL = common dso_local global i64 0, align 8
@METH_TX_ST_LATECOLL = common dso_local global i64 0, align 8
@METH_TX_ST_TOOLONG = common dso_local global i64 0, align 8
@METH_TX_ST_UNDERRUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64)* @meth_tx_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meth_tx_cleanup(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.meth_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.meth_private* @netdev_priv(%struct.net_device* %10)
  store %struct.meth_private* %11, %struct.meth_private** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @TX_INFO_RPTR, align 8
  %14 = and i64 %12, %13
  %15 = lshr i64 %14, 16
  store i64 %15, i64* %9, align 8
  %16 = load %struct.meth_private*, %struct.meth_private** %5, align 8
  %17 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %16, i32 0, i32 2
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i32, i32* @METH_DMA_TX_INT_EN, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.meth_private*, %struct.meth_private** %5, align 8
  %23 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.meth_private*, %struct.meth_private** %5, align 8
  %27 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mace, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %91, %2
  %33 = load %struct.meth_private*, %struct.meth_private** %5, align 8
  %34 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %124

38:                                               ; preds = %32
  %39 = load %struct.meth_private*, %struct.meth_private** %5, align 8
  %40 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %39, i32 0, i32 5
  %41 = load %struct.sk_buff**, %struct.sk_buff*** %40, align 8
  %42 = load %struct.meth_private*, %struct.meth_private** %5, align 8
  %43 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %41, i64 %44
  %46 = load %struct.sk_buff*, %struct.sk_buff** %45, align 8
  store %struct.sk_buff* %46, %struct.sk_buff** %8, align 8
  %47 = load %struct.meth_private*, %struct.meth_private** %5, align 8
  %48 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %47, i32 0, i32 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.meth_private*, %struct.meth_private** %5, align 8
  %51 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @METH_TX_ST_DONE, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %38
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @METH_TX_ST_SUCCESS, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %74
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  br label %88

82:                                               ; preds = %61
  %83 = load %struct.net_device*, %struct.net_device** %3, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %66
  br label %91

89:                                               ; preds = %38
  %90 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %124

91:                                               ; preds = %88
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %92)
  %94 = load %struct.meth_private*, %struct.meth_private** %5, align 8
  %95 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %94, i32 0, i32 5
  %96 = load %struct.sk_buff**, %struct.sk_buff*** %95, align 8
  %97 = load %struct.meth_private*, %struct.meth_private** %5, align 8
  %98 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %96, i64 %99
  store %struct.sk_buff* null, %struct.sk_buff** %100, align 8
  %101 = load %struct.meth_private*, %struct.meth_private** %5, align 8
  %102 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %101, i32 0, i32 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load %struct.meth_private*, %struct.meth_private** %5, align 8
  %105 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load %struct.meth_private*, %struct.meth_private** %5, align 8
  %111 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, 1
  %114 = load i32, i32* @TX_RING_ENTRIES, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = and i64 %113, %116
  %118 = load %struct.meth_private*, %struct.meth_private** %5, align 8
  %119 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.meth_private*, %struct.meth_private** %5, align 8
  %121 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %121, align 4
  br label %32

124:                                              ; preds = %89, %32
  %125 = load %struct.net_device*, %struct.net_device** %3, align 8
  %126 = call i64 @netif_queue_stopped(%struct.net_device* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = load %struct.net_device*, %struct.net_device** %3, align 8
  %130 = call i32 @meth_tx_full(%struct.net_device* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load %struct.net_device*, %struct.net_device** %3, align 8
  %134 = call i32 @netif_wake_queue(%struct.net_device* %133)
  br label %135

135:                                              ; preds = %132, %128, %124
  %136 = load i32, i32* @METH_INT_TX_EMPTY, align 4
  %137 = load i32, i32* @METH_INT_TX_PKT, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mace, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 4
  %142 = load %struct.meth_private*, %struct.meth_private** %5, align 8
  %143 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %142, i32 0, i32 2
  %144 = load i64, i64* %7, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* %143, i64 %144)
  ret void
}

declare dso_local %struct.meth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @meth_tx_full(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
