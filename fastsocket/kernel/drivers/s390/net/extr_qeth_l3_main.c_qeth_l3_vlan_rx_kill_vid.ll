; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_vlan_rx_kill_vid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_vlan_rx_kill_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { i32, i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kid:%d\00", align 1
@QETH_RECOVER_THREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"kidREC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i16)* @qeth_l3_vlan_rx_kill_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_vlan_rx_kill_vid(%struct.net_device* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  store %struct.qeth_card* %9, %struct.qeth_card** %5, align 8
  %10 = load i32, i32* @TRACE, align 4
  %11 = load i16, i16* %4, align 2
  %12 = call i32 @QETH_DBF_TEXT_(i32 %10, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i16 zeroext %11)
  %13 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %14 = load i32, i32* @QETH_RECOVER_THREAD, align 4
  %15 = call i64 @qeth_wait_for_threads(%struct.qeth_card* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @TRACE, align 4
  %19 = call i32 @QETH_DBF_TEXT(i32 %18, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %22 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %21, i32 0, i32 1
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %26 = load i16, i16* %4, align 2
  %27 = call i32 @qeth_l3_free_vlan_addresses(%struct.qeth_card* %25, i16 zeroext %26)
  %28 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i16, i16* %4, align 2
  %32 = call i32 @vlan_group_set_device(i32 %30, i16 zeroext %31, i32* null)
  %33 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 1
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %38 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @qeth_l3_set_multicast_list(i32 %39)
  br label %41

41:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i16 zeroext) #1

declare dso_local i64 @qeth_wait_for_threads(%struct.qeth_card*, i32) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qeth_l3_free_vlan_addresses(%struct.qeth_card*, i16 zeroext) #1

declare dso_local i32 @vlan_group_set_device(i32, i16 zeroext, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qeth_l3_set_multicast_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
