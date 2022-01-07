; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_tx_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_tx_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipg_nic_private = type { %struct.TYPE_2__**, i32, %struct.ipg_tx* }
%struct.TYPE_2__ = type { i32 }
%struct.ipg_tx = type { i32 }

@IPG_TFDLIST_LENGTH = common dso_local global i32 0, align 4
@IPG_TFI_FRAGLEN = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipg_nic_private*)* @ipg_tx_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipg_tx_clear(%struct.ipg_nic_private* %0) #0 {
  %2 = alloca %struct.ipg_nic_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipg_tx*, align 8
  store %struct.ipg_nic_private* %0, %struct.ipg_nic_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %61, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @IPG_TFDLIST_LENGTH, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %64

9:                                                ; preds = %5
  %10 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %2, align 8
  %11 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %60

18:                                               ; preds = %9
  %19 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %2, align 8
  %20 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %19, i32 0, i32 2
  %21 = load %struct.ipg_tx*, %struct.ipg_tx** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ipg_tx, %struct.ipg_tx* %21, i64 %23
  store %struct.ipg_tx* %24, %struct.ipg_tx** %4, align 8
  %25 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %2, align 8
  %26 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ipg_tx*, %struct.ipg_tx** %4, align 8
  %29 = getelementptr inbounds %struct.ipg_tx, %struct.ipg_tx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le64_to_cpu(i32 %30)
  %32 = load i32, i32* @IPG_TFI_FRAGLEN, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %2, align 8
  %36 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %45 = call i32 @pci_unmap_single(i32 %27, i32 %34, i32 %43, i32 %44)
  %46 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %2, align 8
  %47 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i32 @dev_kfree_skb_irq(%struct.TYPE_2__* %52)
  %54 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %2, align 8
  %55 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %56, i64 %58
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %59, align 8
  br label %60

60:                                               ; preds = %18, %9
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %5

64:                                               ; preds = %5
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
