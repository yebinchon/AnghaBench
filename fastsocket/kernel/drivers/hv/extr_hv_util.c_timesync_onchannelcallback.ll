; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_util.c_timesync_onchannelcallback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_util.c_timesync_onchannelcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.vmbus_channel = type { i32 }
%struct.icmsg_hdr = type { i64, i32 }
%struct.ictimesync_data = type { i32, i32 }
%struct.icmsg_negotiate = type { i32 }

@util_timesynch = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ICMSGTYPE_NEGOTIATE = common dso_local global i64 0, align 8
@util_fw_version = common dso_local global i32 0, align 4
@ts_srv_version = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_TRANSACTION = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_RESPONSE = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @timesync_onchannelcallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timesync_onchannelcallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.icmsg_hdr*, align 8
  %7 = alloca %struct.ictimesync_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.icmsg_negotiate*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.vmbus_channel*
  store %struct.vmbus_channel* %11, %struct.vmbus_channel** %3, align 8
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @util_timesynch, i32 0, i32 0), align 8
  store i32* %12, i32** %8, align 8
  store %struct.icmsg_negotiate* null, %struct.icmsg_negotiate** %9, align 8
  %13 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call i32 @vmbus_recvpacket(%struct.vmbus_channel* %13, i32* %14, i32 %15, i64* %4, i32* %5)
  %17 = load i64, i64* %4, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %1
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = bitcast i32* %21 to %struct.icmsg_hdr*
  store %struct.icmsg_hdr* %22, %struct.icmsg_hdr** %6, align 8
  %23 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %6, align 8
  %24 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ICMSGTYPE_NEGOTIATE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %6, align 8
  %30 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %9, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @util_fw_version, align 4
  %33 = load i32, i32* @ts_srv_version, align 4
  %34 = call i32 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr* %29, %struct.icmsg_negotiate* %30, i32* %31, i32 %32, i32 %33)
  br label %46

35:                                               ; preds = %19
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 20
  %38 = bitcast i32* %37 to %struct.ictimesync_data*
  store %struct.ictimesync_data* %38, %struct.ictimesync_data** %7, align 8
  %39 = load %struct.ictimesync_data*, %struct.ictimesync_data** %7, align 8
  %40 = getelementptr inbounds %struct.ictimesync_data, %struct.ictimesync_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ictimesync_data*, %struct.ictimesync_data** %7, align 8
  %43 = getelementptr inbounds %struct.ictimesync_data, %struct.ictimesync_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @adj_guesttime(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %35, %28
  %47 = load i32, i32* @ICMSGHDRFLAG_TRANSACTION, align 4
  %48 = load i32, i32* @ICMSGHDRFLAG_RESPONSE, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %6, align 8
  %51 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %57 = call i32 @vmbus_sendpacket(%struct.vmbus_channel* %52, i32* %53, i64 %54, i32 %55, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %46, %1
  ret void
}

declare dso_local i32 @vmbus_recvpacket(%struct.vmbus_channel*, i32*, i32, i64*, i32*) #1

declare dso_local i32 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr*, %struct.icmsg_negotiate*, i32*, i32, i32) #1

declare dso_local i32 @adj_guesttime(i32, i32) #1

declare dso_local i32 @vmbus_sendpacket(%struct.vmbus_channel*, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
