; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_add_one_rx_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_add_one_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_desc = type { i8*, i8*, i8*, i8* }
%struct.rx_sw_desc = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dma_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.rx_desc*, %struct.rx_sw_desc*, i32, %struct.pci_dev*)* @add_one_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_one_rx_buf(i8* %0, i32 %1, %struct.rx_desc* %2, %struct.rx_sw_desc* %3, i32 %4, %struct.pci_dev* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rx_desc*, align 8
  %11 = alloca %struct.rx_sw_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.rx_desc* %2, %struct.rx_desc** %10, align 8
  store %struct.rx_sw_desc* %3, %struct.rx_sw_desc** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.pci_dev* %5, %struct.pci_dev** %13, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %19 = call i32 @pci_map_single(%struct.pci_dev* %15, i8* %16, i32 %17, i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @pci_dma_mapping_error(%struct.pci_dev* %20, i32 %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %53

28:                                               ; preds = %6
  %29 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %30 = load i32, i32* @dma_addr, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @pci_unmap_addr_set(%struct.rx_sw_desc* %29, i32 %30, i32 %31)
  %33 = load i32, i32* %14, align 4
  %34 = call i8* @cpu_to_be32(i32 %33)
  %35 = load %struct.rx_desc*, %struct.rx_desc** %10, align 8
  %36 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %14, align 4
  %38 = ashr i32 %37, 32
  %39 = call i8* @cpu_to_be32(i32 %38)
  %40 = load %struct.rx_desc*, %struct.rx_desc** %10, align 8
  %41 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = call i32 (...) @wmb()
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @V_FLD_GEN1(i32 %43)
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = load %struct.rx_desc*, %struct.rx_desc** %10, align 8
  %47 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @V_FLD_GEN2(i32 %48)
  %50 = call i8* @cpu_to_be32(i32 %49)
  %51 = load %struct.rx_desc*, %struct.rx_desc** %10, align 8
  %52 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %28, %25
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @pci_map_single(%struct.pci_dev*, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_dma_mapping_error(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_unmap_addr_set(%struct.rx_sw_desc*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @V_FLD_GEN1(i32) #1

declare dso_local i32 @V_FLD_GEN2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
