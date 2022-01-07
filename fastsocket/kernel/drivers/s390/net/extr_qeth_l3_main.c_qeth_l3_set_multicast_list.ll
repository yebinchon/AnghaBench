; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"setmulti\00", align 1
@QETH_RECOVER_THREAD = common dso_local global i32 0, align 4
@CARD_STATE_UP = common dso_local global i64 0, align 8
@IPA_SETADP_SET_PROMISC_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @qeth_l3_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.qeth_card*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  store %struct.qeth_card* %6, %struct.qeth_card** %3, align 8
  %7 = load i32, i32* @TRACE, align 4
  %8 = call i32 @QETH_DBF_TEXT(i32 %7, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %10 = load i32, i32* @QETH_RECOVER_THREAD, align 4
  %11 = call i64 @qeth_threads_running(%struct.qeth_card* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %15 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CARD_STATE_UP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %42

20:                                               ; preds = %13, %1
  %21 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %22 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %20
  %27 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %28 = call i32 @qeth_l3_delete_mc_addresses(%struct.qeth_card* %27)
  %29 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %30 = call i32 @qeth_l3_add_multicast_ipv4(%struct.qeth_card* %29)
  %31 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %32 = call i32 @qeth_l3_set_ip_addr_list(%struct.qeth_card* %31)
  %33 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %34 = load i32, i32* @IPA_SETADP_SET_PROMISC_MODE, align 4
  %35 = call i32 @qeth_adp_supported(%struct.qeth_card* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %42

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %20
  %40 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %41 = call i32 @qeth_l3_handle_promisc_mode(%struct.qeth_card* %40)
  br label %42

42:                                               ; preds = %39, %37, %19
  ret void
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i64 @qeth_threads_running(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l3_delete_mc_addresses(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_add_multicast_ipv4(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_set_ip_addr_list(%struct.qeth_card*) #1

declare dso_local i32 @qeth_adp_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l3_handle_promisc_mode(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
