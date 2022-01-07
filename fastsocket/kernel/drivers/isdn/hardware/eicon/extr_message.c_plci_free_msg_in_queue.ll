; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_plci_free_msg_in_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_plci_free_msg_in_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@_DATA_B3_R = common dso_local global i64 0, align 8
@MSG_IN_OVERHEAD = common dso_local global i32 0, align 4
@MSG_IN_QUEUE_SIZE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @plci_free_msg_in_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plci_free_msg_in_queue(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %74

8:                                                ; preds = %1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  br label %12

12:                                               ; preds = %55, %8
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %73

18:                                               ; preds = %12
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i64 0, i64* %3, align 8
  br label %25

25:                                               ; preds = %24, %18
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = bitcast i32* %31 to %struct.TYPE_11__*
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @_DATA_B3_R, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %25
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = bitcast i32* %47 to %struct.TYPE_11__*
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = call i32 @TransmitBufferFree(i64 %41, i32* %53)
  br label %55

55:                                               ; preds = %38, %25
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load i64, i64* %3, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = bitcast i32* %61 to %struct.TYPE_11__*
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MSG_IN_OVERHEAD, align 4
  %67 = add nsw i32 %65, %66
  %68 = add nsw i32 %67, 3
  %69 = and i32 %68, 65532
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %3, align 8
  br label %12

73:                                               ; preds = %12
  br label %74

74:                                               ; preds = %73, %1
  %75 = load i8*, i8** @MSG_IN_QUEUE_SIZE, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load i8*, i8** @MSG_IN_QUEUE_SIZE, align 8
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i8*, i8** @MSG_IN_QUEUE_SIZE, align 8
  %84 = ptrtoint i8* %83 to i64
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  ret void
}

declare dso_local i32 @TransmitBufferFree(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
