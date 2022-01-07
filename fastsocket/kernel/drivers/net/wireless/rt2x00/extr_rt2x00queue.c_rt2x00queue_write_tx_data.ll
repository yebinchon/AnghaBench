; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_write_tx_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_write_tx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { {}*, i64 (%struct.queue_entry*)* }
%struct.txentry_desc = type { i32 }

@.str = private unnamed_addr constant [82 x i8] c"Corrupt queue %d, accessing entry which is not ours\0APlease file bug report to %s\0A\00", align 1
@DRV_PROJECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REQUIRE_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.queue_entry*, %struct.txentry_desc*)* @rt2x00queue_write_tx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00queue_write_tx_data(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca %struct.txentry_desc*, align 8
  %6 = alloca %struct.rt2x00_dev*, align 8
  store %struct.queue_entry* %0, %struct.queue_entry** %4, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %5, align 8
  %7 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %8 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  store %struct.rt2x00_dev* %11, %struct.rt2x00_dev** %6, align 8
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %13 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i64 (%struct.queue_entry*)*, i64 (%struct.queue_entry*)** %17, align 8
  %19 = icmp ne i64 (%struct.queue_entry*)* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %22 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64 (%struct.queue_entry*)*, i64 (%struct.queue_entry*)** %26, align 8
  %28 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %29 = call i64 %27(%struct.queue_entry* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %20, %2
  %32 = phi i1 [ false, %2 ], [ %30, %20 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %38 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %39 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DRV_PROJECT, align 4
  %44 = call i32 @rt2x00_err(%struct.rt2x00_dev* %37, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %103

47:                                               ; preds = %31
  %48 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %49 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %52 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @skb_push(%struct.TYPE_8__* %50, i32 %55)
  %57 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %58 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %63 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @memset(i32 %61, i32 0, i32 %66)
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %69 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = bitcast {}** %73 to i32 (%struct.queue_entry*, %struct.txentry_desc*)**
  %75 = load i32 (%struct.queue_entry*, %struct.txentry_desc*)*, i32 (%struct.queue_entry*, %struct.txentry_desc*)** %74, align 8
  %76 = icmp ne i32 (%struct.queue_entry*, %struct.txentry_desc*)* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %47
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %79 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = bitcast {}** %83 to i32 (%struct.queue_entry*, %struct.txentry_desc*)**
  %85 = load i32 (%struct.queue_entry*, %struct.txentry_desc*)*, i32 (%struct.queue_entry*, %struct.txentry_desc*)** %84, align 8
  %86 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %87 = load %struct.txentry_desc*, %struct.txentry_desc** %5, align 8
  %88 = call i32 %85(%struct.queue_entry* %86, %struct.txentry_desc* %87)
  br label %89

89:                                               ; preds = %77, %47
  %90 = load i32, i32* @REQUIRE_DMA, align 4
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %92 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %91, i32 0, i32 0
  %93 = call i64 @test_bit(i32 %90, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %97 = call i64 @rt2x00queue_map_txskb(%struct.queue_entry* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %103

102:                                              ; preds = %95, %89
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %99, %36
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*, i32, i32) #1

declare dso_local i32 @skb_push(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @rt2x00queue_map_txskb(%struct.queue_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
