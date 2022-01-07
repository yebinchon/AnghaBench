; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_arp_remove_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_arp_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.qeth_arp_cache_entry = type { i64 }
%struct.qeth_cmd_buffer = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"arprment\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IPA_ARP_PROCESSING = common dso_local global i32 0, align 4
@IPA_CMD_ASS_ARP_REMOVE_ENTRY = common dso_local global i32 0, align 4
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@qeth_l3_default_setassparms_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Could not delete ARP entry for address %s on %s: %s (0x%x/%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_arp_cache_entry*)* @qeth_l3_arp_remove_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_arp_remove_entry(%struct.qeth_card* %0, %struct.qeth_arp_cache_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_arp_cache_entry*, align 8
  %6 = alloca %struct.qeth_cmd_buffer*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_arp_cache_entry* %1, %struct.qeth_arp_cache_entry** %5, align 8
  %10 = bitcast [16 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 16, i1 false)
  %11 = load i32, i32* @TRACE, align 4
  %12 = call i32 @QETH_DBF_TEXT(i32 %11, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %14 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %65

21:                                               ; preds = %2
  %22 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %23 = load i32, i32* @IPA_ARP_PROCESSING, align 4
  %24 = call i32 @qeth_is_supported(%struct.qeth_card* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %65

29:                                               ; preds = %21
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %31 = load %struct.qeth_arp_cache_entry*, %struct.qeth_arp_cache_entry** %5, align 8
  %32 = call i32 @memcpy(i8* %30, %struct.qeth_arp_cache_entry* %31, i32 12)
  %33 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %34 = load i32, i32* @IPA_ARP_PROCESSING, align 4
  %35 = load i32, i32* @IPA_CMD_ASS_ARP_REMOVE_ENTRY, align 4
  %36 = load i32, i32* @QETH_PROT_IPV4, align 4
  %37 = call %struct.qeth_cmd_buffer* @qeth_l3_get_setassparms_cmd(%struct.qeth_card* %33, i32 %34, i32 %35, i32 12, i32 %36)
  store %struct.qeth_cmd_buffer* %37, %struct.qeth_cmd_buffer** %6, align 8
  %38 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %39 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %41 = ptrtoint i8* %40 to i64
  %42 = load i32, i32* @qeth_l3_default_setassparms_cb, align 4
  %43 = call i32 @qeth_l3_send_setassparms(%struct.qeth_card* %38, %struct.qeth_cmd_buffer* %39, i32 12, i64 %41, i32 %42, i32* null)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %29
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %8, align 4
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %49 = call i32 @memset(i8* %48, i32 0, i32 16)
  %50 = load %struct.qeth_arp_cache_entry*, %struct.qeth_arp_cache_entry** %5, align 8
  %51 = getelementptr inbounds %struct.qeth_arp_cache_entry, %struct.qeth_arp_cache_entry* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %55 = call i32 @qeth_l3_ipaddr4_to_string(i32* %53, i8* %54)
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %57 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %58 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %57)
  %59 = call i32 @qeth_l3_arp_get_error_cause(i32* %9)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %56, i32 %58, i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %46, %29
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %26, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #2

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #2

declare dso_local i32 @memcpy(i8*, %struct.qeth_arp_cache_entry*, i32) #2

declare dso_local %struct.qeth_cmd_buffer* @qeth_l3_get_setassparms_cmd(%struct.qeth_card*, i32, i32, i32, i32) #2

declare dso_local i32 @qeth_l3_send_setassparms(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i64, i32, i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @qeth_l3_ipaddr4_to_string(i32*, i8*) #2

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @QETH_CARD_IFNAME(%struct.qeth_card*) #2

declare dso_local i32 @qeth_l3_arp_get_error_cause(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
