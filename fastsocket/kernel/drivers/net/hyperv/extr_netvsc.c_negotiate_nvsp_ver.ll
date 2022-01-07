; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_negotiate_nvsp_ver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_negotiate_nvsp_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.netvsc_device = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.nvsp_message = type { %struct.TYPE_18__, %struct.TYPE_13__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32 }

@NVSP_MSG_TYPE_INIT = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@NVSP_STAT_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NVSP_PROTOCOL_VERSION_2 = common dso_local global i64 0, align 8
@NVSP_MSG2_TYPE_SEND_NDIS_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*, %struct.netvsc_device*, %struct.nvsp_message*, i64)* @negotiate_nvsp_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @negotiate_nvsp_ver(%struct.hv_device* %0, %struct.netvsc_device* %1, %struct.nvsp_message* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hv_device*, align 8
  %7 = alloca %struct.netvsc_device*, align 8
  %8 = alloca %struct.nvsp_message*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %6, align 8
  store %struct.netvsc_device* %1, %struct.netvsc_device** %7, align 8
  store %struct.nvsp_message* %2, %struct.nvsp_message** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %13 = call i32 @memset(%struct.nvsp_message* %12, i32 0, i32 40)
  %14 = load i32, i32* @NVSP_MSG_TYPE_INIT, align 4
  %15 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %16 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %20 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  store i64 %18, i64* %23, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %26 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i64 %24, i64* %29, align 8
  %30 = load %struct.hv_device*, %struct.hv_device** %6, align 8
  %31 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %34 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %35 = ptrtoint %struct.nvsp_message* %34 to i64
  %36 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %37 = load i32, i32* @VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED, align 4
  %38 = call i32 @vmbus_sendpacket(i32 %32, %struct.nvsp_message* %33, i32 40, i64 %35, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %103

43:                                               ; preds = %4
  %44 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %45 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %44, i32 0, i32 1
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 5, %46
  %48 = call i32 @wait_for_completion_timeout(i32* %45, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @ETIMEDOUT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %103

54:                                               ; preds = %43
  %55 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %56 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NVSP_STAT_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %103

66:                                               ; preds = %54
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @NVSP_PROTOCOL_VERSION_2, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %103

71:                                               ; preds = %66
  %72 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %73 = call i32 @memset(%struct.nvsp_message* %72, i32 0, i32 40)
  %74 = load i32, i32* @NVSP_MSG2_TYPE_SEND_NDIS_CONFIG, align 4
  %75 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %76 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %79 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %84 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  store i32 %82, i32* %87, align 4
  %88 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %89 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load %struct.hv_device*, %struct.hv_device** %6, align 8
  %95 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %98 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %99 = ptrtoint %struct.nvsp_message* %98 to i64
  %100 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %101 = call i32 @vmbus_sendpacket(i32 %96, %struct.nvsp_message* %97, i32 40, i64 %99, i32 %100, i32 0)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %71, %70, %63, %51, %41
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @memset(%struct.nvsp_message*, i32, i32) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.nvsp_message*, i32, i64, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
