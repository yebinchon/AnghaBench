; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_connect_vsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_connect_vsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.netvsc_device = type { i8*, %struct.nvsp_message, %struct.net_device* }
%struct.nvsp_message = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@NVSP_PROTOCOL_VERSION_2 = common dso_local global i8* null, align 8
@NVSP_PROTOCOL_VERSION_1 = common dso_local global i8* null, align 8
@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Negotiated NVSP version:%x\0A\00", align 1
@NVSP_MSG1_TYPE_SEND_NDIS_VER = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @netvsc_connect_vsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_connect_vsp(%struct.hv_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netvsc_device*, align 8
  %6 = alloca %struct.nvsp_message*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  %9 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %10 = call %struct.netvsc_device* @get_outbound_net_device(%struct.hv_device* %9)
  store %struct.netvsc_device* %10, %struct.netvsc_device** %5, align 8
  %11 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %12 = icmp ne %struct.netvsc_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %89

16:                                               ; preds = %1
  %17 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %18 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %17, i32 0, i32 2
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %8, align 8
  %20 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %21 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %20, i32 0, i32 1
  store %struct.nvsp_message* %21, %struct.nvsp_message** %6, align 8
  %22 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %23 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %24 = load %struct.nvsp_message*, %struct.nvsp_message** %6, align 8
  %25 = load i8*, i8** @NVSP_PROTOCOL_VERSION_2, align 8
  %26 = call i64 @negotiate_nvsp_ver(%struct.hv_device* %22, %struct.netvsc_device* %23, %struct.nvsp_message* %24, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load i8*, i8** @NVSP_PROTOCOL_VERSION_2, align 8
  %30 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %31 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %47

32:                                               ; preds = %16
  %33 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %34 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %35 = load %struct.nvsp_message*, %struct.nvsp_message** %6, align 8
  %36 = load i8*, i8** @NVSP_PROTOCOL_VERSION_1, align 8
  %37 = call i64 @negotiate_nvsp_ver(%struct.hv_device* %33, %struct.netvsc_device* %34, %struct.nvsp_message* %35, i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i8*, i8** @NVSP_PROTOCOL_VERSION_1, align 8
  %41 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %42 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  br label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @EPROTO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %87

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %49 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = load %struct.nvsp_message*, %struct.nvsp_message** %6, align 8
  %53 = call i32 @memset(%struct.nvsp_message* %52, i32 0, i32 12)
  store i32 327681, i32* %7, align 4
  %54 = load i32, i32* @NVSP_MSG1_TYPE_SEND_NDIS_VER, align 4
  %55 = load %struct.nvsp_message*, %struct.nvsp_message** %6, align 8
  %56 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, -65536
  %60 = lshr i32 %59, 16
  %61 = load %struct.nvsp_message*, %struct.nvsp_message** %6, align 8
  %62 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %60, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 65535
  %68 = load %struct.nvsp_message*, %struct.nvsp_message** %6, align 8
  %69 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i32 %67, i32* %72, align 4
  %73 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %74 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nvsp_message*, %struct.nvsp_message** %6, align 8
  %77 = load %struct.nvsp_message*, %struct.nvsp_message** %6, align 8
  %78 = ptrtoint %struct.nvsp_message* %77 to i64
  %79 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %80 = call i32 @vmbus_sendpacket(i32 %75, %struct.nvsp_message* %76, i32 12, i64 %78, i32 %79, i32 0)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %47
  br label %87

84:                                               ; preds = %47
  %85 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %86 = call i32 @netvsc_init_recv_buf(%struct.hv_device* %85)
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %84, %83, %43
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %13
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.netvsc_device* @get_outbound_net_device(%struct.hv_device*) #1

declare dso_local i64 @negotiate_nvsp_ver(%struct.hv_device*, %struct.netvsc_device*, %struct.nvsp_message*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @memset(%struct.nvsp_message*, i32, i32) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.nvsp_message*, i32, i64, i32, i32) #1

declare dso_local i32 @netvsc_init_recv_buf(%struct.hv_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
