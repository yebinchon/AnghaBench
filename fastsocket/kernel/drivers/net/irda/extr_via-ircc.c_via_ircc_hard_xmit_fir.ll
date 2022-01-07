; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_via-ircc.c_via_ircc_hard_xmit_fir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_via-ircc.c_via_ircc_hard_xmit_fir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.via_ircc_cb = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @via_ircc_hard_xmit_fir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_ircc_hard_xmit_fir(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.via_ircc_cb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.via_ircc_cb* @netdev_priv(%struct.net_device* %10)
  store %struct.via_ircc_cb* %11, %struct.via_ircc_cb** %6, align 8
  %12 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %13 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %17 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %22, i32* %3, align 4
  br label %157

23:                                               ; preds = %2
  %24 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %25 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 12406
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @iodelay(i32 1500)
  br label %32

30:                                               ; preds = %23
  %31 = call i32 @udelay(i32 1500)
  br label %32

32:                                               ; preds = %30, %28
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = call i32 @netif_stop_queue(%struct.net_device* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i32 @irda_get_next_speed(%struct.sk_buff* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %39 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %37, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @via_ircc_change_speed(%struct.via_ircc_cb* %52, i32 %53)
  %55 = load i8*, i8** @jiffies, align 8
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @dev_kfree_skb(%struct.sk_buff* %58)
  %60 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %60, i32* %3, align 4
  br label %157

61:                                               ; preds = %46
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %64 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65, %43, %32
  %67 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %68 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %67, i32 0, i32 2
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %72 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %76 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %80 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32 %74, i32* %84, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %89 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %93 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  store i64 %87, i64* %97, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %102 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %100
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.net_device*, %struct.net_device** %5, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %110
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %120 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %124 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %118, i32 %129, i64 %132)
  %134 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %135 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %140 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %141, align 8
  %144 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @via_ircc_dma_xmit(%struct.via_ircc_cb* %144, i32 %145)
  %147 = load i8*, i8** @jiffies, align 8
  %148 = load %struct.net_device*, %struct.net_device** %5, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %151 = call i32 @dev_kfree_skb(%struct.sk_buff* %150)
  %152 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %6, align 8
  %153 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %152, i32 0, i32 2
  %154 = load i64, i64* %9, align 8
  %155 = call i32 @spin_unlock_irqrestore(i32* %153, i64 %154)
  %156 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %66, %51, %21
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.via_ircc_cb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @iodelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @irda_get_next_speed(%struct.sk_buff*) #1

declare dso_local i32 @via_ircc_change_speed(%struct.via_ircc_cb*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @via_ircc_dma_xmit(%struct.via_ircc_cb*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
