; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_is_ptp_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_is_ptp_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@PTP_MIN_LENGTH = common dso_local global i64 0, align 8
@MC_CMD_PTP_IN_TRANSMIT_PACKET_MAXNUM = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@PTP_EVENT_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_ptp_is_ptp_tx(%struct.efx_nic* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %53

9:                                                ; preds = %2
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %9
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PTP_MIN_LENGTH, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %16
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MC_CMD_PTP_IN_TRANSMIT_PACKET_MAXNUM, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %22
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @ETH_P_IP, align 4
  %33 = call i64 @htons(i32 %32)
  %34 = icmp eq i64 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %28
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IPPROTO_UDP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call %struct.TYPE_5__* @udp_hdr(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @PTP_EVENT_PORT, align 4
  %51 = call i64 @htons(i32 %50)
  %52 = icmp eq i64 %49, %51
  br label %53

53:                                               ; preds = %45, %38, %28, %22, %16, %9, %2
  %54 = phi i1 [ false, %38 ], [ false, %28 ], [ false, %22 ], [ false, %16 ], [ false, %9 ], [ false, %2 ], [ %52, %45 ]
  %55 = zext i1 %54 to i32
  ret i32 %55
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_6__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @udp_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
