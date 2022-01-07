; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_pgid.c_verify_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_pgid.c_verify_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.ccw_dev_id, %struct.ccw_request }
%struct.TYPE_9__ = type { i64 }
%struct.ccw_dev_id = type { i32 }
%struct.ccw_request = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@PGID_TIMEOUT = common dso_local global i32 0, align 4
@PGID_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"snid\00", align 1
@snid_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@nop_filter = common dso_local global i32 0, align 4
@nop_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @verify_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_start(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.ccw_request*, align 8
  %5 = alloca %struct.ccw_dev_id*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.subchannel* @to_subchannel(i32 %9)
  store %struct.subchannel* %10, %struct.subchannel** %3, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  store %struct.ccw_request* %14, %struct.ccw_request** %4, align 8
  %15 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %16 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  store %struct.ccw_dev_id* %18, %struct.ccw_dev_id** %5, align 8
  %19 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %20 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %22 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %27 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %29 = call i32 @memset(%struct.ccw_request* %28, i32 0, i32 24)
  %30 = load i32, i32* @PGID_TIMEOUT, align 4
  %31 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %32 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @PGID_RETRIES, align 4
  %34 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %35 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %37 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %36, i32 0, i32 0
  store i32 128, i32* %37, align 4
  %38 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %39 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %41 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %1
  %48 = call i32 @CIO_TRACE_EVENT(i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %5, align 8
  %50 = call i32 @CIO_HEX_EVENT(i32 4, %struct.ccw_dev_id* %49, i32 4)
  %51 = load i32, i32* @snid_callback, align 4
  %52 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %53 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %55 = call i32 @snid_do(%struct.ccw_device* %54)
  br label %68

56:                                               ; preds = %1
  %57 = call i32 @CIO_TRACE_EVENT(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %5, align 8
  %59 = call i32 @CIO_HEX_EVENT(i32 4, %struct.ccw_dev_id* %58, i32 4)
  %60 = load i32, i32* @nop_filter, align 4
  %61 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %62 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @nop_callback, align 4
  %64 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %65 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %67 = call i32 @nop_do(%struct.ccw_device* %66)
  br label %68

68:                                               ; preds = %56, %47
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @memset(%struct.ccw_request*, i32, i32) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @CIO_HEX_EVENT(i32, %struct.ccw_dev_id*, i32) #1

declare dso_local i32 @snid_do(%struct.ccw_device*) #1

declare dso_local i32 @nop_do(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
