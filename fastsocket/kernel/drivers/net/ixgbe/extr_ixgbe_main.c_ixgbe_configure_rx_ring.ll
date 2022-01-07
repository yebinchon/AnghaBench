; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_configure_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_configure_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.ixgbe_ring = type { i32, i32, i64, i32 }

@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_RXDCTL_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_configure_rx_ring(%struct.ixgbe_adapter* %0, %struct.ixgbe_ring* %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %4, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 0
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %5, align 8
  %11 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %12 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %15 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @IXGBE_RXDCTL(i32 %18)
  %20 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %17, i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %22 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %23 = call i32 @ixgbe_disable_rx_queue(%struct.ixgbe_adapter* %21, %struct.ixgbe_ring* %22)
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @IXGBE_RDBAL(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @DMA_BIT_MASK(i32 32)
  %29 = and i32 %27, %28
  %30 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %24, i64 %26, i32 %29)
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @IXGBE_RDBAH(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %34, 32
  %36 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %31, i64 %33, i32 %35)
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @IXGBE_RDLEN(i32 %38)
  %40 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %41 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %37, i64 %39, i32 %45)
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @IXGBE_RDH(i32 %48)
  %50 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %47, i64 %49, i32 0)
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @IXGBE_RDT(i32 %52)
  %54 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %51, i64 %53, i32 0)
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %56 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @IXGBE_RDT(i32 %58)
  %60 = add nsw i64 %57, %59
  %61 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %62 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %64 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %65 = call i32 @ixgbe_configure_srrctl(%struct.ixgbe_adapter* %63, %struct.ixgbe_ring* %64)
  %66 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %67 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %68 = call i32 @ixgbe_configure_rscctl(%struct.ixgbe_adapter* %66, %struct.ixgbe_ring* %67)
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %70 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %2
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, -4194304
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, 525344
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %75, %2
  %81 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i64 @IXGBE_RXDCTL(i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %84, i64 %86, i32 %87)
  %89 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %90 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %91 = call i32 @ixgbe_rx_desc_queue_enable(%struct.ixgbe_adapter* %89, %struct.ixgbe_ring* %90)
  %92 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %93 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %94 = call i32 @ixgbe_desc_unused(%struct.ixgbe_ring* %93)
  %95 = call i32 @ixgbe_alloc_rx_buffers(%struct.ixgbe_ring* %92, i32 %94)
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i64) #1

declare dso_local i64 @IXGBE_RXDCTL(i32) #1

declare dso_local i32 @ixgbe_disable_rx_queue(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i64, i32) #1

declare dso_local i64 @IXGBE_RDBAL(i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @IXGBE_RDBAH(i32) #1

declare dso_local i64 @IXGBE_RDLEN(i32) #1

declare dso_local i64 @IXGBE_RDH(i32) #1

declare dso_local i64 @IXGBE_RDT(i32) #1

declare dso_local i32 @ixgbe_configure_srrctl(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_configure_rscctl(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_rx_desc_queue_enable(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_alloc_rx_buffers(%struct.ixgbe_ring*, i32) #1

declare dso_local i32 @ixgbe_desc_unused(%struct.ixgbe_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
