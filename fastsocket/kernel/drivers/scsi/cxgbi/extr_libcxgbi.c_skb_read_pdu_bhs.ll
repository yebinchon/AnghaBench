; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_skb_read_pdu_bhs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_skb_read_pdu_bhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i64, %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { i32 }
%struct.sk_buff = type { i32 }

@CXGBI_DBG_PDU_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"conn 0x%p, skb 0x%p, len %u, flag 0x%lx.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"conn 0x%p, skb 0x%p, not hdr.\0A\00", align 1
@ISCSI_ERR_PROTO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SKCBF_RX_HCRC_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"conn 0x%p, skb 0x%p, hcrc.\0A\00", align 1
@ISCSI_ERR_HDR_DGST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.sk_buff*)* @skb_read_pdu_bhs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skb_read_pdu_bhs(%struct.iscsi_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.iscsi_tcp_conn*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %8 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %7, i32 0, i32 1
  %9 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %8, align 8
  store %struct.iscsi_tcp_conn* %9, %struct.iscsi_tcp_conn** %6, align 8
  %10 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %11 = shl i32 1, %10
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %17)
  %19 = call i32 @log_debug(i32 %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.iscsi_conn* %12, %struct.sk_buff* %13, i32 %16, i32 %18)
  %20 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %6, align 8
  %21 = call i32 @iscsi_tcp_recv_segment_is_hdr(%struct.iscsi_tcp_conn* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %2
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.iscsi_conn* %24, %struct.sk_buff* %25)
  %27 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %28 = load i32, i32* @ISCSI_ERR_PROTO, align 4
  %29 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %27, i32 %28)
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %55

32:                                               ; preds = %2
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %34 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load i32, i32* @SKCBF_RX_HCRC_ERR, align 4
  %40 = call i64 @cxgbi_skcb_test_flag(%struct.sk_buff* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.iscsi_conn* %43, %struct.sk_buff* %44)
  %46 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %47 = load i32, i32* @ISCSI_ERR_HDR_DGST, align 4
  %48 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %46, i32 %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %55

51:                                               ; preds = %37, %32
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @read_pdu_skb(%struct.iscsi_conn* %52, %struct.sk_buff* %53, i32 0, i32 0)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %42, %23
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @log_debug(i32, i8*, %struct.iscsi_conn*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cxgbi_skcb_flags(%struct.sk_buff*) #1

declare dso_local i32 @iscsi_tcp_recv_segment_is_hdr(%struct.iscsi_tcp_conn*) #1

declare dso_local i32 @pr_info(i8*, %struct.iscsi_conn*, %struct.sk_buff*) #1

declare dso_local i32 @iscsi_conn_failure(%struct.iscsi_conn*, i32) #1

declare dso_local i64 @cxgbi_skcb_test_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @read_pdu_skb(%struct.iscsi_conn*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
