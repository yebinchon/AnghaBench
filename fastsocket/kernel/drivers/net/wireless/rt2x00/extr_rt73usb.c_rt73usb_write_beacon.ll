; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_write_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_write_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.txentry_desc = type { i32 }

@TXRX_CSR9 = common dso_local global i32 0, align 4
@TXRX_CSR9_BEACON_GEN = common dso_local global i32 0, align 4
@TXD_DESC_SIZE = common dso_local global i32 0, align 4
@DUMP_FRAME_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failure padding beacon, aborting\0A\00", align 1
@TXRX_CSR10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.txentry_desc*)* @rt73usb_write_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt73usb_write_beacon(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %10 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %11 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %13, align 8
  store %struct.rt2x00_dev* %14, %struct.rt2x00_dev** %5, align 8
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %16 = load i32, i32* @TXRX_CSR9, align 4
  %17 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %15, i32 %16, i32* %9)
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @TXRX_CSR9_BEACON_GEN, align 4
  %20 = call i32 @rt2x00_set_field32(i32* %9, i32 %19, i32 0)
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %22 = load i32, i32* @TXRX_CSR9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %21, i32 %22, i32 %23)
  %25 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %26 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load i32, i32* @TXD_DESC_SIZE, align 4
  %29 = call i32 @skb_push(%struct.TYPE_7__* %27, i32 %28)
  %30 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %31 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TXD_DESC_SIZE, align 4
  %36 = call i32 @memset(i32 %34, i32 0, i32 %35)
  %37 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %38 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %39 = call i32 @rt73usb_write_tx_desc(%struct.queue_entry* %37, %struct.txentry_desc* %38)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %41 = load i32, i32* @DUMP_FRAME_BEACON, align 4
  %42 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %43 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = call i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev* %40, i32 %41, %struct.TYPE_7__* %44)
  %46 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %47 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @roundup(i32 %50, i32 4)
  %52 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %53 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub i32 %51, %56
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %2
  %61 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %62 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @skb_pad(%struct.TYPE_7__* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %69 = call i32 @rt2x00_err(%struct.rt2x00_dev* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %71 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %70, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %71, align 8
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %73 = load i32, i32* @TXRX_CSR9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %72, i32 %73, i32 %74)
  br label %111

76:                                               ; preds = %60, %2
  %77 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %78 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @HW_BEACON_OFFSET(i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %84 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %89 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = add i32 %92, %93
  %95 = call i32 @rt2x00usb_register_multiwrite(%struct.rt2x00_dev* %81, i32 %82, i32 %87, i32 %94)
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %97 = load i32, i32* @TXRX_CSR10, align 4
  %98 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %96, i32 %97, i32 4104)
  %99 = load i32, i32* @TXRX_CSR9_BEACON_GEN, align 4
  %100 = call i32 @rt2x00_set_field32(i32* %9, i32 %99, i32 1)
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %102 = load i32, i32* @TXRX_CSR9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %101, i32 %102, i32 %103)
  %105 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %106 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = call i32 @dev_kfree_skb(%struct.TYPE_7__* %107)
  %109 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %110 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %109, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %110, align 8
  br label %111

111:                                              ; preds = %76, %67
  ret void
}

declare dso_local i32 @rt2x00usb_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @skb_push(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @rt73usb_write_tx_desc(%struct.queue_entry*, %struct.txentry_desc*) #1

declare dso_local i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @skb_pad(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @HW_BEACON_OFFSET(i32) #1

declare dso_local i32 @rt2x00usb_register_multiwrite(%struct.rt2x00_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
