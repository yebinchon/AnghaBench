; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_scc_net_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_scc_net_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.net_device = type { i32, i64 }
%struct.scc_channel = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TXS_IDLE = common dso_local global i64 0, align 8
@TXS_IDLE2 = common dso_local global i64 0, align 8
@TXS_BUSY = common dso_local global i64 0, align 8
@KISS_DUPLEX_HALF = common dso_local global i64 0, align 8
@t_dwait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @scc_net_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scc_net_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.scc_channel*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.scc_channel*
  store %struct.scc_channel* %13, %struct.scc_channel** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %18 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %16, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %36

27:                                               ; preds = %22, %2
  %28 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %29 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @dev_kfree_skb(%struct.sk_buff* %33)
  %35 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %35, i32* %3, align 4
  br label %147

36:                                               ; preds = %22
  %37 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %38 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %46 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, %44
  store i32 %49, i32* %47, align 8
  %50 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %51 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 31
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %8, align 1
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @skb_pull(%struct.sk_buff* %61, i32 1)
  %63 = load i8, i8* %8, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %36
  %66 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %67 = load i8, i8* %8, align 1
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @scc_set_param(%struct.scc_channel* %66, i8 signext %67, i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call i32 @dev_kfree_skb(%struct.sk_buff* %73)
  %75 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %75, i32* %3, align 4
  br label %147

76:                                               ; preds = %36
  %77 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %78 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %77, i32 0, i32 0
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %82 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %81, i32 0, i32 3
  %83 = call i64 @skb_queue_len(i32* %82)
  %84 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %85 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %84, i32 0, i32 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %83, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %76
  %91 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %92 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %91, i32 0, i32 3
  %93 = call %struct.sk_buff* @skb_dequeue(i32* %92)
  store %struct.sk_buff* %93, %struct.sk_buff** %9, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %95 = call i32 @dev_kfree_skb(%struct.sk_buff* %94)
  br label %96

96:                                               ; preds = %90, %76
  %97 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %98 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %97, i32 0, i32 3
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = call i32 @skb_queue_tail(i32* %98, %struct.sk_buff* %99)
  %101 = load i32, i32* @jiffies, align 4
  %102 = load %struct.net_device*, %struct.net_device** %5, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %105 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TXS_IDLE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %117, label %110

110:                                              ; preds = %96
  %111 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %112 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @TXS_IDLE2, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %141

117:                                              ; preds = %110, %96
  %118 = load i64, i64* @TXS_BUSY, align 8
  %119 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %120 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store i64 %118, i64* %121, align 8
  %122 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %123 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @KISS_DUPLEX_HALF, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %117
  %129 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %130 = load i32, i32* @t_dwait, align 4
  %131 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %132 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @__scc_start_tx_timer(%struct.scc_channel* %129, i32 %130, i32 %134)
  br label %140

136:                                              ; preds = %117
  %137 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %138 = load i32, i32* @t_dwait, align 4
  %139 = call i32 @__scc_start_tx_timer(%struct.scc_channel* %137, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %136, %128
  br label %141

141:                                              ; preds = %140, %110
  %142 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %143 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %142, i32 0, i32 0
  %144 = load i64, i64* %7, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* %143, i64 %144)
  %146 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %141, %65, %27
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @scc_set_param(%struct.scc_channel*, i8 signext, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @__scc_start_tx_timer(%struct.scc_channel*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
