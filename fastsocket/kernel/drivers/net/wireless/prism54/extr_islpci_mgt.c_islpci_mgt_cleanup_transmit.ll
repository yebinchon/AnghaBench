; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_islpci_mgt.c_islpci_mgt_cleanup_transmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_islpci_mgt.c_islpci_mgt_cleanup_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.islpci_membuf*, i64 }
%struct.islpci_membuf = type { i64, i32*, i64 }
%struct.TYPE_5__ = type { i32* }

@ISL38XX_CB_TX_MGMTQ = common dso_local global i64 0, align 8
@ISL38XX_CB_MGMT_QSIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@SHOW_FUNCTION_CALLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @islpci_mgt_cleanup_transmit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.islpci_membuf*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.TYPE_4__* @netdev_priv(%struct.net_device* %8)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %4, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @ISL38XX_CB_TX_MGMTQ, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = call i32 (...) @barrier()
  br label %22

22:                                               ; preds = %61, %1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %22
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ISL38XX_CB_MGMT_QSIZE, align 4
  %33 = srem i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load %struct.islpci_membuf*, %struct.islpci_membuf** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.islpci_membuf, %struct.islpci_membuf* %36, i64 %38
  store %struct.islpci_membuf* %39, %struct.islpci_membuf** %7, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.islpci_membuf*, %struct.islpci_membuf** %7, align 8
  %44 = getelementptr inbounds %struct.islpci_membuf, %struct.islpci_membuf* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.islpci_membuf*, %struct.islpci_membuf** %7, align 8
  %47 = getelementptr inbounds %struct.islpci_membuf, %struct.islpci_membuf* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %50 = call i32 @pci_unmap_single(i32 %42, i64 %45, i64 %48, i32 %49)
  %51 = load %struct.islpci_membuf*, %struct.islpci_membuf** %7, align 8
  %52 = getelementptr inbounds %struct.islpci_membuf, %struct.islpci_membuf* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.islpci_membuf*, %struct.islpci_membuf** %7, align 8
  %54 = getelementptr inbounds %struct.islpci_membuf, %struct.islpci_membuf* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @kfree(i32* %55)
  %57 = load %struct.islpci_membuf*, %struct.islpci_membuf** %7, align 8
  %58 = getelementptr inbounds %struct.islpci_membuf, %struct.islpci_membuf* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load %struct.islpci_membuf*, %struct.islpci_membuf** %7, align 8
  %60 = getelementptr inbounds %struct.islpci_membuf, %struct.islpci_membuf* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %28
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  br label %22

66:                                               ; preds = %22
  ret void
}

declare dso_local %struct.TYPE_4__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
