; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_qlcnic_release_tx_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_qlcnic_release_tx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.qlcnic_host_tx_ring* }
%struct.qlcnic_host_tx_ring = type { i32, %struct.qlcnic_cmd_buffer* }
%struct.qlcnic_cmd_buffer = type { i32, i32*, %struct.qlcnic_skb_frag* }
%struct.qlcnic_skb_frag = type { i64, i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_release_tx_buffers(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_cmd_buffer*, align 8
  %4 = alloca %struct.qlcnic_skb_frag*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_host_tx_ring*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 1
  %10 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  store %struct.qlcnic_host_tx_ring* %10, %struct.qlcnic_host_tx_ring** %7, align 8
  %11 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %12 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %11, i32 0, i32 1
  %13 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %12, align 8
  store %struct.qlcnic_cmd_buffer* %13, %struct.qlcnic_cmd_buffer** %3, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %89, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %17 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %92

20:                                               ; preds = %14
  %21 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %21, i32 0, i32 2
  %23 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %22, align 8
  store %struct.qlcnic_skb_frag* %23, %struct.qlcnic_skb_frag** %4, align 8
  %24 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %4, align 8
  %25 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %4, align 8
  %33 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %4, align 8
  %36 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %39 = call i32 @pci_unmap_single(i32 %31, i64 %34, i32 %37, i32 %38)
  %40 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %4, align 8
  %41 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %28, %20
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %71, %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %3, align 8
  %46 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %43
  %50 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %4, align 8
  %51 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %50, i32 1
  store %struct.qlcnic_skb_frag* %51, %struct.qlcnic_skb_frag** %4, align 8
  %52 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %4, align 8
  %53 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %49
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %4, align 8
  %61 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %4, align 8
  %64 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %67 = call i32 @pci_unmap_page(i32 %59, i64 %62, i32 %65, i32 %66)
  %68 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %4, align 8
  %69 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %56, %49
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %43

74:                                               ; preds = %43
  %75 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %3, align 8
  %76 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %3, align 8
  %81 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @dev_kfree_skb_any(i32* %82)
  %84 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %3, align 8
  %85 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %79, %74
  %87 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %3, align 8
  %88 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %87, i32 1
  store %struct.qlcnic_cmd_buffer* %88, %struct.qlcnic_cmd_buffer** %3, align 8
  br label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %14

92:                                               ; preds = %14
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
