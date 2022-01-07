; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_balloon.c_version_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_balloon.c_version_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_dynmem_device = type { i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.dm_version_response = type { i64 }
%struct.dm_version_request = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@DM_VERSION_REQUEST = common dso_local global i32 0, align 4
@trans_id = common dso_local global i32 0, align 4
@DYNMEM_PROTOCOL_VERSION_WIN7 = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@DM_INIT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_dynmem_device*, %struct.dm_version_response*)* @version_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @version_resp(%struct.hv_dynmem_device* %0, %struct.dm_version_response* %1) #0 {
  %3 = alloca %struct.hv_dynmem_device*, align 8
  %4 = alloca %struct.dm_version_response*, align 8
  %5 = alloca %struct.dm_version_request, align 4
  %6 = alloca i32, align 4
  store %struct.hv_dynmem_device* %0, %struct.hv_dynmem_device** %3, align 8
  store %struct.dm_version_response* %1, %struct.dm_version_response** %4, align 8
  %7 = load %struct.dm_version_response*, %struct.dm_version_response** %4, align 8
  %8 = getelementptr inbounds %struct.dm_version_response, %struct.dm_version_response* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %3, align 8
  %13 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %12, i32 0, i32 1
  %14 = call i32 @complete(i32* %13)
  br label %55

15:                                               ; preds = %2
  %16 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %3, align 8
  %17 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %48

21:                                               ; preds = %15
  %22 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %3, align 8
  %23 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = call i32 @memset(%struct.dm_version_request* %5, i32 0, i32 20)
  %25 = load i32, i32* @DM_VERSION_REQUEST, align 4
  %26 = getelementptr inbounds %struct.dm_version_request, %struct.dm_version_request* %5, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.dm_version_request, %struct.dm_version_request* %5, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 20, i32* %29, align 4
  %30 = call i32 @atomic_inc_return(i32* @trans_id)
  %31 = getelementptr inbounds %struct.dm_version_request, %struct.dm_version_request* %5, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @DYNMEM_PROTOCOL_VERSION_WIN7, align 4
  %34 = getelementptr inbounds %struct.dm_version_request, %struct.dm_version_request* %5, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.dm_version_request, %struct.dm_version_request* %5, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %3, align 8
  %38 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %43 = call i32 @vmbus_sendpacket(i32 %41, %struct.dm_version_request* %5, i32 20, i64 0, i32 %42, i32 0)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %21
  br label %48

47:                                               ; preds = %21
  br label %55

48:                                               ; preds = %46, %20
  %49 = load i32, i32* @DM_INIT_ERROR, align 4
  %50 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %3, align 8
  %51 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %3, align 8
  %53 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %52, i32 0, i32 1
  %54 = call i32 @complete(i32* %53)
  br label %55

55:                                               ; preds = %48, %47, %11
  ret void
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @memset(%struct.dm_version_request*, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.dm_version_request*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
