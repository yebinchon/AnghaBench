; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_id.c_ccw_device_sense_id_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_id.c_ccw_device_sense_id_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, %struct.ccw1*, %struct.ccw_request }
%struct.ccw1 = type { i32, i32, i64, i32 }
%struct.ccw_request = type { i32, i32, i32, i32, i32, %struct.ccw1* }
%struct.TYPE_5__ = type { i32 }
%struct.subchannel = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"snsid\00", align 1
@CCW_CMD_SENSE_ID = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@SENSE_ID_TIMEOUT = common dso_local global i32 0, align 4
@SENSE_ID_RETRIES = common dso_local global i32 0, align 4
@snsid_check = common dso_local global i32 0, align 4
@snsid_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccw_device_sense_id_start(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.ccw_request*, align 8
  %5 = alloca %struct.ccw1*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.subchannel* @to_subchannel(i32 %9)
  store %struct.subchannel* %10, %struct.subchannel** %3, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store %struct.ccw_request* %14, %struct.ccw_request** %4, align 8
  %15 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %16 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load %struct.ccw1*, %struct.ccw1** %18, align 8
  store %struct.ccw1* %19, %struct.ccw1** %5, align 8
  %20 = call i32 @CIO_TRACE_EVENT(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %22 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = call i32 @CIO_HEX_EVENT(i32 4, i32* %24, i32 4)
  %26 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %27 = call i32 @snsid_init(%struct.ccw_device* %26)
  %28 = load i32, i32* @CCW_CMD_SENSE_ID, align 4
  %29 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %30 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %32 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = ptrtoint i32* %34 to i64
  %36 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %37 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %39 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %38, i32 0, i32 0
  store i32 4, i32* %39, align 8
  %40 = load i32, i32* @CCW_FLAG_SLI, align 4
  %41 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %42 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %44 = call i32 @memset(%struct.ccw_request* %43, i32 0, i32 32)
  %45 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %46 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %47 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %46, i32 0, i32 5
  store %struct.ccw1* %45, %struct.ccw1** %47, align 8
  %48 = load i32, i32* @SENSE_ID_TIMEOUT, align 4
  %49 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %50 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @SENSE_ID_RETRIES, align 4
  %52 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %53 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %55 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %60 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %58, %61
  %63 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %64 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @snsid_check, align 4
  %66 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %67 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @snsid_callback, align 4
  %69 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %70 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %72 = call i32 @ccw_request_start(%struct.ccw_device* %71)
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @CIO_HEX_EVENT(i32, i32*, i32) #1

declare dso_local i32 @snsid_init(%struct.ccw_device*) #1

declare dso_local i32 @memset(%struct.ccw_request*, i32, i32) #1

declare dso_local i32 @ccw_request_start(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
