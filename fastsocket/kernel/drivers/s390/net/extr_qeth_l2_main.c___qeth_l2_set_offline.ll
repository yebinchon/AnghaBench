; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c___qeth_l2_set_offline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c___qeth_l2_set_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.qeth_card = type { i32, i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"setoffl\00", align 1
@QETH_DIAGS_TRAP_DISARM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@CARD_STATE_UP = common dso_local global i32 0, align 4
@CARD_STATE_RECOVER = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*, i32)* @__qeth_l2_set_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qeth_l2_set_offline(%struct.ccwgroup_device* %0, i32 %1) #0 {
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
  %12 = call %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_4__* %11)
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
  %24 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @netif_carrier_ok(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %35 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %34, i32 0, i32 4
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
  %46 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %52 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %63

56:                                               ; preds = %50, %44
  %57 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %58 = load i32, i32* @QETH_DIAGS_TRAP_DISARM, align 4
  %59 = call i32 @qeth_hw_trap(%struct.qeth_card* %57, i32 %58)
  %60 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %61 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %50
  %64 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @qeth_l2_stop_card(%struct.qeth_card* %64, i32 %65)
  %67 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %68 = call i32 @CARD_DDEV(%struct.qeth_card* %67)
  %69 = call i32 @ccw_device_set_offline(i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %71 = call i32 @CARD_WDEV(%struct.qeth_card* %70)
  %72 = call i32 @ccw_device_set_offline(i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %74 = call i32 @CARD_RDEV(%struct.qeth_card* %73)
  %75 = call i32 @ccw_device_set_offline(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %63
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  br label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %85, %63
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* @SETUP, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @QETH_DBF_TEXT_(i32 %91, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %87
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @CARD_STATE_UP, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* @CARD_STATE_RECOVER, align 4
  %100 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %101 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %98, %94
  %103 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %104 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* @KOBJ_CHANGE, align 4
  %107 = call i32 @kobject_uevent(i32* %105, i32 %106)
  %108 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %109 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %108, i32 0, i32 2
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %112 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %111, i32 0, i32 1
  %113 = call i32 @mutex_unlock(i32* %112)
  ret i32 0
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, %struct.qeth_card**, i32) #1

declare dso_local i64 @netif_carrier_ok(i64) #1

declare dso_local i32 @netif_carrier_off(i64) #1

declare dso_local i32 @qeth_hw_trap(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l2_stop_card(%struct.qeth_card*, i32) #1

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
