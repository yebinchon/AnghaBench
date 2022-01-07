; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.qeth_vlan_vid = type { i16, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"aid:%d\00", align 1
@QETH_CARD_TYPE_OSM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"aidOSM\00", align 1
@QETH_RECOVER_THREAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"aidREC\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IPA_CMD_SETVLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i16)* @qeth_l2_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l2_vlan_rx_add_vid(%struct.net_device* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_vlan_vid*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  store %struct.qeth_card* %9, %struct.qeth_card** %5, align 8
  %10 = load i32, i32* @TRACE, align 4
  %11 = load i16, i16* %4, align 2
  %12 = call i32 @QETH_DBF_TEXT_(i32 %10, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i16 zeroext %11)
  %13 = load i16, i16* %4, align 2
  %14 = icmp ne i16 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QETH_CARD_TYPE_OSM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @TRACE, align 4
  %25 = call i32 @QETH_DBF_TEXT(i32 %24, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %58

26:                                               ; preds = %16
  %27 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %28 = load i32, i32* @QETH_RECOVER_THREAD, align 4
  %29 = call i64 @qeth_wait_for_threads(%struct.qeth_card* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @TRACE, align 4
  %33 = call i32 @QETH_DBF_TEXT(i32 %32, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %58

34:                                               ; preds = %26
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.qeth_vlan_vid* @kmalloc(i32 8, i32 %35)
  store %struct.qeth_vlan_vid* %36, %struct.qeth_vlan_vid** %6, align 8
  %37 = load %struct.qeth_vlan_vid*, %struct.qeth_vlan_vid** %6, align 8
  %38 = icmp ne %struct.qeth_vlan_vid* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load i16, i16* %4, align 2
  %41 = load %struct.qeth_vlan_vid*, %struct.qeth_vlan_vid** %6, align 8
  %42 = getelementptr inbounds %struct.qeth_vlan_vid, %struct.qeth_vlan_vid* %41, i32 0, i32 0
  store i16 %40, i16* %42, align 4
  %43 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %44 = load i16, i16* %4, align 2
  %45 = load i32, i32* @IPA_CMD_SETVLAN, align 4
  %46 = call i32 @qeth_l2_send_setdelvlan(%struct.qeth_card* %43, i16 zeroext %44, i32 %45)
  %47 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %48 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %47, i32 0, i32 0
  %49 = call i32 @spin_lock_bh(i32* %48)
  %50 = load %struct.qeth_vlan_vid*, %struct.qeth_vlan_vid** %6, align 8
  %51 = getelementptr inbounds %struct.qeth_vlan_vid, %struct.qeth_vlan_vid* %50, i32 0, i32 1
  %52 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %53 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %52, i32 0, i32 1
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  %55 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %56 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock_bh(i32* %56)
  br label %58

58:                                               ; preds = %15, %23, %31, %39, %34
  ret void
}

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i16 zeroext) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i64 @qeth_wait_for_threads(%struct.qeth_card*, i32) #1

declare dso_local %struct.qeth_vlan_vid* @kmalloc(i32, i32) #1

declare dso_local i32 @qeth_l2_send_setdelvlan(%struct.qeth_card*, i16 zeroext, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
