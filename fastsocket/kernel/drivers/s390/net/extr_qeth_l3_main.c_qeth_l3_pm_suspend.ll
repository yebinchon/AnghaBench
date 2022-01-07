; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_pm_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_pm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i64, i32 }
%struct.qeth_card = type { i64, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@CCWGROUP_OFFLINE = common dso_local global i64 0, align 8
@CARD_STATE_UP = common dso_local global i64 0, align 8
@QETH_DIAGS_TRAP_DISARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @qeth_l3_pm_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_pm_suspend(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.qeth_card*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %5 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %6 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %5, i32 0, i32 1
  %7 = call %struct.qeth_card* @dev_get_drvdata(i32* %6)
  store %struct.qeth_card* %7, %struct.qeth_card** %4, align 8
  %8 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %9 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %14 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @netif_device_detach(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %19 = call i32 @qeth_set_allowed_threads(%struct.qeth_card* %18, i32 0, i32 1)
  %20 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %24 = call i64 @qeth_threads_running(%struct.qeth_card* %23, i32 -1)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @wait_event(i32 %22, i32 %26)
  %28 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %29 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CCWGROUP_OFFLINE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %61

34:                                               ; preds = %17
  %35 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %36 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CARD_STATE_UP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %42 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %48 = load i32, i32* @QETH_DIAGS_TRAP_DISARM, align 4
  %49 = call i32 @qeth_hw_trap(%struct.qeth_card* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %52 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @__qeth_l3_set_offline(i32 %53, i32 1)
  br label %60

55:                                               ; preds = %34
  %56 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %57 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @__qeth_l3_set_offline(i32 %58, i32 0)
  br label %60

60:                                               ; preds = %55, %50
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %33
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(i32*) #1

declare dso_local i32 @netif_device_detach(i64) #1

declare dso_local i32 @qeth_set_allowed_threads(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @qeth_threads_running(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_hw_trap(%struct.qeth_card*, i32) #1

declare dso_local i32 @__qeth_l3_set_offline(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
