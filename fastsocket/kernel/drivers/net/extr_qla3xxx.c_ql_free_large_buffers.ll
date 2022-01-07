; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_free_large_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_free_large_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32, i32, %struct.ql_rcv_buf_cb* }
%struct.ql_rcv_buf_cb = type { i64 }

@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql3_adapter*)* @ql_free_large_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_free_large_buffers(%struct.ql3_adapter* %0) #0 {
  %2 = alloca %struct.ql3_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_rcv_buf_cb*, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %42, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %5
  %12 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %12, i32 0, i32 2
  %14 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %14, i64 %16
  store %struct.ql_rcv_buf_cb* %17, %struct.ql_rcv_buf_cb** %4, align 8
  %18 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %19 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %11
  %23 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %24 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @dev_kfree_skb(i64 %25)
  %27 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %31 = load i32, i32* @mapaddr, align 4
  %32 = call i32 @pci_unmap_addr(%struct.ql_rcv_buf_cb* %30, i32 %31)
  %33 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %34 = load i32, i32* @maplen, align 4
  %35 = call i32 @pci_unmap_len(%struct.ql_rcv_buf_cb* %33, i32 %34)
  %36 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %37 = call i32 @pci_unmap_single(i32 %29, i32 %32, i32 %35, i32 %36)
  %38 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %39 = call i32 @memset(%struct.ql_rcv_buf_cb* %38, i32 0, i32 8)
  br label %41

40:                                               ; preds = %11
  br label %45

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %5

45:                                               ; preds = %40, %5
  ret void
}

declare dso_local i32 @dev_kfree_skb(i64) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_addr(%struct.ql_rcv_buf_cb*, i32) #1

declare dso_local i32 @pci_unmap_len(%struct.ql_rcv_buf_cb*, i32) #1

declare dso_local i32 @memset(%struct.ql_rcv_buf_cb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
