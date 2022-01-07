; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_ctrl_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_ctrl_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_ctrl_txq = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32* }
%struct.sk_buff = type { i32, i32 }
%struct.fw_wr_hdr = type { i32 }

@NET_XMIT_DROP = common dso_local global i32 0, align 4
@NET_XMIT_CN = common dso_local global i32 0, align 4
@TXQ_STOP_THRES = common dso_local global i64 0, align 8
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge_ctrl_txq*, %struct.sk_buff*)* @ctrl_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_xmit(%struct.sge_ctrl_txq* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sge_ctrl_txq*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_wr_hdr*, align 8
  store %struct.sge_ctrl_txq* %0, %struct.sge_ctrl_txq** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call i32 @is_imm(%struct.sk_buff* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = call i32 @WARN_ON(i32 1)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @dev_kfree_skb(%struct.sk_buff* %17)
  %19 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %19, i32* %3, align 4
  br label %94

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DIV_ROUND_UP(i32 %23, i32 4)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %4, align 8
  %26 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %4, align 8
  %30 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %4, align 8
  %39 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %38, i32 0, i32 1
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @__skb_queue_tail(%struct.TYPE_7__* %39, %struct.sk_buff* %40)
  %42 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %4, align 8
  %43 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load i32, i32* @NET_XMIT_CN, align 4
  store i32 %46, i32* %3, align 4
  br label %94

47:                                               ; preds = %20
  %48 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %4, align 8
  %49 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %4, align 8
  %53 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = bitcast i32* %56 to %struct.fw_wr_hdr*
  store %struct.fw_wr_hdr* %57, %struct.fw_wr_hdr** %7, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %4, align 8
  %60 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %59, i32 0, i32 2
  %61 = load %struct.fw_wr_hdr*, %struct.fw_wr_hdr** %7, align 8
  %62 = call i32 @inline_tx_skb(%struct.sk_buff* %58, %struct.TYPE_6__* %60, %struct.fw_wr_hdr* %61)
  %63 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %4, align 8
  %64 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %63, i32 0, i32 2
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @txq_advance(%struct.TYPE_6__* %64, i32 %65)
  %67 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %4, align 8
  %68 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %67, i32 0, i32 2
  %69 = call i64 @txq_avail(%struct.TYPE_6__* %68)
  %70 = load i64, i64* @TXQ_STOP_THRES, align 8
  %71 = icmp slt i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %47
  %76 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %4, align 8
  %77 = load %struct.fw_wr_hdr*, %struct.fw_wr_hdr** %7, align 8
  %78 = call i32 @ctrlq_check_stop(%struct.sge_ctrl_txq* %76, %struct.fw_wr_hdr* %77)
  br label %79

79:                                               ; preds = %75, %47
  %80 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %4, align 8
  %81 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %4, align 8
  %84 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %83, i32 0, i32 2
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @ring_tx_db(i32 %82, %struct.TYPE_6__* %84, i32 %85)
  %87 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %4, align 8
  %88 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call i32 @kfree_skb(%struct.sk_buff* %91)
  %93 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %79, %34, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_imm(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_7__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inline_tx_skb(%struct.sk_buff*, %struct.TYPE_6__*, %struct.fw_wr_hdr*) #1

declare dso_local i32 @txq_advance(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @txq_avail(%struct.TYPE_6__*) #1

declare dso_local i32 @ctrlq_check_stop(%struct.sge_ctrl_txq*, %struct.fw_wr_hdr*) #1

declare dso_local i32 @ring_tx_db(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
