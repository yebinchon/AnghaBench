; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_txdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_txdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.data_queue = type { i32, %struct.queue_entry* }
%struct.queue_entry = type { i32, %struct.queue_entry_priv_mmio* }
%struct.queue_entry_priv_mmio = type { i32 }
%struct.txdone_entry_desc = type { i32, i64 }

@STA_CSR4 = common dso_local global i32 0, align 4
@STA_CSR4_VALID = common dso_local global i32 0, align 4
@STA_CSR4_PID_TYPE = common dso_local global i32 0, align 4
@STA_CSR4_PID_SUBTYPE = common dso_local global i32 0, align 4
@TXD_W0_OWNER_NIC = common dso_local global i32 0, align 4
@TXD_W0_VALID = common dso_local global i32 0, align 4
@Q_INDEX_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"TX status report missed for entry %d\0A\00", align 1
@TXDONE_UNKNOWN = common dso_local global i32 0, align 4
@STA_CSR4_TX_RESULT = common dso_local global i32 0, align 4
@TXDONE_SUCCESS = common dso_local global i32 0, align 4
@TXDONE_EXCESSIVE_RETRY = common dso_local global i32 0, align 4
@TXDONE_FAILURE = common dso_local global i32 0, align 4
@STA_CSR4_RETRY_COUNT = common dso_local global i32 0, align 4
@TXDONE_FALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt61pci_txdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_txdone(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.data_queue*, align 8
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca %struct.queue_entry*, align 8
  %6 = alloca %struct.queue_entry_priv_mmio*, align 8
  %7 = alloca %struct.txdone_entry_desc, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %135, %1
  %14 = load i32, i32* %12, align 4
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %14, %21
  br i1 %22, label %23, label %138

23:                                               ; preds = %13
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %25 = load i32, i32* @STA_CSR4, align 4
  %26 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %24, i32 %25, i32* %9)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @STA_CSR4_VALID, align 4
  %29 = call i32 @rt2x00_get_field32(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %138

32:                                               ; preds = %23
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @STA_CSR4_PID_TYPE, align 4
  %35 = call i32 @rt2x00_get_field32(i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev* %36, i32 %37)
  store %struct.data_queue* %38, %struct.data_queue** %3, align 8
  %39 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %40 = icmp ne %struct.data_queue* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %135

46:                                               ; preds = %32
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @STA_CSR4_PID_SUBTYPE, align 4
  %49 = call i32 @rt2x00_get_field32(i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %52 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %135

59:                                               ; preds = %46
  %60 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %61 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %60, i32 0, i32 1
  %62 = load %struct.queue_entry*, %struct.queue_entry** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %62, i64 %64
  store %struct.queue_entry* %65, %struct.queue_entry** %4, align 8
  %66 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %67 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %66, i32 0, i32 1
  %68 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %67, align 8
  store %struct.queue_entry_priv_mmio* %68, %struct.queue_entry_priv_mmio** %6, align 8
  %69 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %70 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @rt2x00_desc_read(i32 %71, i32 0, i32* %8)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @TXD_W0_OWNER_NIC, align 4
  %75 = call i32 @rt2x00_get_field32(i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %59
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @TXD_W0_VALID, align 4
  %80 = call i32 @rt2x00_get_field32(i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77, %59
  br label %138

83:                                               ; preds = %77
  %84 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %85 = load i32, i32* @Q_INDEX_DONE, align 4
  %86 = call %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue* %84, i32 %85)
  store %struct.queue_entry* %86, %struct.queue_entry** %5, align 8
  br label %87

87:                                               ; preds = %91, %83
  %88 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %89 = load %struct.queue_entry*, %struct.queue_entry** %5, align 8
  %90 = icmp ne %struct.queue_entry* %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %93 = load %struct.queue_entry*, %struct.queue_entry** %5, align 8
  %94 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @rt2x00_warn(%struct.rt2x00_dev* %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load %struct.queue_entry*, %struct.queue_entry** %5, align 8
  %98 = load i32, i32* @TXDONE_UNKNOWN, align 4
  %99 = call i32 @rt2x00lib_txdone_noinfo(%struct.queue_entry* %97, i32 %98)
  %100 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %101 = load i32, i32* @Q_INDEX_DONE, align 4
  %102 = call %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue* %100, i32 %101)
  store %struct.queue_entry* %102, %struct.queue_entry** %5, align 8
  br label %87

103:                                              ; preds = %87
  %104 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %7, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @STA_CSR4_TX_RESULT, align 4
  %107 = call i32 @rt2x00_get_field32(i32 %105, i32 %106)
  switch i32 %107, label %116 [
    i32 0, label %108
    i32 6, label %112
  ]

108:                                              ; preds = %103
  %109 = load i32, i32* @TXDONE_SUCCESS, align 4
  %110 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %7, i32 0, i32 1
  %111 = call i32 @__set_bit(i32 %109, i64* %110)
  br label %120

112:                                              ; preds = %103
  %113 = load i32, i32* @TXDONE_EXCESSIVE_RETRY, align 4
  %114 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %7, i32 0, i32 1
  %115 = call i32 @__set_bit(i32 %113, i64* %114)
  br label %116

116:                                              ; preds = %103, %112
  %117 = load i32, i32* @TXDONE_FAILURE, align 4
  %118 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %7, i32 0, i32 1
  %119 = call i32 @__set_bit(i32 %117, i64* %118)
  br label %120

120:                                              ; preds = %116, %108
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @STA_CSR4_RETRY_COUNT, align 4
  %123 = call i32 @rt2x00_get_field32(i32 %121, i32 %122)
  %124 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %7, i32 0, i32 0
  store i32 %123, i32* %124, align 8
  %125 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %7, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load i32, i32* @TXDONE_FALLBACK, align 4
  %130 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %7, i32 0, i32 1
  %131 = call i32 @__set_bit(i32 %129, i64* %130)
  br label %132

132:                                              ; preds = %128, %120
  %133 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %134 = call i32 @rt2x00lib_txdone(%struct.queue_entry* %133, %struct.txdone_entry_desc* %7)
  br label %135

135:                                              ; preds = %132, %58, %45
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %13

138:                                              ; preds = %82, %31, %13
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00_desc_read(i32, i32, i32*) #1

declare dso_local %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue*, i32) #1

declare dso_local i32 @rt2x00_warn(%struct.rt2x00_dev*, i8*, i32) #1

declare dso_local i32 @rt2x00lib_txdone_noinfo(%struct.queue_entry*, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @rt2x00lib_txdone(%struct.queue_entry*, %struct.txdone_entry_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
