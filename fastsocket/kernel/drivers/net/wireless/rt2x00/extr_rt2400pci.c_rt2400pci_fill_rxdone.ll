; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_fill_rxdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_fill_rxdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_6__*, %struct.queue_entry_priv_mmio* }
%struct.TYPE_6__ = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32*)* }
%struct.queue_entry_priv_mmio = type { i32 }
%struct.rxdone_entry_desc = type { i32, i32, i32, i32, i64, i32 }

@RXD_W0_CRC_ERROR = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@RXD_W0_PHYSICAL_ERROR = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_PLCP_CRC = common dso_local global i32 0, align 4
@RXD_W4_RX_END_TIME = common dso_local global i32 0, align 4
@RXD_W2_SIGNAL = common dso_local global i32 0, align 4
@RXD_W3_RSSI = common dso_local global i32 0, align 4
@RXD_W0_DATABYTE_COUNT = common dso_local global i32 0, align 4
@RXDONE_SIGNAL_PLCP = common dso_local global i32 0, align 4
@RXD_W0_MY_BSS = common dso_local global i32 0, align 4
@RXDONE_MY_BSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.rxdone_entry_desc*)* @rt2400pci_fill_rxdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2400pci_fill_rxdone(%struct.queue_entry* %0, %struct.rxdone_entry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.rxdone_entry_desc*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.queue_entry_priv_mmio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.rxdone_entry_desc* %1, %struct.rxdone_entry_desc** %4, align 8
  %14 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %15 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %17, align 8
  store %struct.rt2x00_dev* %18, %struct.rt2x00_dev** %5, align 8
  %19 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %20 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %19, i32 0, i32 1
  %21 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %20, align 8
  store %struct.queue_entry_priv_mmio* %21, %struct.queue_entry_priv_mmio** %6, align 8
  %22 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %23 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rt2x00_desc_read(i32 %24, i32 0, i32* %7)
  %26 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %27 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rt2x00_desc_read(i32 %28, i32 2, i32* %8)
  %30 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %31 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rt2x00_desc_read(i32 %32, i32 3, i32* %9)
  %34 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %35 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rt2x00_desc_read(i32 %36, i32 4, i32* %10)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @RXD_W0_CRC_ERROR, align 4
  %40 = call i32 @rt2x00_get_field32(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %44 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %45 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %2
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @RXD_W0_PHYSICAL_ERROR, align 4
  %51 = call i32 @rt2x00_get_field32(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* @RX_FLAG_FAILED_PLCP_CRC, align 4
  %55 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %56 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %61 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32 (i32, i32*)*, i32 (i32, i32*)** %65, align 8
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %68 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 %66(i32 %69, i32* null)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @RXD_W4_RX_END_TIME, align 4
  %73 = call i32 @rt2x00_get_field32(i32 %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @upper_32_bits(i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %59
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %79, %59
  %83 = load i32, i32* %13, align 4
  %84 = shl i32 %83, 32
  %85 = load i32, i32* %12, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %88 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @RXD_W2_SIGNAL, align 4
  %91 = call i32 @rt2x00_get_field32(i32 %89, i32 %90)
  %92 = and i32 %91, -9
  %93 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %94 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @RXD_W3_RSSI, align 4
  %97 = call i32 @rt2x00_get_field32(i32 %95, i32 %96)
  %98 = sext i32 %97 to i64
  %99 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %100 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %102, align 8
  %104 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %98, %105
  %107 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %108 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %107, i32 0, i32 4
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @RXD_W0_DATABYTE_COUNT, align 4
  %111 = call i32 @rt2x00_get_field32(i32 %109, i32 %110)
  %112 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %113 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @RXDONE_SIGNAL_PLCP, align 4
  %115 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %116 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @RXD_W0_MY_BSS, align 4
  %121 = call i32 @rt2x00_get_field32(i32 %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %82
  %124 = load i32, i32* @RXDONE_MY_BSS, align 4
  %125 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %126 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %82
  ret void
}

declare dso_local i32 @rt2x00_desc_read(i32, i32, i32*) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
