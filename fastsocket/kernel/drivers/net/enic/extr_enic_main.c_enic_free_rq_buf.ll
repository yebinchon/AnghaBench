; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_free_rq_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_free_rq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_rq = type { i32 }
%struct.vnic_rq_buf = type { i32, i32, i32 }
%struct.enic = type { i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_rq*, %struct.vnic_rq_buf*)* @enic_free_rq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_free_rq_buf(%struct.vnic_rq* %0, %struct.vnic_rq_buf* %1) #0 {
  %3 = alloca %struct.vnic_rq*, align 8
  %4 = alloca %struct.vnic_rq_buf*, align 8
  %5 = alloca %struct.enic*, align 8
  store %struct.vnic_rq* %0, %struct.vnic_rq** %3, align 8
  store %struct.vnic_rq_buf* %1, %struct.vnic_rq_buf** %4, align 8
  %6 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %7 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.enic* @vnic_dev_priv(i32 %8)
  store %struct.enic* %9, %struct.enic** %5, align 8
  %10 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %11 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %31

15:                                               ; preds = %2
  %16 = load %struct.enic*, %struct.enic** %5, align 8
  %17 = getelementptr inbounds %struct.enic, %struct.enic* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %20 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %23 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %26 = call i32 @pci_unmap_single(i32 %18, i32 %21, i32 %24, i32 %25)
  %27 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %28 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_kfree_skb_any(i32 %29)
  br label %31

31:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.enic* @vnic_dev_priv(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
