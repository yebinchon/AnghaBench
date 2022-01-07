; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_process_rxwi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_process_rxwi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.rxdone_entry_desc = type { i32, i64, i32, i32, i32, i8*, i8* }

@RXWI_W0_UDF = common dso_local global i32 0, align 4
@RXWI_W0_MPDU_TOTAL_BYTE_COUNT = common dso_local global i32 0, align 4
@RXWI_W1_SHORT_GI = common dso_local global i32 0, align 4
@RX_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@RXWI_W1_BW = common dso_local global i32 0, align 4
@RX_FLAG_40MHZ = common dso_local global i32 0, align 4
@RXDONE_SIGNAL_MCS = common dso_local global i32 0, align 4
@RXWI_W1_MCS = common dso_local global i32 0, align 4
@RXWI_W1_PHYMODE = common dso_local global i32 0, align 4
@RATE_MODE_CCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_process_rxwi(%struct.queue_entry* %0, %struct.rxdone_entry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.rxdone_entry_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.rxdone_entry_desc* %1, %struct.rxdone_entry_desc** %4, align 8
  %7 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %8 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @rt2x00_desc_read(i32* %13, i32 0, i32* %6)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @RXWI_W0_UDF, align 4
  %17 = call i8* @rt2x00_get_field32(i32 %15, i32 %16)
  %18 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %19 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %18, i32 0, i32 6
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @RXWI_W0_MPDU_TOTAL_BYTE_COUNT, align 4
  %22 = call i8* @rt2x00_get_field32(i32 %20, i32 %21)
  %23 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %24 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @rt2x00_desc_read(i32* %25, i32 1, i32* %6)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RXWI_W1_SHORT_GI, align 4
  %29 = call i8* @rt2x00_get_field32(i32 %27, i32 %28)
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @RX_FLAG_SHORT_GI, align 4
  %33 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %34 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %31, %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @RXWI_W1_BW, align 4
  %40 = call i8* @rt2x00_get_field32(i32 %38, i32 %39)
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @RX_FLAG_40MHZ, align 4
  %44 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %45 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* @RXDONE_SIGNAL_MCS, align 4
  %50 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %51 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @RXWI_W1_MCS, align 4
  %56 = call i8* @rt2x00_get_field32(i32 %54, i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %59 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @RXWI_W1_PHYMODE, align 4
  %62 = call i8* @rt2x00_get_field32(i32 %60, i32 %61)
  %63 = ptrtoint i8* %62 to i64
  %64 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %65 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %67 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @RATE_MODE_CCK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %48
  %72 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %73 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, -9
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %71, %48
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @rt2x00_desc_read(i32* %77, i32 2, i32* %6)
  %79 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %80 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @rt2800_agc_to_rssi(i32 %83, i32 %84)
  %86 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %87 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %89 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %92 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @skb_pull(%struct.TYPE_4__* %90, i32 %95)
  ret void
}

declare dso_local i32 @rt2x00_desc_read(i32*, i32, i32*) #1

declare dso_local i8* @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @rt2800_agc_to_rssi(i32, i32) #1

declare dso_local i32 @skb_pull(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
