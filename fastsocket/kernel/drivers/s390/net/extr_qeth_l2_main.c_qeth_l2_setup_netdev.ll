; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_setup_netdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_setup_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32*, i32, i32, %struct.qeth_card*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"hsi%d\00", align 1
@ether_setup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"osn%d\00", align 1
@IFF_NOARP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@QETH_TX_TIMEOUT = common dso_local global i32 0, align 4
@qeth_l2_netdev_ops = common dso_local global i32 0, align 4
@qeth_l2_ethtool_ops = common dso_local global i32 0, align 4
@qeth_l2_osn_ops = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_FILTER = common dso_local global i32 0, align 4
@qeth_l2_poll = common dso_local global i32 0, align 4
@QETH_NAPI_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_l2_setup_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_setup_netdev(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %4 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %5 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %27 [
    i32 129, label %8
    i32 128, label %14
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @ether_setup, align 4
  %10 = call i8* @alloc_netdev(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = bitcast i8* %10 to %struct.TYPE_10__*
  %12 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 0
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %13, align 8
  br label %31

14:                                               ; preds = %1
  %15 = load i32, i32* @ether_setup, align 4
  %16 = call i8* @alloc_netdev(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = bitcast i8* %16 to %struct.TYPE_10__*
  %18 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %19 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %18, i32 0, i32 0
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %19, align 8
  %20 = load i32, i32* @IFF_NOARP, align 4
  %21 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %22 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %20
  store i32 %26, i32* %24, align 8
  br label %31

27:                                               ; preds = %1
  %28 = call %struct.TYPE_10__* @alloc_etherdev(i32 0)
  %29 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 0
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %30, align 8
  br label %31

31:                                               ; preds = %27, %14, %8
  %32 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %33 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = icmp ne %struct.TYPE_10__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %110

39:                                               ; preds = %31
  %40 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %41 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %42 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  store %struct.qeth_card* %40, %struct.qeth_card** %44, align 8
  %45 = load i32, i32* @QETH_TX_TIMEOUT, align 4
  %46 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %47 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  store i32 %45, i32* %49, align 4
  %50 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %51 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %55 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  store i32 %53, i32* %57, align 8
  %58 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %59 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i32* @qeth_l2_netdev_ops, i32** %61, align 8
  %62 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %63 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 128
  br i1 %66, label %67, label %72

67:                                               ; preds = %39
  %68 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %69 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = call i32 @SET_ETHTOOL_OPS(%struct.TYPE_10__* %70, i32* @qeth_l2_ethtool_ops)
  br label %77

72:                                               ; preds = %39
  %73 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %74 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = call i32 @SET_ETHTOOL_OPS(%struct.TYPE_10__* %75, i32* @qeth_l2_osn_ops)
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32, i32* @NETIF_F_HW_VLAN_FILTER, align 4
  %79 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %80 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %78
  store i32 %84, i32* %82, align 8
  %85 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %86 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %89 = call i32 @qeth_l2_request_initial_mac(%struct.qeth_card* %88)
  %90 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %91 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %94 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %93, i32 0, i32 2
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = call i32 @SET_NETDEV_DEV(%struct.TYPE_10__* %92, i32* %96)
  %98 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %99 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %102 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %101, i32 0, i32 1
  %103 = load i32, i32* @qeth_l2_poll, align 4
  %104 = load i32, i32* @QETH_NAPI_WEIGHT, align 4
  %105 = call i32 @netif_napi_add(%struct.TYPE_10__* %100, i32* %102, i32 %103, i32 %104)
  %106 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %107 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = call i32 @register_netdev(%struct.TYPE_10__* %108)
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %77, %36
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i8* @alloc_netdev(i32, i8*, i32) #1

declare dso_local %struct.TYPE_10__* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @qeth_l2_request_initial_mac(%struct.qeth_card*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @netif_napi_add(%struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
