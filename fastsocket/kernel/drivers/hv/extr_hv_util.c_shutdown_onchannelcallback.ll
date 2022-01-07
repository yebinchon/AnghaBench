; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_util.c_shutdown_onchannelcallback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_util.c_shutdown_onchannelcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.vmbus_channel = type { i32 }
%struct.shutdown_msg_data = type { i32 }
%struct.icmsg_hdr = type { i64, i32, i32 }
%struct.icmsg_negotiate = type { i32 }

@util_shutdown = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ICMSGTYPE_NEGOTIATE = common dso_local global i64 0, align 8
@util_fw_version = common dso_local global i32 0, align 4
@sd_srv_version = common dso_local global i32 0, align 4
@HV_S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Shutdown request received - graceful shutdown initiated\0A\00", align 1
@HV_E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Shutdown request received - Invalid request\0A\00", align 1
@ICMSGHDRFLAG_TRANSACTION = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_RESPONSE = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@shutdown_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @shutdown_onchannelcallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown_onchannelcallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.shutdown_msg_data*, align 8
  %9 = alloca %struct.icmsg_hdr*, align 8
  %10 = alloca %struct.icmsg_negotiate*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.vmbus_channel*
  store %struct.vmbus_channel* %12, %struct.vmbus_channel** %3, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @util_shutdown, i32 0, i32 0), align 8
  store i32* %13, i32** %7, align 8
  store %struct.icmsg_negotiate* null, %struct.icmsg_negotiate** %10, align 8
  %14 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = call i32 @vmbus_recvpacket(%struct.vmbus_channel* %14, i32* %15, i32 %16, i64* %4, i32* %5)
  %18 = load i64, i64* %4, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %1
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = bitcast i32* %22 to %struct.icmsg_hdr*
  store %struct.icmsg_hdr* %23, %struct.icmsg_hdr** %9, align 8
  %24 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %25 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ICMSGTYPE_NEGOTIATE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %31 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %10, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @util_fw_version, align 4
  %34 = load i32, i32* @sd_srv_version, align 4
  %35 = call i32 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr* %30, %struct.icmsg_negotiate* %31, i32* %32, i32 %33, i32 %34)
  br label %54

36:                                               ; preds = %20
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 20
  %39 = bitcast i32* %38 to %struct.shutdown_msg_data*
  store %struct.shutdown_msg_data* %39, %struct.shutdown_msg_data** %8, align 8
  %40 = load %struct.shutdown_msg_data*, %struct.shutdown_msg_data** %8, align 8
  %41 = getelementptr inbounds %struct.shutdown_msg_data, %struct.shutdown_msg_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %48 [
    i32 0, label %43
    i32 1, label %43
  ]

43:                                               ; preds = %36, %36
  %44 = load i32, i32* @HV_S_OK, align 4
  %45 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %46 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  store i32 1, i32* %6, align 4
  %47 = call i32 @pr_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %53

48:                                               ; preds = %36
  %49 = load i32, i32* @HV_E_FAIL, align 4
  %50 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %51 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %6, align 4
  %52 = call i32 @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i32, i32* @ICMSGHDRFLAG_TRANSACTION, align 4
  %56 = load i32, i32* @ICMSGHDRFLAG_RESPONSE, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %59 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %65 = call i32 @vmbus_sendpacket(%struct.vmbus_channel* %60, i32* %61, i64 %62, i32 %63, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %54, %1
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @schedule_work(i32* @shutdown_work)
  br label %71

71:                                               ; preds = %69, %66
  ret void
}

declare dso_local i32 @vmbus_recvpacket(%struct.vmbus_channel*, i32*, i32, i64*, i32*) #1

declare dso_local i32 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr*, %struct.icmsg_negotiate*, i32*, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @vmbus_sendpacket(%struct.vmbus_channel*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
