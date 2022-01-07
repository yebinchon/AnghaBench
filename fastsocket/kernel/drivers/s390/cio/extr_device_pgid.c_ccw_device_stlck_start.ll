; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_pgid.c_ccw_device_stlck_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_pgid.c_ccw_device_stlck_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.ccw_request }
%struct.ccw_request = type { i32, i32, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.subchannel = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"stlck\00", align 1
@PGID_TIMEOUT = common dso_local global i32 0, align 4
@PGID_RETRIES = common dso_local global i32 0, align 4
@stlck_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccw_device_stlck_start(%struct.ccw_device* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.ccw_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.subchannel*, align 8
  %10 = alloca %struct.ccw_request*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.subchannel* @to_subchannel(i32 %14)
  store %struct.subchannel* %15, %struct.subchannel** %9, align 8
  %16 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %17 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store %struct.ccw_request* %19, %struct.ccw_request** %10, align 8
  %20 = call i32 @CIO_TRACE_EVENT(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %22 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @CIO_HEX_EVENT(i32 4, i32* %24, i32 4)
  %26 = load %struct.ccw_request*, %struct.ccw_request** %10, align 8
  %27 = call i32 @memset(%struct.ccw_request* %26, i32 0, i32 24)
  %28 = load i32, i32* @PGID_TIMEOUT, align 4
  %29 = load %struct.ccw_request*, %struct.ccw_request** %10, align 8
  %30 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @PGID_RETRIES, align 4
  %32 = load %struct.ccw_request*, %struct.ccw_request** %10, align 8
  %33 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.subchannel*, %struct.subchannel** %9, align 8
  %35 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.subchannel*, %struct.subchannel** %9, align 8
  %40 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, %41
  %43 = load %struct.ccw_request*, %struct.ccw_request** %10, align 8
  %44 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.ccw_request*, %struct.ccw_request** %10, align 8
  %47 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @stlck_callback, align 4
  %49 = load %struct.ccw_request*, %struct.ccw_request** %10, align 8
  %50 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @stlck_build_cp(%struct.ccw_device* %51, i8* %52, i8* %53)
  %55 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %56 = call i32 @ccw_request_start(%struct.ccw_device* %55)
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @CIO_HEX_EVENT(i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.ccw_request*, i32, i32) #1

declare dso_local i32 @stlck_build_cp(%struct.ccw_device*, i8*, i8*) #1

declare dso_local i32 @ccw_request_start(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
