; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_remove_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i64, i32 }
%struct.qeth_card = type { i32*, i32 }

@CCWGROUP_ONLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccwgroup_device*)* @qeth_l3_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_remove_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca %struct.ccwgroup_device*, align 8
  %3 = alloca %struct.qeth_card*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %2, align 8
  %4 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %4, i32 0, i32 1
  %6 = call %struct.qeth_card* @dev_get_drvdata(i32* %5)
  store %struct.qeth_card* %6, %struct.qeth_card** %3, align 8
  %7 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %8 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %7, i32 0, i32 1
  %9 = call i32 @qeth_l3_remove_device_attributes(i32* %8)
  %10 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %11 = call i32 @qeth_set_allowed_threads(%struct.qeth_card* %10, i32 0, i32 1)
  %12 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %16 = call i64 @qeth_threads_running(%struct.qeth_card* %15, i32 -1)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @wait_event(i32 %14, i32 %18)
  %20 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %21 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CCWGROUP_ONLINE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %27 = call i32 @qeth_l3_set_offline(%struct.ccwgroup_device* %26)
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %35 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @unregister_netdev(i32* %36)
  %38 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %39 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %33, %28
  %41 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %42 = call i32 @qeth_l3_clear_ip_list(%struct.qeth_card* %41, i32 0)
  %43 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %44 = call i32 @qeth_l3_clear_ipato_list(%struct.qeth_card* %43)
  ret void
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(i32*) #1

declare dso_local i32 @qeth_l3_remove_device_attributes(i32*) #1

declare dso_local i32 @qeth_set_allowed_threads(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @qeth_threads_running(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l3_set_offline(%struct.ccwgroup_device*) #1

declare dso_local i32 @unregister_netdev(i32*) #1

declare dso_local i32 @qeth_l3_clear_ip_list(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l3_clear_ipato_list(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
