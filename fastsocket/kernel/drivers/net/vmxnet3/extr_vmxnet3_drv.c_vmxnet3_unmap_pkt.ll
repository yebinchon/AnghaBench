; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_unmap_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_unmap_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_tx_queue = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.pci_dev = type { i32 }
%struct.vmxnet3_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.vmxnet3_tx_queue*, %struct.pci_dev*, %struct.vmxnet3_adapter*)* @vmxnet3_unmap_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_unmap_pkt(i64 %0, %struct.vmxnet3_tx_queue* %1, %struct.pci_dev* %2, %struct.vmxnet3_adapter* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.vmxnet3_tx_queue*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.vmxnet3_adapter*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.vmxnet3_tx_queue* %1, %struct.vmxnet3_tx_queue** %6, align 8
  store %struct.pci_dev* %2, %struct.pci_dev** %7, align 8
  store %struct.vmxnet3_adapter* %3, %struct.vmxnet3_adapter** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %6, align 8
  %12 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %6, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %17, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %6, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @VMXNET3_TXDESC_GET_EOP(i32* %31)
  %33 = icmp ne i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %6, align 8
  %37 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %9, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = icmp eq %struct.sk_buff* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %6, align 8
  %48 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %52, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %6, align 8
  %55 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @VMXNET3_INC_RING_IDX_ONLY(i64 %53, i32 %57)
  br label %59

59:                                               ; preds = %66, %4
  %60 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %6, align 8
  %61 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %6, align 8
  %68 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %6, align 8
  %71 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %73
  %75 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %76 = call i32 @vmxnet3_unmap_tx_buf(%struct.TYPE_5__* %74, %struct.pci_dev* %75)
  %77 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %6, align 8
  %78 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %77, i32 0, i32 0
  %79 = call i32 @vmxnet3_cmd_ring_adv_next2comp(%struct.TYPE_6__* %78)
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %59

82:                                               ; preds = %59
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %83)
  %85 = load i32, i32* %10, align 4
  ret i32 %85
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @VMXNET3_TXDESC_GET_EOP(i32*) #1

declare dso_local i32 @VMXNET3_INC_RING_IDX_ONLY(i64, i32) #1

declare dso_local i32 @vmxnet3_unmap_tx_buf(%struct.TYPE_5__*, %struct.pci_dev*) #1

declare dso_local i32 @vmxnet3_cmd_ring_adv_next2comp(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
