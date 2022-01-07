; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_async.c_sclp_async_send_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_async.c_sclp_async_send_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_7__, %struct.async_evbuf }
%struct.TYPE_7__ = type { i32, i32 }
%struct.async_evbuf = type { i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__*, i32 }
%struct.sclp_async_sccb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@callhome_enabled = common dso_local global i32 0, align 4
@EVTYP_ASYNC = common dso_local global i32 0, align 4
@sccb = common dso_local global %struct.TYPE_11__* null, align 8
@SCLP_CMDW_WRITE_EVENT_DATA = common dso_local global i32 0, align 4
@request = common dso_local global %struct.TYPE_10__* null, align 8
@SCLP_REQ_FILLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"5639H7CH0\00", align 1
@SCLP_NORMAL_WRITE = common dso_local global i32 0, align 4
@sclp_async_lock = common dso_local global i32 0, align 4
@SCLP_REQ_DONE = common dso_local global i64 0, align 8
@SCLP_REQ_FAILED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sclp_async_send_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_async_send_wait(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.async_evbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @callhome_enabled, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %115

10:                                               ; preds = %1
  %11 = load i32, i32* @EVTYP_ASYNC, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sccb, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.async_evbuf, %struct.async_evbuf* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  store i32 %11, i32* %15, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sccb, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.async_evbuf, %struct.async_evbuf* %17, i32 0, i32 0
  store i32 165, i32* %18, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sccb, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.async_evbuf, %struct.async_evbuf* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sccb, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  store %struct.async_evbuf* %23, %struct.async_evbuf** %4, align 8
  %24 = load i32, i32* @SCLP_CMDW_WRITE_EVENT_DATA, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @request, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sccb, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @request, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %29, align 8
  %30 = load i64, i64* @SCLP_REQ_FILLED, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @request, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sccb, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.async_evbuf, %struct.async_evbuf* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @strncpy(i32 %36, i8* %37, i32 4)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sccb, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.async_evbuf, %struct.async_evbuf* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strncpy(i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sccb, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.async_evbuf, %struct.async_evbuf* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i32 28, i32* %47, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sccb, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 36, i32* %50, align 4
  %51 = load i32, i32* @SCLP_NORMAL_WRITE, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sccb, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @request, align 8
  %56 = call i32 @sclp_add_request(%struct.TYPE_10__* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %10
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %115

61:                                               ; preds = %10
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_lock_irqsave(i32* @sclp_async_lock, i64 %62)
  br label %64

64:                                               ; preds = %78, %61
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** @request, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SCLP_REQ_DONE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @request, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SCLP_REQ_FAILED, align 8
  %75 = icmp ne i64 %73, %74
  br label %76

76:                                               ; preds = %70, %64
  %77 = phi i1 [ false, %64 ], [ %75, %70 ]
  br i1 %77, label %78, label %80

78:                                               ; preds = %76
  %79 = call i32 (...) @sclp_sync_wait()
  br label %64

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* @sclp_async_lock, i64 %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** @request, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SCLP_REQ_DONE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %115

91:                                               ; preds = %80
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** @request, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = bitcast %struct.TYPE_11__* %94 to %struct.sclp_async_sccb*
  %96 = getelementptr inbounds %struct.sclp_async_sccb, %struct.sclp_async_sccb* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 32
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %115

104:                                              ; preds = %91
  %105 = load %struct.async_evbuf*, %struct.async_evbuf** %4, align 8
  %106 = getelementptr inbounds %struct.async_evbuf, %struct.async_evbuf* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 128
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %115

113:                                              ; preds = %104
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %110, %101, %88, %59, %9
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @sclp_add_request(%struct.TYPE_10__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sclp_sync_wait(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
