; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_arp_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_arp_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.qeth_arp_cache_entry = type { i64 }
%struct.qeth_cmd_buffer = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"arpadent\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IPA_ARP_PROCESSING = common dso_local global i32 0, align 4
@IPA_CMD_ASS_ARP_ADD_ENTRY = common dso_local global i32 0, align 4
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@qeth_l3_default_setassparms_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Could not add ARP entry for address %s on %s: %s (0x%x/%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_arp_cache_entry*)* @qeth_l3_arp_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_arp_add_entry(%struct.qeth_card* %0, %struct.qeth_arp_cache_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_arp_cache_entry*, align 8
  %6 = alloca %struct.qeth_cmd_buffer*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_arp_cache_entry* %1, %struct.qeth_arp_cache_entry** %5, align 8
  %10 = load i32, i32* @TRACE, align 4
  %11 = call i32 @QETH_DBF_TEXT(i32 %10, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %22 = load i32, i32* @IPA_ARP_PROCESSING, align 4
  %23 = call i32 @qeth_is_supported(%struct.qeth_card* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %59

28:                                               ; preds = %20
  %29 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %30 = load i32, i32* @IPA_ARP_PROCESSING, align 4
  %31 = load i32, i32* @IPA_CMD_ASS_ARP_ADD_ENTRY, align 4
  %32 = load i32, i32* @QETH_PROT_IPV4, align 4
  %33 = call %struct.qeth_cmd_buffer* @qeth_l3_get_setassparms_cmd(%struct.qeth_card* %29, i32 %30, i32 %31, i32 8, i32 %32)
  store %struct.qeth_cmd_buffer* %33, %struct.qeth_cmd_buffer** %6, align 8
  %34 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %35 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %36 = load %struct.qeth_arp_cache_entry*, %struct.qeth_arp_cache_entry** %5, align 8
  %37 = ptrtoint %struct.qeth_arp_cache_entry* %36 to i64
  %38 = load i32, i32* @qeth_l3_default_setassparms_cb, align 4
  %39 = call i32 @qeth_l3_send_setassparms(%struct.qeth_card* %34, %struct.qeth_cmd_buffer* %35, i32 8, i64 %37, i32 %38, i32* null)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %28
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.qeth_arp_cache_entry*, %struct.qeth_arp_cache_entry** %5, align 8
  %45 = getelementptr inbounds %struct.qeth_arp_cache_entry, %struct.qeth_arp_cache_entry* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %49 = call i32 @qeth_l3_ipaddr4_to_string(i32* %47, i8* %48)
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %51 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %52 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %51)
  %53 = call i32 @qeth_l3_arp_get_error_cause(i32* %9)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %50, i32 %52, i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %42, %28
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %25, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_l3_get_setassparms_cmd(%struct.qeth_card*, i32, i32, i32, i32) #1

declare dso_local i32 @qeth_l3_send_setassparms(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i64, i32, i32*) #1

declare dso_local i32 @qeth_l3_ipaddr4_to_string(i32*, i8*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @QETH_CARD_IFNAME(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_arp_get_error_cause(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
