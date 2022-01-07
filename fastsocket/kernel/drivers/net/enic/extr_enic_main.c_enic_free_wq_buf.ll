; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_free_wq_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_free_wq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq = type { i32 }
%struct.vnic_wq_buf = type { i64, i32, i32, i64 }
%struct.enic = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_wq*, %struct.vnic_wq_buf*)* @enic_free_wq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_free_wq_buf(%struct.vnic_wq* %0, %struct.vnic_wq_buf* %1) #0 {
  %3 = alloca %struct.vnic_wq*, align 8
  %4 = alloca %struct.vnic_wq_buf*, align 8
  %5 = alloca %struct.enic*, align 8
  store %struct.vnic_wq* %0, %struct.vnic_wq** %3, align 8
  store %struct.vnic_wq_buf* %1, %struct.vnic_wq_buf** %4, align 8
  %6 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %7 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.enic* @vnic_dev_priv(i32 %8)
  store %struct.enic* %9, %struct.enic** %5, align 8
  %10 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %11 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.enic*, %struct.enic** %5, align 8
  %16 = getelementptr inbounds %struct.enic, %struct.enic* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %19 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %22 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %25 = call i32 @pci_unmap_single(i32 %17, i32 %20, i32 %23, i32 %24)
  br label %38

26:                                               ; preds = %2
  %27 = load %struct.enic*, %struct.enic** %5, align 8
  %28 = getelementptr inbounds %struct.enic, %struct.enic* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %31 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %34 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %37 = call i32 @pci_unmap_page(i32 %29, i32 %32, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %26, %14
  %39 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %40 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %45 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dev_kfree_skb_any(i64 %46)
  br label %48

48:                                               ; preds = %43, %38
  ret void
}

declare dso_local %struct.enic* @vnic_dev_priv(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
