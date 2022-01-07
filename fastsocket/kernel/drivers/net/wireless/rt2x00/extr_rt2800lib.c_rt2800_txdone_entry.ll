; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_txdone_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_txdone_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.skb_frame_desc = type { i8* }
%struct.txdone_entry_desc = type { i32, i64 }

@TXWI_W0_MCS = common dso_local global i32 0, align 4
@TXWI_W0_AMPDU = common dso_local global i32 0, align 4
@TX_STA_FIFO_MCS = common dso_local global i32 0, align 4
@TX_STA_FIFO_TX_AGGRE = common dso_local global i32 0, align 4
@TXDONE_AMPDU = common dso_local global i32 0, align 4
@TX_STA_FIFO_TX_SUCCESS = common dso_local global i32 0, align 4
@TXDONE_SUCCESS = common dso_local global i32 0, align 4
@TXDONE_FAILURE = common dso_local global i32 0, align 4
@TXDONE_FALLBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_txdone_entry(%struct.queue_entry* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rt2x00_dev*, align 8
  %8 = alloca %struct.skb_frame_desc*, align 8
  %9 = alloca %struct.txdone_entry_desc, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %16 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %18, align 8
  store %struct.rt2x00_dev* %19, %struct.rt2x00_dev** %7, align 8
  %20 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %21 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.skb_frame_desc* @get_skb_frame_desc(i32 %22)
  store %struct.skb_frame_desc* %23, %struct.skb_frame_desc** %8, align 8
  %24 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %9, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @rt2x00_desc_read(i32* %25, i32 0, i32* %10)
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @TXWI_W0_MCS, align 4
  %29 = call i32 @rt2x00_get_field32(i32 %27, i32 %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %11, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @TXWI_W0_AMPDU, align 4
  %34 = call i32 @rt2x00_get_field32(i32 %32, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @TX_STA_FIFO_MCS, align 4
  %37 = call i32 @rt2x00_get_field32(i32 %35, i32 %36)
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %12, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @TX_STA_FIFO_TX_AGGRE, align 4
  %42 = call i32 @rt2x00_get_field32(i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %52

45:                                               ; preds = %3
  %46 = load i32, i32* %14, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i8*, i8** %12, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %49, %50
  br label %52

52:                                               ; preds = %48, %45, %3
  %53 = phi i1 [ false, %45 ], [ false, %3 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i8*, i8** %12, align 8
  %59 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %8, align 8
  %60 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %12, align 8
  store i8* %61, i8** %11, align 8
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %14, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %65, %62
  %69 = load i32, i32* @TXDONE_AMPDU, align 4
  %70 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %9, i32 0, i32 1
  %71 = call i32 @__set_bit(i32 %69, i64* %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @TX_STA_FIFO_TX_SUCCESS, align 4
  %75 = call i32 @rt2x00_get_field32(i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = load i32, i32* @TXDONE_SUCCESS, align 4
  %79 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %9, i32 0, i32 1
  %80 = call i32 @__set_bit(i32 %78, i64* %79)
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = icmp ugt i8* %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load i8*, i8** %11, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  br label %91

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90, %84
  %92 = phi i64 [ %89, %84 ], [ 0, %90 ]
  %93 = trunc i64 %92 to i32
  %94 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %9, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  br label %103

95:                                               ; preds = %72
  %96 = load i32, i32* @TXDONE_FAILURE, align 4
  %97 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %9, i32 0, i32 1
  %98 = call i32 @__set_bit(i32 %96, i64* %97)
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %100 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %9, i32 0, i32 0
  store i32 %101, i32* %102, align 8
  br label %103

103:                                              ; preds = %95, %91
  %104 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %9, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* @TXDONE_FALLBACK, align 4
  %109 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %9, i32 0, i32 1
  %110 = call i32 @__set_bit(i32 %108, i64* %109)
  br label %111

111:                                              ; preds = %107, %103
  %112 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %113 = call i32 @rt2x00lib_txdone(%struct.queue_entry* %112, %struct.txdone_entry_desc* %9)
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(i32) #1

declare dso_local i32 @rt2x00_desc_read(i32*, i32, i32*) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @rt2x00lib_txdone(%struct.queue_entry*, %struct.txdone_entry_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
