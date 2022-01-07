; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_free_vlan_addresses4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_free_vlan_addresses4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.in_device = type { %struct.in_ifaddr* }
%struct.in_ifaddr = type { i32, i32, %struct.in_ifaddr* }
%struct.qeth_ipaddr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"frvaddr4\00", align 1
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@QETH_IP_TYPE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, i16)* @qeth_l3_free_vlan_addresses4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_free_vlan_addresses4(%struct.qeth_card* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.in_device*, align 8
  %6 = alloca %struct.in_ifaddr*, align 8
  %7 = alloca %struct.qeth_ipaddr*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load i32, i32* @TRACE, align 4
  %9 = call i32 @QETH_DBF_TEXT(i32 %8, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %11 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i16, i16* %4, align 2
  %14 = call i32 @vlan_group_get_device(i32 %12, i16 zeroext %13)
  %15 = call %struct.in_device* @in_dev_get(i32 %14)
  store %struct.in_device* %15, %struct.in_device** %5, align 8
  %16 = load %struct.in_device*, %struct.in_device** %5, align 8
  %17 = icmp ne %struct.in_device* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.in_device*, %struct.in_device** %5, align 8
  %21 = getelementptr inbounds %struct.in_device, %struct.in_device* %20, i32 0, i32 0
  %22 = load %struct.in_ifaddr*, %struct.in_ifaddr** %21, align 8
  store %struct.in_ifaddr* %22, %struct.in_ifaddr** %6, align 8
  br label %23

23:                                               ; preds = %58, %19
  %24 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %25 = icmp ne %struct.in_ifaddr* %24, null
  br i1 %25, label %26, label %62

26:                                               ; preds = %23
  %27 = load i32, i32* @QETH_PROT_IPV4, align 4
  %28 = call %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32 %27)
  store %struct.qeth_ipaddr* %28, %struct.qeth_ipaddr** %7, align 8
  %29 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %30 = icmp ne %struct.qeth_ipaddr* %29, null
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %33 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %36 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  %39 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %40 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %43 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @QETH_IP_TYPE_NORMAL, align 4
  %47 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %48 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %50 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %51 = call i32 @qeth_l3_delete_ip(%struct.qeth_card* %49, %struct.qeth_ipaddr* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %31
  %54 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %55 = call i32 @kfree(%struct.qeth_ipaddr* %54)
  br label %56

56:                                               ; preds = %53, %31
  br label %57

57:                                               ; preds = %56, %26
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %60 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %59, i32 0, i32 2
  %61 = load %struct.in_ifaddr*, %struct.in_ifaddr** %60, align 8
  store %struct.in_ifaddr* %61, %struct.in_ifaddr** %6, align 8
  br label %23

62:                                               ; preds = %23
  %63 = load %struct.in_device*, %struct.in_device** %5, align 8
  %64 = call i32 @in_dev_put(%struct.in_device* %63)
  br label %65

65:                                               ; preds = %62, %18
  ret void
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.in_device* @in_dev_get(i32) #1

declare dso_local i32 @vlan_group_get_device(i32, i16 zeroext) #1

declare dso_local %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32) #1

declare dso_local i32 @qeth_l3_delete_ip(%struct.qeth_card*, %struct.qeth_ipaddr*) #1

declare dso_local i32 @kfree(%struct.qeth_ipaddr*) #1

declare dso_local i32 @in_dev_put(%struct.in_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
