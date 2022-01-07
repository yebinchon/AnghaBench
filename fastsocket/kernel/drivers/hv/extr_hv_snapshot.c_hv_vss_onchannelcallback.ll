; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_snapshot.c_hv_vss_onchannelcallback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_snapshot.c_hv_vss_onchannelcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.hv_vss_msg*, i32, %struct.vmbus_channel*, i64 }
%struct.hv_vss_msg = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.vmbus_channel = type { i32 }
%struct.icmsg_hdr = type { i64, i32 }
%struct.icmsg_negotiate = type { i32 }

@vss_transaction = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@recv_buffer = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ICMSGTYPE_NEGOTIATE = common dso_local global i64 0, align 8
@UTIL_FW_VERSION = common dso_local global i32 0, align 4
@VSS_VERSION = common dso_local global i32 0, align 4
@vss_send_op_work = common dso_local global i32 0, align 4
@VSS_HBU_NO_AUTO_RECOVERY = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_TRANSACTION = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_RESPONSE = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hv_vss_onchannelcallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hv_vss_msg*, align 8
  %7 = alloca %struct.icmsg_hdr*, align 8
  %8 = alloca %struct.icmsg_negotiate*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.vmbus_channel*
  store %struct.vmbus_channel* %10, %struct.vmbus_channel** %3, align 8
  store %struct.icmsg_negotiate* null, %struct.icmsg_negotiate** %8, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 0), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  store %struct.vmbus_channel* %14, %struct.vmbus_channel** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 3), align 8
  br label %78

15:                                               ; preds = %1
  %16 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %17 = load i32*, i32** @recv_buffer, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = mul nsw i32 %18, 2
  %20 = call i32 @vmbus_recvpacket(%struct.vmbus_channel* %16, i32* %17, i32 %19, i64* %4, i32* %5)
  %21 = load i64, i64* %4, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %78

23:                                               ; preds = %15
  %24 = load i32*, i32** @recv_buffer, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = bitcast i32* %25 to %struct.icmsg_hdr*
  store %struct.icmsg_hdr* %26, %struct.icmsg_hdr** %7, align 8
  %27 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %7, align 8
  %28 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ICMSGTYPE_NEGOTIATE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %7, align 8
  %34 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %8, align 8
  %35 = load i32*, i32** @recv_buffer, align 8
  %36 = load i32, i32* @UTIL_FW_VERSION, align 4
  %37 = load i32, i32* @VSS_VERSION, align 4
  %38 = call i32 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr* %33, %struct.icmsg_negotiate* %34, i32* %35, i32 %36, i32 %37)
  br label %66

39:                                               ; preds = %23
  %40 = load i32*, i32** @recv_buffer, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 20
  %42 = bitcast i32* %41 to %struct.hv_vss_msg*
  store %struct.hv_vss_msg* %42, %struct.hv_vss_msg** %6, align 8
  %43 = load i64, i64* %4, align 8
  store i64 %43, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 4), align 8
  %44 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  store %struct.vmbus_channel* %44, %struct.vmbus_channel** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 3), align 8
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 0), align 8
  %46 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %6, align 8
  store %struct.hv_vss_msg* %46, %struct.hv_vss_msg** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 1), align 8
  %47 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %6, align 8
  %48 = getelementptr inbounds %struct.hv_vss_msg, %struct.hv_vss_msg* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %64 [
    i32 131, label %51
    i32 128, label %51
    i32 129, label %53
    i32 130, label %59
  ]

51:                                               ; preds = %39, %39
  %52 = call i32 @schedule_work(i32* @vss_send_op_work)
  br label %78

53:                                               ; preds = %39
  %54 = load i32, i32* @VSS_HBU_NO_AUTO_RECOVERY, align 4
  %55 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %6, align 8
  %56 = getelementptr inbounds %struct.hv_vss_msg, %struct.hv_vss_msg* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = call i32 @vss_respond_to_host(i32 0)
  br label %78

59:                                               ; preds = %39
  %60 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %6, align 8
  %61 = getelementptr inbounds %struct.hv_vss_msg, %struct.hv_vss_msg* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  %63 = call i32 @vss_respond_to_host(i32 0)
  br label %78

64:                                               ; preds = %39
  %65 = call i32 @vss_respond_to_host(i32 0)
  br label %78

66:                                               ; preds = %32
  %67 = load i32, i32* @ICMSGHDRFLAG_TRANSACTION, align 4
  %68 = load i32, i32* @ICMSGHDRFLAG_RESPONSE, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %7, align 8
  %71 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %73 = load i32*, i32** @recv_buffer, align 8
  %74 = load i64, i64* %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %77 = call i32 @vmbus_sendpacket(%struct.vmbus_channel* %72, i32* %73, i64 %74, i32 %75, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %13, %51, %53, %59, %64, %66, %15
  ret void
}

declare dso_local i32 @vmbus_recvpacket(%struct.vmbus_channel*, i32*, i32, i64*, i32*) #1

declare dso_local i32 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr*, %struct.icmsg_negotiate*, i32*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @vss_respond_to_host(i32) #1

declare dso_local i32 @vmbus_sendpacket(%struct.vmbus_channel*, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
