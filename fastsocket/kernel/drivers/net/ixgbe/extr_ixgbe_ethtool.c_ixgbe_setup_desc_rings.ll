; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_setup_desc_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_setup_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_11__, %struct.TYPE_10__**, i32, %struct.TYPE_9__*, %struct.TYPE_7__**, %struct.ixgbe_ring, %struct.ixgbe_ring }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ixgbe_ring = type { i32, i32, i32*, i64, i32 }

@IXGBE_DEFAULT_TXD = common dso_local global i32 0, align 4
@IXGBE_DMATXCTL = common dso_local global i32 0, align 4
@IXGBE_DMATXCTL_TE = common dso_local global i32 0, align 4
@IXGBE_DEFAULT_RXD = common dso_local global i32 0, align 4
@IXGBE_RXCTRL = common dso_local global i32 0, align 4
@IXGBE_RXCTRL_RXEN = common dso_local global i32 0, align 4
@IXGBE_RXCTRL_DMBYPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*)* @ixgbe_setup_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_setup_desc_rings(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 6
  store %struct.ixgbe_ring* %11, %struct.ixgbe_ring** %4, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 5
  store %struct.ixgbe_ring* %13, %struct.ixgbe_ring** %5, align 8
  %14 = load i32, i32* @IXGBE_DEFAULT_TXD, align 4
  %15 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %16 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %18 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %24 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %29 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %30, i32 0, i32 4
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %32, i64 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %38 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %40 = call i32 @ixgbe_setup_tx_resources(%struct.ixgbe_ring* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %128

44:                                               ; preds = %1
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %63 [
    i32 129, label %50
    i32 128, label %50
  ]

50:                                               ; preds = %44, %44
  %51 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* @IXGBE_DMATXCTL, align 4
  %54 = call i32 @IXGBE_READ_REG(%struct.TYPE_11__* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @IXGBE_DMATXCTL_TE, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* @IXGBE_DMATXCTL, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @IXGBE_WRITE_REG(%struct.TYPE_11__* %59, i32 %60, i32 %61)
  br label %64

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63, %50
  %65 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %66 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %67 = call i32 @ixgbe_configure_tx_ring(%struct.ixgbe_adapter* %65, %struct.ixgbe_ring* %66)
  %68 = load i32, i32* @IXGBE_DEFAULT_RXD, align 4
  %69 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %70 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %72 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %73, i32 0, i32 3
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %78 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %77, i32 0, i32 2
  store i32* %76, i32** %78, align 8
  %79 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %83 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %86, i64 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %92 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %94 = call i32 @ixgbe_setup_rx_resources(%struct.ixgbe_ring* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %64
  store i32 4, i32* %8, align 4
  br label %124

98:                                               ; preds = %64
  %99 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %99, i32 0, i32 0
  %101 = load i32, i32* @IXGBE_RXCTRL, align 4
  %102 = call i32 @IXGBE_READ_REG(%struct.TYPE_11__* %100, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %103, i32 0, i32 0
  %105 = load i32, i32* @IXGBE_RXCTRL, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @IXGBE_RXCTRL_RXEN, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = call i32 @IXGBE_WRITE_REG(%struct.TYPE_11__* %104, i32 %105, i32 %109)
  %111 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %112 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %113 = call i32 @ixgbe_configure_rx_ring(%struct.ixgbe_adapter* %111, %struct.ixgbe_ring* %112)
  %114 = load i32, i32* @IXGBE_RXCTRL_RXEN, align 4
  %115 = load i32, i32* @IXGBE_RXCTRL_DMBYPS, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %119, i32 0, i32 0
  %121 = load i32, i32* @IXGBE_RXCTRL, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @IXGBE_WRITE_REG(%struct.TYPE_11__* %120, i32 %121, i32 %122)
  store i32 0, i32* %2, align 4
  br label %128

124:                                              ; preds = %97
  %125 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %126 = call i32 @ixgbe_free_desc_rings(%struct.ixgbe_adapter* %125)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %124, %98, %43
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @ixgbe_setup_tx_resources(%struct.ixgbe_ring*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ixgbe_configure_tx_ring(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_setup_rx_resources(%struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_configure_rx_ring(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_free_desc_rings(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
