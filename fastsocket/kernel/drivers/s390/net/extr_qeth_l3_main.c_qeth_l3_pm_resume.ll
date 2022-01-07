; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_pm_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i64, i32 }
%struct.qeth_card = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@CCWGROUP_OFFLINE = common dso_local global i64 0, align 8
@CARD_STATE_RECOVER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"The qeth device driver failed to recover an error on the device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @qeth_l3_pm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_pm_resume(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca %struct.ccwgroup_device*, align 8
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %2, align 8
  %5 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %6 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %5, i32 0, i32 1
  %7 = call %struct.qeth_card* @dev_get_drvdata(i32* %6)
  store %struct.qeth_card* %7, %struct.qeth_card** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %9 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CCWGROUP_OFFLINE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %16 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CARD_STATE_RECOVER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %22 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @__qeth_l3_set_online(%struct.TYPE_2__* %23, i32 1)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = call i32 (...) @rtnl_lock()
  %34 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %35 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @dev_close(i64 %36)
  %38 = call i32 (...) @rtnl_unlock()
  br label %39

39:                                               ; preds = %32, %27
  br label %40

40:                                               ; preds = %39, %20
  br label %46

41:                                               ; preds = %14
  %42 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %43 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = call i32 @__qeth_l3_set_online(%struct.TYPE_2__* %44, i32 0)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %40
  br label %47

47:                                               ; preds = %46, %13
  %48 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %49 = call i32 @qeth_set_allowed_threads(%struct.qeth_card* %48, i32 -1, i32 0)
  %50 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %51 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %56 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @netif_device_attach(i64 %57)
  br label %59

59:                                               ; preds = %54, %47
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %64 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @dev_warn(i32* %66, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(i32*) #1

declare dso_local i32 @__qeth_l3_set_online(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_close(i64) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @qeth_set_allowed_threads(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @netif_device_attach(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
