; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_rx_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_rx_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipg_nic_private = type { i32, i32, i32**, %struct.ipg_rx* }
%struct.ipg_rx = type { i32 }

@IPG_RFDLIST_LENGTH = common dso_local global i32 0, align 4
@IPG_RFI_FRAGLEN = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipg_nic_private*)* @ipg_rx_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipg_rx_clear(%struct.ipg_nic_private* %0) #0 {
  %2 = alloca %struct.ipg_nic_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipg_rx*, align 8
  store %struct.ipg_nic_private* %0, %struct.ipg_nic_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %55, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @IPG_RFDLIST_LENGTH, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %58

9:                                                ; preds = %5
  %10 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %2, align 8
  %11 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %10, i32 0, i32 2
  %12 = load i32**, i32*** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %54

18:                                               ; preds = %9
  %19 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %2, align 8
  %20 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %19, i32 0, i32 3
  %21 = load %struct.ipg_rx*, %struct.ipg_rx** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %21, i64 %23
  store %struct.ipg_rx* %24, %struct.ipg_rx** %4, align 8
  %25 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %2, align 8
  %26 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %25, i32 0, i32 2
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @dev_kfree_skb_irq(i32* %31)
  %33 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %2, align 8
  %34 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %33, i32 0, i32 2
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* null, i32** %38, align 8
  %39 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %2, align 8
  %40 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ipg_rx*, %struct.ipg_rx** %4, align 8
  %43 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le64_to_cpu(i32 %44)
  %46 = load i32, i32* @IPG_RFI_FRAGLEN, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %2, align 8
  %50 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %53 = call i32 @pci_unmap_single(i32 %41, i32 %48, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %18, %9
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %5

58:                                               ; preds = %5
  ret void
}

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
