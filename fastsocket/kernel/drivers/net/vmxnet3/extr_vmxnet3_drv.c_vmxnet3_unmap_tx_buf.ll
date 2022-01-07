; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_unmap_tx_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_unmap_tx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_tx_buf_info = type { i64, i32, i32 }
%struct.pci_dev = type { i32 }

@VMXNET3_MAP_SINGLE = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@VMXNET3_MAP_PAGE = common dso_local global i64 0, align 8
@VMXNET3_MAP_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_tx_buf_info*, %struct.pci_dev*)* @vmxnet3_unmap_tx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_unmap_tx_buf(%struct.vmxnet3_tx_buf_info* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.vmxnet3_tx_buf_info*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.vmxnet3_tx_buf_info* %0, %struct.vmxnet3_tx_buf_info** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %5 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %3, align 8
  %6 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VMXNET3_MAP_SINGLE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %3, align 8
  %13 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %3, align 8
  %16 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %19 = call i32 @pci_unmap_single(%struct.pci_dev* %11, i32 %14, i32 %17, i32 %18)
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %3, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VMXNET3_MAP_PAGE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %3, align 8
  %29 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %3, align 8
  %32 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %35 = call i32 @pci_unmap_page(%struct.pci_dev* %27, i32 %30, i32 %33, i32 %34)
  br label %44

36:                                               ; preds = %20
  %37 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %3, align 8
  %38 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VMXNET3_MAP_NONE, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  br label %44

44:                                               ; preds = %36, %26
  br label %45

45:                                               ; preds = %44, %10
  %46 = load i64, i64* @VMXNET3_MAP_NONE, align 8
  %47 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %3, align 8
  %48 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  ret void
}

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
