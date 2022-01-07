; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_query_arp_cache_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_query_arp_cache_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_arp_query_info = type { i32 }
%struct.qeth_cmd_buffer = type { i64 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"qarpipv%i\00", align 1
@IPA_ARP_PROCESSING = common dso_local global i32 0, align 4
@IPA_CMD_ASS_ARP_QUERY_INFO = common dso_local global i32 0, align 4
@IPA_PDU_HEADER_SIZE = common dso_local global i64 0, align 8
@QETH_SETASS_BASE_LEN = common dso_local global i64 0, align 8
@QETH_ARP_CMD_LEN = common dso_local global i64 0, align 8
@qeth_l3_arp_query_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Error while querying ARP cache on %s: %s (0x%x/%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32, %struct.qeth_arp_query_info*)* @qeth_l3_query_arp_cache_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_query_arp_cache_info(%struct.qeth_card* %0, i32 %1, %struct.qeth_arp_query_info* %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_arp_query_info*, align 8
  %7 = alloca %struct.qeth_cmd_buffer*, align 8
  %8 = alloca %struct.qeth_ipa_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.qeth_arp_query_info* %2, %struct.qeth_arp_query_info** %6, align 8
  %11 = load i32, i32* @TRACE, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @QETH_DBF_TEXT_(i32 %11, i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %15 = load i32, i32* @IPA_ARP_PROCESSING, align 4
  %16 = load i32, i32* @IPA_CMD_ASS_ARP_QUERY_INFO, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.qeth_cmd_buffer* @qeth_l3_get_setassparms_cmd(%struct.qeth_card* %14, i32 %15, i32 %16, i32 3, i32 %17)
  store %struct.qeth_cmd_buffer* %18, %struct.qeth_cmd_buffer** %7, align 8
  %19 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %20 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPA_PDU_HEADER_SIZE, align 8
  %23 = add nsw i64 %21, %22
  %24 = inttoptr i64 %23 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %24, %struct.qeth_ipa_cmd** %8, align 8
  %25 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %26 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 15, i32* %30, align 8
  %31 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %32 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %38 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %44 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %45 = load i64, i64* @QETH_SETASS_BASE_LEN, align 8
  %46 = load i64, i64* @QETH_ARP_CMD_LEN, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* @qeth_l3_arp_query_cb, align 4
  %49 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %6, align 8
  %50 = bitcast %struct.qeth_arp_query_info* %49 to i8*
  %51 = call i32 @qeth_l3_send_ipa_arp_cmd(%struct.qeth_card* %43, %struct.qeth_cmd_buffer* %44, i64 %47, i32 %48, i8* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %3
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %57 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %56)
  %58 = call i32 @qeth_l3_arp_get_error_cause(i32* %10)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %54, %3
  %63 = load i32, i32* %10, align 4
  ret i32 %63
}

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_l3_get_setassparms_cmd(%struct.qeth_card*, i32, i32, i32, i32) #1

declare dso_local i32 @qeth_l3_send_ipa_arp_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i64, i32, i8*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @QETH_CARD_IFNAME(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_arp_get_error_cause(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
