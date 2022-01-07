; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_ip_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_ip_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.in_ifaddr = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i32 }
%struct.qeth_ipaddr = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.qeth_card = type { i32 }

@init_net = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ipevent\00", align 1
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@QETH_IP_TYPE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @qeth_l3_ip_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_ip_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.in_ifaddr*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.qeth_ipaddr*, align 8
  %11 = alloca %struct.qeth_card*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.in_ifaddr*
  store %struct.in_ifaddr* %13, %struct.in_ifaddr** %8, align 8
  %14 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %15 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.net_device*
  store %struct.net_device* %19, %struct.net_device** %9, align 8
  %20 = load %struct.net_device*, %struct.net_device** %9, align 8
  %21 = call i32* @dev_net(%struct.net_device* %20)
  %22 = icmp ne i32* %21, @init_net
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %24, i32* %4, align 4
  br label %84

25:                                               ; preds = %3
  %26 = load i32, i32* @TRACE, align 4
  %27 = call i32 @QETH_DBF_TEXT(i32 %26, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.net_device*, %struct.net_device** %9, align 8
  %29 = call %struct.qeth_card* @qeth_l3_get_card_from_dev(%struct.net_device* %28)
  store %struct.qeth_card* %29, %struct.qeth_card** %11, align 8
  %30 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %31 = icmp ne %struct.qeth_card* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %33, i32* %4, align 4
  br label %84

34:                                               ; preds = %25
  %35 = load i32, i32* @QETH_PROT_IPV4, align 4
  %36 = call %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32 %35)
  store %struct.qeth_ipaddr* %36, %struct.qeth_ipaddr** %10, align 8
  %37 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %10, align 8
  %38 = icmp ne %struct.qeth_ipaddr* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %41 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %10, align 8
  %44 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %48 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %10, align 8
  %51 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* @QETH_IP_TYPE_NORMAL, align 4
  %55 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %10, align 8
  %56 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %58

57:                                               ; preds = %34
  br label %82

58:                                               ; preds = %39
  %59 = load i64, i64* %6, align 8
  switch i64 %59, label %78 [
    i64 128, label %60
    i64 129, label %69
  ]

60:                                               ; preds = %58
  %61 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %62 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %10, align 8
  %63 = call i32 @qeth_l3_add_ip(%struct.qeth_card* %61, %struct.qeth_ipaddr* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %10, align 8
  %67 = call i32 @kfree(%struct.qeth_ipaddr* %66)
  br label %68

68:                                               ; preds = %65, %60
  br label %79

69:                                               ; preds = %58
  %70 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %71 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %10, align 8
  %72 = call i32 @qeth_l3_delete_ip(%struct.qeth_card* %70, %struct.qeth_ipaddr* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %10, align 8
  %76 = call i32 @kfree(%struct.qeth_ipaddr* %75)
  br label %77

77:                                               ; preds = %74, %69
  br label %79

78:                                               ; preds = %58
  br label %79

79:                                               ; preds = %78, %77, %68
  %80 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %81 = call i32 @qeth_l3_set_ip_addr_list(%struct.qeth_card* %80)
  br label %82

82:                                               ; preds = %79, %57
  %83 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %32, %23
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32* @dev_net(%struct.net_device*) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.qeth_card* @qeth_l3_get_card_from_dev(%struct.net_device*) #1

declare dso_local %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32) #1

declare dso_local i32 @qeth_l3_add_ip(%struct.qeth_card*, %struct.qeth_ipaddr*) #1

declare dso_local i32 @kfree(%struct.qeth_ipaddr*) #1

declare dso_local i32 @qeth_l3_delete_ip(%struct.qeth_card*, %struct.qeth_ipaddr*) #1

declare dso_local i32 @qeth_l3_set_ip_addr_list(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
