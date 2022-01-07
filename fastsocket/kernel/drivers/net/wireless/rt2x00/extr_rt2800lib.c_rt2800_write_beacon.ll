; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_write_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_write_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.txentry_desc = type { i32 }
%struct.skb_frame_desc = type { i32, i32, i32 }

@BCN_TIME_CFG = common dso_local global i32 0, align 4
@BCN_TIME_CFG_BEACON_GEN = common dso_local global i32 0, align 4
@SKBDESC_DESC_IN_SKB = common dso_local global i32 0, align 4
@DUMP_FRAME_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failure padding beacon, aborting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_write_beacon(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.skb_frame_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %12 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %13 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %15, align 8
  store %struct.rt2x00_dev* %16, %struct.rt2x00_dev** %5, align 8
  %17 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %18 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_8__* %19)
  store %struct.skb_frame_desc* %20, %struct.skb_frame_desc** %6, align 8
  %21 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %22 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %27 = load i32, i32* @BCN_TIME_CFG, align 4
  %28 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %26, i32 %27, i32* %10)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @BCN_TIME_CFG_BEACON_GEN, align 4
  %31 = call i32 @rt2x00_set_field32(i32* %10, i32 %30, i32 0)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %33 = load i32, i32* @BCN_TIME_CFG, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %32, i32 %33, i32 %34)
  %36 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %37 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @skb_push(%struct.TYPE_8__* %38, i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @memset(i32 %40, i32 0, i32 %41)
  %43 = load i32, i32* @SKBDESC_DESC_IN_SKB, align 4
  %44 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %6, align 8
  %45 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %49 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %6, align 8
  %54 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %6, align 8
  %57 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %59 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %60 = call i32 @rt2800_write_tx_data(%struct.queue_entry* %58, %struct.txentry_desc* %59)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %62 = load i32, i32* @DUMP_FRAME_BEACON, align 4
  %63 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %64 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = call i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev* %61, i32 %62, %struct.TYPE_8__* %65)
  %67 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %68 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @roundup(i32 %71, i32 4)
  %73 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %74 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sub i32 %72, %77
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %2
  %82 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %83 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i64 @skb_pad(%struct.TYPE_8__* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %90 = call i32 @rt2x00_err(%struct.rt2x00_dev* %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %92 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %91, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %92, align 8
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %94 = load i32, i32* @BCN_TIME_CFG, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %93, i32 %94, i32 %95)
  br label %129

97:                                               ; preds = %81, %2
  %98 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %99 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @HW_BEACON_OFFSET(i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %105 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %110 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %8, align 4
  %115 = add i32 %113, %114
  %116 = call i32 @rt2800_register_multiwrite(%struct.rt2x00_dev* %102, i32 %103, i32 %108, i32 %115)
  %117 = load i32, i32* @BCN_TIME_CFG_BEACON_GEN, align 4
  %118 = call i32 @rt2x00_set_field32(i32* %10, i32 %117, i32 1)
  %119 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %120 = load i32, i32* @BCN_TIME_CFG, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %119, i32 %120, i32 %121)
  %123 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %124 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = call i32 @dev_kfree_skb_any(%struct.TYPE_8__* %125)
  %127 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %128 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %127, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %128, align 8
  br label %129

129:                                              ; preds = %97, %88
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_8__*) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @skb_push(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @rt2800_write_tx_data(%struct.queue_entry*, %struct.txentry_desc*) #1

declare dso_local i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @skb_pad(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @HW_BEACON_OFFSET(i32) #1

declare dso_local i32 @rt2800_register_multiwrite(%struct.rt2x00_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
