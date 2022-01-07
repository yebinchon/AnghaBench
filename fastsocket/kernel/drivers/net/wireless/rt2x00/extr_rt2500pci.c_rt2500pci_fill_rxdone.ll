; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_fill_rxdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_fill_rxdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_4__*, %struct.queue_entry_priv_mmio* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.queue_entry_priv_mmio = type { i32 }
%struct.rxdone_entry_desc = type { i32, i8*, i8*, i8*, i32 }

@RXD_W0_CRC_ERROR = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@RXD_W0_PHYSICAL_ERROR = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_PLCP_CRC = common dso_local global i32 0, align 4
@RXD_W2_SIGNAL = common dso_local global i32 0, align 4
@RXD_W2_RSSI = common dso_local global i32 0, align 4
@RXD_W0_DATABYTE_COUNT = common dso_local global i32 0, align 4
@RXD_W0_OFDM = common dso_local global i32 0, align 4
@RXDONE_SIGNAL_PLCP = common dso_local global i32 0, align 4
@RXDONE_SIGNAL_BITRATE = common dso_local global i32 0, align 4
@RXD_W0_MY_BSS = common dso_local global i32 0, align 4
@RXDONE_MY_BSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.rxdone_entry_desc*)* @rt2500pci_fill_rxdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500pci_fill_rxdone(%struct.queue_entry* %0, %struct.rxdone_entry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.rxdone_entry_desc*, align 8
  %5 = alloca %struct.queue_entry_priv_mmio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.rxdone_entry_desc* %1, %struct.rxdone_entry_desc** %4, align 8
  %8 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %9 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %8, i32 0, i32 1
  %10 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %9, align 8
  store %struct.queue_entry_priv_mmio* %10, %struct.queue_entry_priv_mmio** %5, align 8
  %11 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %5, align 8
  %12 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rt2x00_desc_read(i32 %13, i32 0, i32* %6)
  %15 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %5, align 8
  %16 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @rt2x00_desc_read(i32 %17, i32 2, i32* %7)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @RXD_W0_CRC_ERROR, align 4
  %21 = call i8* @rt2x00_get_field32(i32 %19, i32 %20)
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %25 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %26 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %23, %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @RXD_W0_PHYSICAL_ERROR, align 4
  %32 = call i8* @rt2x00_get_field32(i32 %30, i32 %31)
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @RX_FLAG_FAILED_PLCP_CRC, align 4
  %36 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %37 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @RXD_W2_SIGNAL, align 4
  %43 = call i8* @rt2x00_get_field32(i32 %41, i32 %42)
  %44 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %45 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @RXD_W2_RSSI, align 4
  %48 = call i8* @rt2x00_get_field32(i32 %46, i32 %47)
  %49 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %50 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = ptrtoint i8* %48 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %61 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @RXD_W0_DATABYTE_COUNT, align 4
  %64 = call i8* @rt2x00_get_field32(i32 %62, i32 %63)
  %65 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %66 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @RXD_W0_OFDM, align 4
  %69 = call i8* @rt2x00_get_field32(i32 %67, i32 %68)
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %40
  %72 = load i32, i32* @RXDONE_SIGNAL_PLCP, align 4
  %73 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %74 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %83

77:                                               ; preds = %40
  %78 = load i32, i32* @RXDONE_SIGNAL_BITRATE, align 4
  %79 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %80 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %71
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @RXD_W0_MY_BSS, align 4
  %86 = call i8* @rt2x00_get_field32(i32 %84, i32 %85)
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32, i32* @RXDONE_MY_BSS, align 4
  %90 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %91 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %83
  ret void
}

declare dso_local i32 @rt2x00_desc_read(i32, i32, i32*) #1

declare dso_local i8* @rt2x00_get_field32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
