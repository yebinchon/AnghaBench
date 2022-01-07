; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_uli526x.c_allocate_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_uli526x.c_allocate_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uli526x_board_info = type { i64, %struct.rx_desc*, i32 }
%struct.rx_desc = type { %struct.rx_desc*, i8*, i8*, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@RX_DESC_CNT = common dso_local global i64 0, align 8
@RX_ALLOC_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uli526x_board_info*)* @allocate_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocate_rx_buffer(%struct.uli526x_board_info* %0) #0 {
  %2 = alloca %struct.uli526x_board_info*, align 8
  %3 = alloca %struct.rx_desc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.uli526x_board_info* %0, %struct.uli526x_board_info** %2, align 8
  %5 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %6 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %5, i32 0, i32 1
  %7 = load %struct.rx_desc*, %struct.rx_desc** %6, align 8
  store %struct.rx_desc* %7, %struct.rx_desc** %3, align 8
  br label %8

8:                                                ; preds = %19, %1
  %9 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %10 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RX_DESC_CNT, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %8
  %15 = load i32, i32* @RX_ALLOC_SIZE, align 4
  %16 = call %struct.sk_buff* @dev_alloc_skb(i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %4, align 8
  %17 = icmp eq %struct.sk_buff* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %45

19:                                               ; preds = %14
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load %struct.rx_desc*, %struct.rx_desc** %3, align 8
  %22 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %21, i32 0, i32 3
  store %struct.sk_buff* %20, %struct.sk_buff** %22, align 8
  %23 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %24 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @skb_tail_pointer(%struct.sk_buff* %26)
  %28 = load i32, i32* @RX_ALLOC_SIZE, align 4
  %29 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %30 = call i32 @pci_map_single(i32 %25, i32 %27, i32 %28, i32 %29)
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.rx_desc*, %struct.rx_desc** %3, align 8
  %33 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = call i32 (...) @wmb()
  %35 = call i8* @cpu_to_le32(i32 -2147483648)
  %36 = load %struct.rx_desc*, %struct.rx_desc** %3, align 8
  %37 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.rx_desc*, %struct.rx_desc** %3, align 8
  %39 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %38, i32 0, i32 0
  %40 = load %struct.rx_desc*, %struct.rx_desc** %39, align 8
  store %struct.rx_desc* %40, %struct.rx_desc** %3, align 8
  %41 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %42 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  br label %8

45:                                               ; preds = %18, %8
  %46 = load %struct.rx_desc*, %struct.rx_desc** %3, align 8
  %47 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %48 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %47, i32 0, i32 1
  store %struct.rx_desc* %46, %struct.rx_desc** %48, align 8
  ret void
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
