; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_mgt_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_mgt_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_vnic = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32*, i64 }
%struct.nes_rskb_cb = type { %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mgt_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgt_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nes_vnic*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nes_rskb_cb*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.nes_vnic*
  store %struct.nes_vnic* %7, %struct.nes_vnic** %3, align 8
  br label %8

8:                                                ; preds = %75, %1
  %9 = call i64 (...) @kthread_should_stop()
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %76

12:                                               ; preds = %8
  %13 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %14 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %17 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %16, i32 0, i32 0
  %18 = call i64 @skb_queue_len(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = call i64 (...) @kthread_should_stop()
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %20, %12
  %24 = phi i1 [ true, %12 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @wait_event_interruptible(i32 %15, i32 %25)
  br label %27

27:                                               ; preds = %38, %23
  %28 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %29 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %28, i32 0, i32 0
  %30 = call i64 @skb_queue_len(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = call i64 (...) @kthread_should_stop()
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i1 [ false, %27 ], [ %35, %32 ]
  br i1 %37, label %38, label %75

38:                                               ; preds = %36
  %39 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %40 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %39, i32 0, i32 0
  %41 = call %struct.sk_buff* @skb_dequeue(i32* %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %4, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = bitcast i32* %45 to %struct.nes_rskb_cb*
  store %struct.nes_rskb_cb* %46, %struct.nes_rskb_cb** %5, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ETH_HLEN, align 8
  %51 = sub nsw i64 %49, %50
  %52 = load %struct.nes_rskb_cb*, %struct.nes_rskb_cb** %5, align 8
  %53 = getelementptr inbounds %struct.nes_rskb_cb, %struct.nes_rskb_cb* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %55 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nes_rskb_cb*, %struct.nes_rskb_cb** %5, align 8
  %60 = getelementptr inbounds %struct.nes_rskb_cb, %struct.nes_rskb_cb* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %63 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %66 = call i32 @pci_map_single(i32 %58, i64 %61, i32 %64, i32 %65)
  %67 = load %struct.nes_rskb_cb*, %struct.nes_rskb_cb** %5, align 8
  %68 = getelementptr inbounds %struct.nes_rskb_cb, %struct.nes_rskb_cb* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %71 = load %struct.nes_rskb_cb*, %struct.nes_rskb_cb** %5, align 8
  %72 = getelementptr inbounds %struct.nes_rskb_cb, %struct.nes_rskb_cb* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = call i32 @queue_fpdus(%struct.sk_buff* %69, %struct.nes_vnic* %70, %struct.TYPE_4__* %73)
  br label %27

75:                                               ; preds = %36
  br label %8

76:                                               ; preds = %8
  br label %77

77:                                               ; preds = %82, %76
  %78 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %79 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %78, i32 0, i32 0
  %80 = call i64 @skb_queue_len(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %77
  %83 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %84 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %83, i32 0, i32 0
  %85 = call %struct.sk_buff* @skb_dequeue(i32* %84)
  store %struct.sk_buff* %85, %struct.sk_buff** %4, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = bitcast i32* %89 to %struct.nes_rskb_cb*
  store %struct.nes_rskb_cb* %90, %struct.nes_rskb_cb** %5, align 8
  %91 = load %struct.nes_rskb_cb*, %struct.nes_rskb_cb** %5, align 8
  %92 = getelementptr inbounds %struct.nes_rskb_cb, %struct.nes_rskb_cb* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @nes_rem_ref_cm_node(i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %97)
  br label %77

99:                                               ; preds = %77
  ret i32 0
}

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @pci_map_single(i32, i64, i32, i32) #1

declare dso_local i32 @queue_fpdus(%struct.sk_buff*, %struct.nes_vnic*, %struct.TYPE_4__*) #1

declare dso_local i32 @nes_rem_ref_cm_node(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
