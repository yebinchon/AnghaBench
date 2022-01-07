; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c___qeth_l3_set_offline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c___qeth_l3_set_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.qeth_card = type { i32, i32, i32, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"setoffl\00", align 1
@QETH_DIAGS_TRAP_DISARM = common dso_local global i32 0, align 4
@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@NETDEV_REBOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@CARD_STATE_UP = common dso_local global i32 0, align 4
@CARD_STATE_RECOVER = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*, i32)* @__qeth_l3_set_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qeth_l3_set_offline(%struct.ccwgroup_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %11 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %10, i32 0, i32 0
  %12 = call %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_6__* %11)
  store %struct.qeth_card* %12, %struct.qeth_card** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %14 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %17 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* @SETUP, align 4
  %20 = call i32 @QETH_DBF_TEXT(i32 %19, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @SETUP, align 4
  %22 = call i32 @QETH_DBF_HEX(i32 %21, i32 3, %struct.qeth_card** %5, i32 8)
  %23 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %24 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @netif_carrier_ok(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %35 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @netif_carrier_off(i64 %36)
  br label %38

38:                                               ; preds = %33, %27, %2
  %39 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %40 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %46 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %52 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %63

56:                                               ; preds = %50, %44
  %57 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %58 = load i32, i32* @QETH_DIAGS_TRAP_DISARM, align 4
  %59 = call i32 @qeth_hw_trap(%struct.qeth_card* %57, i32 %58)
  %60 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %61 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %56, %50
  %64 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @qeth_l3_stop_card(%struct.qeth_card* %64, i32 %65)
  %67 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %68 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %63
  %74 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %75 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = call i32 (...) @rtnl_lock()
  %80 = load i32, i32* @NETDEV_REBOOT, align 4
  %81 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %82 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @call_netdevice_notifiers(i32 %80, i64 %83)
  %85 = call i32 (...) @rtnl_unlock()
  br label %86

86:                                               ; preds = %78, %73, %63
  %87 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %88 = call i32 @CARD_DDEV(%struct.qeth_card* %87)
  %89 = call i32 @ccw_device_set_offline(i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %91 = call i32 @CARD_WDEV(%struct.qeth_card* %90)
  %92 = call i32 @ccw_device_set_offline(i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %94 = call i32 @CARD_RDEV(%struct.qeth_card* %93)
  %95 = call i32 @ccw_device_set_offline(i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %86
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  br label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %8, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %105, %86
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* @SETUP, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @QETH_DBF_TEXT_(i32 %111, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @CARD_STATE_UP, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32, i32* @CARD_STATE_RECOVER, align 4
  %120 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %121 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %124 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* @KOBJ_CHANGE, align 4
  %127 = call i32 @kobject_uevent(i32* %125, i32 %126)
  %128 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %129 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %128, i32 0, i32 2
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %132 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %131, i32 0, i32 1
  %133 = call i32 @mutex_unlock(i32* %132)
  ret i32 0
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, %struct.qeth_card**, i32) #1

declare dso_local i64 @netif_carrier_ok(i64) #1

declare dso_local i32 @netif_carrier_off(i64) #1

declare dso_local i32 @qeth_hw_trap(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l3_stop_card(%struct.qeth_card*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @call_netdevice_notifiers(i32, i64) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @ccw_device_set_offline(i32) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @CARD_WDEV(%struct.qeth_card*) #1

declare dso_local i32 @CARD_RDEV(%struct.qeth_card*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
