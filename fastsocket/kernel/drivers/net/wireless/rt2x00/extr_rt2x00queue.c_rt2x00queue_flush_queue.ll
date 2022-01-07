; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_flush_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_flush_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i64, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.data_queue*, i32)*, i32 (%struct.data_queue*)* }

@QID_AC_VO = common dso_local global i64 0, align 8
@QID_AC_VI = common dso_local global i64 0, align 8
@QID_AC_BE = common dso_local global i64 0, align 8
@QID_AC_BK = common dso_local global i64 0, align 8
@QUEUE_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Queue %d failed to flush\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00queue_flush_queue(%struct.data_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.data_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.data_queue* %0, %struct.data_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %8 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @QID_AC_VO, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %14 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @QID_AC_VI, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %12
  %19 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %20 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @QID_AC_BE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %26 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @QID_AC_BK, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %24, %18, %12, %2
  %31 = phi i1 [ true, %18 ], [ true, %12 ], [ true, %2 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %34 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* @QUEUE_STARTED, align 4
  %37 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %38 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %37, i32 0, i32 3
  %39 = call i32 @test_bit(i32 %36, i32* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %30
  %43 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %44 = call i32 @rt2x00queue_pause_queue(%struct.data_queue* %43)
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %52 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32 (%struct.data_queue*)*, i32 (%struct.data_queue*)** %58, align 8
  %60 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %61 = call i32 %59(%struct.data_queue* %60)
  br label %62

62:                                               ; preds = %50, %47, %42
  br label %63

63:                                               ; preds = %62, %30
  %64 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %65 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32 (%struct.data_queue*, i32)*, i32 (%struct.data_queue*, i32)** %71, align 8
  %73 = call i64 @likely(i32 (%struct.data_queue*, i32)* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %63
  %76 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %77 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32 (%struct.data_queue*, i32)*, i32 (%struct.data_queue*, i32)** %83, align 8
  %85 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 %84(%struct.data_queue* %85, i32 %86)
  br label %88

88:                                               ; preds = %75, %63
  %89 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %90 = call i32 @rt2x00queue_empty(%struct.data_queue* %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %88
  %97 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %98 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %97, i32 0, i32 2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %101 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @rt2x00_warn(%struct.TYPE_6__* %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %96, %88
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %109 = call i32 @rt2x00queue_unpause_queue(%struct.data_queue* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %112 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %111, i32 0, i32 1
  %113 = call i32 @mutex_unlock(i32* %112)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00queue_pause_queue(%struct.data_queue*) #1

declare dso_local i64 @likely(i32 (%struct.data_queue*, i32)*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00queue_empty(%struct.data_queue*) #1

declare dso_local i32 @rt2x00_warn(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i32 @rt2x00queue_unpause_queue(%struct.data_queue*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
