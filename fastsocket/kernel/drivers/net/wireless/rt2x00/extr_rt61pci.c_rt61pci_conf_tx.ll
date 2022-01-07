; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_conf_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32 }
%struct.data_queue = type { i32, i32, i32, i32 }
%struct.rt2x00_field32 = type { i32, i32 }

@AC_TXOP_CSR0 = common dso_local global i64 0, align 8
@AIFSN_CSR = common dso_local global i64 0, align 8
@CWMIN_CSR = common dso_local global i64 0, align 8
@CWMAX_CSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_tx_queue_params*)* @rt61pci_conf_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt61pci_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %10 = alloca %struct.rt2x00_dev*, align 8
  %11 = alloca %struct.data_queue*, align 8
  %12 = alloca %struct.rt2x00_field32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %9, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 0
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %17, align 8
  store %struct.rt2x00_dev* %18, %struct.rt2x00_dev** %10, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %23 = call i32 @rt2x00mac_conf_tx(%struct.ieee80211_hw* %19, %struct.ieee80211_vif* %20, i32 %21, %struct.ieee80211_tx_queue_params* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %5, align 4
  br label %113

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 4
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %113

32:                                               ; preds = %28
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev* %33, i32 %34)
  store %struct.data_queue* %35, %struct.data_queue** %11, align 8
  %36 = load i64, i64* @AC_TXOP_CSR0, align 8
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 2
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = mul i64 8, %43
  %45 = add i64 %36, %44
  store i64 %45, i64* %15, align 8
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 1
  %48 = mul nsw i32 %47, 16
  %49 = getelementptr inbounds %struct.rt2x00_field32, %struct.rt2x00_field32* %12, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.rt2x00_field32, %struct.rt2x00_field32* %12, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 65535, %51
  %53 = getelementptr inbounds %struct.rt2x00_field32, %struct.rt2x00_field32* %12, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %54, i64 %55, i64* %14)
  %57 = load %struct.data_queue*, %struct.data_queue** %11, align 8
  %58 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = bitcast %struct.rt2x00_field32* %12 to i64*
  %61 = load i64, i64* %60, align 4
  %62 = call i32 @rt2x00_set_field32(i64* %14, i64 %61, i32 %59)
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %63, i64 %64, i64 %65)
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 %67, 4
  %69 = getelementptr inbounds %struct.rt2x00_field32, %struct.rt2x00_field32* %12, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.rt2x00_field32, %struct.rt2x00_field32* %12, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 15, %71
  %73 = getelementptr inbounds %struct.rt2x00_field32, %struct.rt2x00_field32* %12, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  %75 = load i64, i64* @AIFSN_CSR, align 8
  %76 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %74, i64 %75, i64* %14)
  %77 = load %struct.data_queue*, %struct.data_queue** %11, align 8
  %78 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = bitcast %struct.rt2x00_field32* %12 to i64*
  %81 = load i64, i64* %80, align 4
  %82 = call i32 @rt2x00_set_field32(i64* %14, i64 %81, i32 %79)
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  %84 = load i64, i64* @AIFSN_CSR, align 8
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %83, i64 %84, i64 %85)
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  %88 = load i64, i64* @CWMIN_CSR, align 8
  %89 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %87, i64 %88, i64* %14)
  %90 = load %struct.data_queue*, %struct.data_queue** %11, align 8
  %91 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = bitcast %struct.rt2x00_field32* %12 to i64*
  %94 = load i64, i64* %93, align 4
  %95 = call i32 @rt2x00_set_field32(i64* %14, i64 %94, i32 %92)
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  %97 = load i64, i64* @CWMIN_CSR, align 8
  %98 = load i64, i64* %14, align 8
  %99 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %96, i64 %97, i64 %98)
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  %101 = load i64, i64* @CWMAX_CSR, align 8
  %102 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %100, i64 %101, i64* %14)
  %103 = load %struct.data_queue*, %struct.data_queue** %11, align 8
  %104 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = bitcast %struct.rt2x00_field32* %12 to i64*
  %107 = load i64, i64* %106, align 4
  %108 = call i32 @rt2x00_set_field32(i64* %14, i64 %107, i32 %105)
  %109 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  %110 = load i64, i64* @CWMAX_CSR, align 8
  %111 = load i64, i64* %14, align 8
  %112 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %109, i64 %110, i64 %111)
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %32, %31, %26
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @rt2x00mac_conf_tx(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_tx_queue_params*) #1

declare dso_local %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i64, i64*) #1

declare dso_local i32 @rt2x00_set_field32(i64*, i64, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
