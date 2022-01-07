; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_nes_queue_mgt_skbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_nes_queue_mgt_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.nes_vnic = type { i32, i32 }
%struct.nes_qp = type { i32 }
%struct.nes_rskb_cb = type { %struct.nes_qp* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_queue_mgt_skbs(%struct.sk_buff* %0, %struct.nes_vnic* %1, %struct.nes_qp* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nes_vnic*, align 8
  %6 = alloca %struct.nes_qp*, align 8
  %7 = alloca %struct.nes_rskb_cb*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nes_vnic* %1, %struct.nes_vnic** %5, align 8
  store %struct.nes_qp* %2, %struct.nes_qp** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = bitcast i32* %11 to %struct.nes_rskb_cb*
  store %struct.nes_rskb_cb* %12, %struct.nes_rskb_cb** %7, align 8
  %13 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %14 = load %struct.nes_rskb_cb*, %struct.nes_rskb_cb** %7, align 8
  %15 = getelementptr inbounds %struct.nes_rskb_cb, %struct.nes_rskb_cb* %14, i32 0, i32 0
  store %struct.nes_qp* %13, %struct.nes_qp** %15, align 8
  %16 = load %struct.nes_vnic*, %struct.nes_vnic** %5, align 8
  %17 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %16, i32 0, i32 1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @skb_queue_tail(i32* %17, %struct.sk_buff* %18)
  %20 = load %struct.nes_vnic*, %struct.nes_vnic** %5, align 8
  %21 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %20, i32 0, i32 0
  %22 = call i32 @wake_up_interruptible(i32* %21)
  ret void
}

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
