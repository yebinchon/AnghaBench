; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_queue_complete_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_queue_complete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_request = type { %struct.TYPE_2__, %struct.hpsb_packet* }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.hpsb_packet = type { i32*, i32 }

@RAW1394_ERROR_SEND_ERROR = common dso_local global i32 0, align 4
@RAW1394_ERROR_ABORTED = common dso_local global i32 0, align 4
@RAW1394_ERROR_TIMEOUT = common dso_local global i32 0, align 4
@ACK_PENDING = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@RAW1394_REQ_ASYNC_READ = common dso_local global i64 0, align 8
@RAW1394_REQ_ASYNC_WRITE = common dso_local global i64 0, align 8
@RAW1394_REQ_ASYNC_STREAM = common dso_local global i64 0, align 8
@RAW1394_REQ_LOCK = common dso_local global i64 0, align 8
@RAW1394_REQ_LOCK64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pending_request*)* @queue_complete_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_complete_cb(%struct.pending_request* %0) #0 {
  %2 = alloca %struct.pending_request*, align 8
  %3 = alloca %struct.hpsb_packet*, align 8
  %4 = alloca i32, align 4
  store %struct.pending_request* %0, %struct.pending_request** %2, align 8
  %5 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %6 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %5, i32 0, i32 1
  %7 = load %struct.hpsb_packet*, %struct.hpsb_packet** %6, align 8
  store %struct.hpsb_packet* %7, %struct.hpsb_packet** %3, align 8
  %8 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %9 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 12
  %14 = and i32 %13, 15
  store i32 %14, i32* %4, align 4
  %15 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %16 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %33 [
    i32 130, label %18
    i32 129, label %18
    i32 131, label %23
    i32 128, label %28
  ]

18:                                               ; preds = %1, %1
  %19 = load i32, i32* @RAW1394_ERROR_SEND_ERROR, align 4
  %20 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %21 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  br label %43

23:                                               ; preds = %1
  %24 = load i32, i32* @RAW1394_ERROR_ABORTED, align 4
  %25 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %26 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  br label %43

28:                                               ; preds = %1
  %29 = load i32, i32* @RAW1394_ERROR_TIMEOUT, align 4
  %30 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %31 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  br label %43

33:                                               ; preds = %1
  %34 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %35 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %36, 16
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %41 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  br label %43

43:                                               ; preds = %33, %28, %23, %18
  %44 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %45 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ACK_PENDING, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @RCODE_COMPLETE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %55 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %59 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RAW1394_REQ_ASYNC_READ, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %92, label %64

64:                                               ; preds = %57
  %65 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %66 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @RAW1394_REQ_ASYNC_WRITE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %92, label %71

71:                                               ; preds = %64
  %72 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %73 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RAW1394_REQ_ASYNC_STREAM, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %92, label %78

78:                                               ; preds = %71
  %79 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %80 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @RAW1394_REQ_LOCK, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %87 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @RAW1394_REQ_LOCK64, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85, %78, %71, %64, %57
  %93 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %94 = call i32 @hpsb_free_tlabel(%struct.hpsb_packet* %93)
  br label %95

95:                                               ; preds = %92, %85
  %96 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %97 = call i32 @queue_complete_req(%struct.pending_request* %96)
  ret void
}

declare dso_local i32 @hpsb_free_tlabel(%struct.hpsb_packet*) #1

declare dso_local i32 @queue_complete_req(%struct.pending_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
