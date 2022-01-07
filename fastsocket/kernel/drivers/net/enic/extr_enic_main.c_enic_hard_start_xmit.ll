; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.enic = type { i32*, %struct.vnic_wq* }
%struct.vnic_wq = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@ENIC_NON_TSO_MAX_DESC = common dso_local global i64 0, align 8
@ENIC_DESC_MAX_SPLITS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"BUG! Tx ring full when queue awake!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @enic_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.enic*, align 8
  %7 = alloca %struct.vnic_wq*, align 8
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.enic* @netdev_priv(%struct.net_device* %9)
  store %struct.enic* %10, %struct.enic** %6, align 8
  %11 = load %struct.enic*, %struct.enic** %6, align 8
  %12 = getelementptr inbounds %struct.enic, %struct.enic* %11, i32 0, i32 1
  %13 = load %struct.vnic_wq*, %struct.vnic_wq** %12, align 8
  %14 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %13, i64 0
  store %struct.vnic_wq* %14, %struct.vnic_wq** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @dev_kfree_skb(%struct.sk_buff* %20)
  %22 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %22, i32* %3, align 4
  br label %95

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  %35 = load i64, i64* @ENIC_NON_TSO_MAX_DESC, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i64 @skb_linearize(%struct.sk_buff* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @dev_kfree_skb(%struct.sk_buff* %42)
  %44 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %95

45:                                               ; preds = %37, %29, %23
  %46 = load %struct.enic*, %struct.enic** %6, align 8
  %47 = getelementptr inbounds %struct.enic, %struct.enic* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %53 = call i64 @vnic_wq_desc_avail(%struct.vnic_wq* %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ENIC_DESC_MAX_SPLITS, align 8
  %59 = add nsw i64 %57, %58
  %60 = icmp slt i64 %53, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %45
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = call i32 @netif_stop_queue(%struct.net_device* %62)
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = call i32 @netdev_err(%struct.net_device* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.enic*, %struct.enic** %6, align 8
  %67 = getelementptr inbounds %struct.enic, %struct.enic* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %72, i32* %3, align 4
  br label %95

73:                                               ; preds = %45
  %74 = load %struct.enic*, %struct.enic** %6, align 8
  %75 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = call i32 @enic_queue_wq_skb(%struct.enic* %74, %struct.vnic_wq* %75, %struct.sk_buff* %76)
  %78 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %79 = call i64 @vnic_wq_desc_avail(%struct.vnic_wq* %78)
  %80 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %81 = load i64, i64* @ENIC_DESC_MAX_SPLITS, align 8
  %82 = add nsw i64 %80, %81
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = call i32 @netif_stop_queue(%struct.net_device* %85)
  br label %87

87:                                               ; preds = %84, %73
  %88 = load %struct.enic*, %struct.enic** %6, align 8
  %89 = getelementptr inbounds %struct.enic, %struct.enic* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %87, %61, %41, %19
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vnic_wq_desc_avail(%struct.vnic_wq*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @enic_queue_wq_skb(%struct.enic*, %struct.vnic_wq*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
