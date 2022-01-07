; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_balloon.c_balloon_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_balloon.c_balloon_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.hv_dynmem_device = type { i32 }
%struct.dm_unballoon_request = type { i32, i32, %union.dm_mem_page_range* }
%union.dm_mem_page_range = type { i32 }
%struct.dm_unballoon_response = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@DM_UNBALLOON_RESPONSE = common dso_local global i32 0, align 4
@trans_id = common dso_local global i32 0, align 4
@dm_device = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@DM_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_dynmem_device*, %struct.dm_unballoon_request*)* @balloon_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balloon_down(%struct.hv_dynmem_device* %0, %struct.dm_unballoon_request* %1) #0 {
  %3 = alloca %struct.hv_dynmem_device*, align 8
  %4 = alloca %struct.dm_unballoon_request*, align 8
  %5 = alloca %union.dm_mem_page_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_unballoon_response, align 4
  %8 = alloca i32, align 4
  store %struct.hv_dynmem_device* %0, %struct.hv_dynmem_device** %3, align 8
  store %struct.dm_unballoon_request* %1, %struct.dm_unballoon_request** %4, align 8
  %9 = load %struct.dm_unballoon_request*, %struct.dm_unballoon_request** %4, align 8
  %10 = getelementptr inbounds %struct.dm_unballoon_request, %struct.dm_unballoon_request* %9, i32 0, i32 2
  %11 = load %union.dm_mem_page_range*, %union.dm_mem_page_range** %10, align 8
  store %union.dm_mem_page_range* %11, %union.dm_mem_page_range** %5, align 8
  %12 = load %struct.dm_unballoon_request*, %struct.dm_unballoon_request** %4, align 8
  %13 = getelementptr inbounds %struct.dm_unballoon_request, %struct.dm_unballoon_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %26, %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %3, align 8
  %21 = load %union.dm_mem_page_range*, %union.dm_mem_page_range** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %union.dm_mem_page_range, %union.dm_mem_page_range* %21, i64 %23
  %25 = call i32 @free_balloon_pages(%struct.hv_dynmem_device* %20, %union.dm_mem_page_range* %24)
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %15

29:                                               ; preds = %15
  %30 = load %struct.dm_unballoon_request*, %struct.dm_unballoon_request** %4, align 8
  %31 = getelementptr inbounds %struct.dm_unballoon_request, %struct.dm_unballoon_request* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %53

35:                                               ; preds = %29
  %36 = call i32 @memset(%struct.dm_unballoon_response* %7, i32 0, i32 12)
  %37 = load i32, i32* @DM_UNBALLOON_RESPONSE, align 4
  %38 = getelementptr inbounds %struct.dm_unballoon_response, %struct.dm_unballoon_response* %7, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = call i32 @atomic_inc_return(i32* @trans_id)
  %41 = getelementptr inbounds %struct.dm_unballoon_response, %struct.dm_unballoon_response* %7, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.dm_unballoon_response, %struct.dm_unballoon_response* %7, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 12, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dm_device, i32 0, i32 0), align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %49 = call i32 @vmbus_sendpacket(i32 %47, %struct.dm_unballoon_response* %7, i32 12, i64 0, i32 %48, i32 0)
  %50 = load i32, i32* @DM_INITIALIZED, align 4
  %51 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %3, align 8
  %52 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @free_balloon_pages(%struct.hv_dynmem_device*, %union.dm_mem_page_range*) #1

declare dso_local i32 @memset(%struct.dm_unballoon_response*, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.dm_unballoon_response*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
