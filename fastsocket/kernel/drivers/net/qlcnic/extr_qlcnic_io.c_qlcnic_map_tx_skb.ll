; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_map_tx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_map_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.qlcnic_cmd_buffer = type { %struct.qlcnic_skb_frag* }
%struct.qlcnic_skb_frag = type { i8*, i32 }
%struct.skb_frag_struct = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.skb_frag_struct* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.sk_buff*, %struct.qlcnic_cmd_buffer*)* @qlcnic_map_tx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_map_tx_skb(%struct.pci_dev* %0, %struct.sk_buff* %1, %struct.qlcnic_cmd_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.qlcnic_cmd_buffer*, align 8
  %8 = alloca %struct.qlcnic_skb_frag*, align 8
  %9 = alloca %struct.skb_frag_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.qlcnic_cmd_buffer* %2, %struct.qlcnic_cmd_buffer** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %7, align 8
  %18 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %17, i32 0, i32 0
  %19 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %18, align 8
  %20 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %19, i64 0
  store %struct.qlcnic_skb_frag* %20, %struct.qlcnic_skb_frag** %8, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i32 @skb_headlen(%struct.sk_buff* %25)
  %27 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %28 = call i8* @pci_map_single(%struct.pci_dev* %21, i32 %24, i32 %26, i32 %27)
  store i8* %28, i8** %12, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = call i64 @pci_dma_mapping_error(%struct.pci_dev* %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %121

34:                                               ; preds = %3
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %8, align 8
  %37 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @skb_headlen(%struct.sk_buff* %38)
  %40 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %8, align 8
  %41 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %82, %34
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %85

46:                                               ; preds = %42
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %50, i64 %52
  store %struct.skb_frag_struct* %53, %struct.skb_frag_struct** %9, align 8
  %54 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %7, align 8
  %55 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %54, i32 0, i32 0
  %56 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %56, i64 %59
  store %struct.qlcnic_skb_frag* %60, %struct.qlcnic_skb_frag** %8, align 8
  %61 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %9, align 8
  %64 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %9, align 8
  %65 = call i32 @skb_frag_size(%struct.skb_frag_struct* %64)
  %66 = load i32, i32* @DMA_TO_DEVICE, align 4
  %67 = call i8* @skb_frag_dma_map(i32* %62, %struct.skb_frag_struct* %63, i32 0, i32 %65, i32 %66)
  store i8* %67, i8** %12, align 8
  %68 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = load i8*, i8** %12, align 8
  %71 = call i64 @dma_mapping_error(i32* %69, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %46
  br label %86

74:                                               ; preds = %46
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %8, align 8
  %77 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %9, align 8
  %79 = call i32 @skb_frag_size(%struct.skb_frag_struct* %78)
  %80 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %8, align 8
  %81 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %42

85:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %124

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %91, %86
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %10, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %7, align 8
  %93 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %92, i32 0, i32 0
  %94 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %94, i64 %97
  store %struct.qlcnic_skb_frag* %98, %struct.qlcnic_skb_frag** %8, align 8
  %99 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %100 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %8, align 8
  %101 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %8, align 8
  %104 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %107 = call i32 @pci_unmap_page(%struct.pci_dev* %99, i8* %102, i32 %105, i32 %106)
  br label %87

108:                                              ; preds = %87
  %109 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %7, align 8
  %110 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %109, i32 0, i32 0
  %111 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %110, align 8
  %112 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %111, i64 0
  store %struct.qlcnic_skb_frag* %112, %struct.qlcnic_skb_frag** %8, align 8
  %113 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %114 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %8, align 8
  %115 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %118 = call i32 @skb_headlen(%struct.sk_buff* %117)
  %119 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %120 = call i32 @pci_unmap_single(%struct.pci_dev* %113, i8* %116, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %108, %33
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %121, %85
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i8* @pci_map_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @pci_dma_mapping_error(%struct.pci_dev*, i8*) #1

declare dso_local i8* @skb_frag_dma_map(i32*, %struct.skb_frag_struct*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(%struct.skb_frag_struct*) #1

declare dso_local i64 @dma_mapping_error(i32*, i8*) #1

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i8*, i32, i32) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
