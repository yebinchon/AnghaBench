; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_alloc_rq_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_alloc_rq_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_rq = type { i32 }
%struct.fnic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@FC_FRAME_HEADROOM = common dso_local global i64 0, align 8
@FC_MAX_FRAME = common dso_local global i64 0, align 8
@FC_FRAME_TAILROOM = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to allocate RQ sk_buff\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_alloc_rq_frame(%struct.vnic_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnic_rq*, align 8
  %4 = alloca %struct.fnic*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vnic_rq* %0, %struct.vnic_rq** %3, align 8
  %8 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %9 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.fnic* @vnic_dev_priv(i32 %10)
  store %struct.fnic* %11, %struct.fnic** %4, align 8
  %12 = load i64, i64* @FC_FRAME_HEADROOM, align 8
  %13 = load i64, i64* @FC_MAX_FRAME, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* @FC_FRAME_TAILROOM, align 8
  %16 = add nsw i64 %14, %15
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.sk_buff* @dev_alloc_skb(i64 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @KERN_DEBUG, align 4
  %23 = load %struct.fnic*, %struct.fnic** %4, align 8
  %24 = getelementptr inbounds %struct.fnic, %struct.fnic* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @FNIC_FCS_DBG(i32 %22, i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %1
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @skb_reset_mac_header(%struct.sk_buff* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @skb_reset_transport_header(%struct.sk_buff* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @skb_reset_network_header(%struct.sk_buff* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @skb_put(%struct.sk_buff* %38, i64 %39)
  %41 = load %struct.fnic*, %struct.fnic** %4, align 8
  %42 = getelementptr inbounds %struct.fnic, %struct.fnic* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %49 = call i32 @pci_map_single(i32 %43, i32 %46, i64 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @fnic_queue_rq_desc(%struct.vnic_rq* %50, %struct.sk_buff* %51, i32 %52, i64 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %31, %21
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.fnic* @vnic_dev_priv(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @FNIC_FCS_DBG(i32, i32, i8*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @pci_map_single(i32, i32, i64, i32) #1

declare dso_local i32 @fnic_queue_rq_desc(%struct.vnic_rq*, %struct.sk_buff*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
