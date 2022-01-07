; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_process_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i64 }
%struct.efx_ptp_match = type { i64, i32 }

@PTP_PACKET_STATE_MATCH_UNWANTED = common dso_local global i64 0, align 8
@PTP_PACKET_STATE_MATCHED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@PTP_PACKET_STATE_TIMED_OUT = common dso_local global i64 0, align 8
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PTP packet - no timestamp seen\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.sk_buff_head*)* @efx_ptp_process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ptp_process_events(%struct.efx_nic* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.efx_ptp_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.efx_ptp_match*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 1
  %11 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %10, align 8
  store %struct.efx_ptp_data* %11, %struct.efx_ptp_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %68, %2
  %13 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %14 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %13, i32 0, i32 0
  %15 = call %struct.sk_buff* @skb_dequeue(i32* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %17, label %69

17:                                               ; preds = %12
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.efx_ptp_match*
  store %struct.efx_ptp_match* %21, %struct.efx_ptp_match** %8, align 8
  %22 = load %struct.efx_ptp_match*, %struct.efx_ptp_match** %8, align 8
  %23 = getelementptr inbounds %struct.efx_ptp_match, %struct.efx_ptp_match* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PTP_PACKET_STATE_MATCH_UNWANTED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %28, %struct.sk_buff* %29)
  br label %68

31:                                               ; preds = %17
  %32 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = call i64 @efx_ptp_match_rx(%struct.efx_nic* %32, %struct.sk_buff* %33)
  %35 = load i64, i64* @PTP_PACKET_STATE_MATCHED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  store i32 1, i32* %6, align 4
  %38 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %38, %struct.sk_buff* %39)
  br label %67

41:                                               ; preds = %31
  %42 = load i32, i32* @jiffies, align 4
  %43 = load %struct.efx_ptp_match*, %struct.efx_ptp_match** %8, align 8
  %44 = getelementptr inbounds %struct.efx_ptp_match, %struct.efx_ptp_match* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @time_after(i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %41
  %49 = load i64, i64* @PTP_PACKET_STATE_TIMED_OUT, align 8
  %50 = load %struct.efx_ptp_match*, %struct.efx_ptp_match** %8, align 8
  %51 = getelementptr inbounds %struct.efx_ptp_match, %struct.efx_ptp_match* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %53 = load i32, i32* @rx_err, align 4
  %54 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %55 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @netif_warn(%struct.efx_nic* %52, i32 %53, i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %58, %struct.sk_buff* %59)
  br label %66

61:                                               ; preds = %41
  %62 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %63 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %62, i32 0, i32 0
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = call i32 @skb_queue_head(i32* %63, %struct.sk_buff* %64)
  br label %69

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66, %37
  br label %68

68:                                               ; preds = %67, %27
  br label %12

69:                                               ; preds = %61, %12
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i64 @efx_ptp_match_rx(%struct.efx_nic*, %struct.sk_buff*) #1

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local i32 @netif_warn(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
