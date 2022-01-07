; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_set_offload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_set_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macvtap_queue = type { i32 }
%struct.macvlan_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@ENOLINK = common dso_local global i32 0, align 4
@TUN_F_CSUM = common dso_local global i64 0, align 8
@NETIF_F_HW_CSUM = common dso_local global i64 0, align 8
@TUN_F_TSO4 = common dso_local global i64 0, align 8
@TUN_F_TSO6 = common dso_local global i64 0, align 8
@TUN_F_TSO_ECN = common dso_local global i64 0, align 8
@NETIF_F_TSO_ECN = common dso_local global i64 0, align 8
@NETIF_F_TSO = common dso_local global i64 0, align 8
@NETIF_F_TSO6 = common dso_local global i64 0, align 8
@TUN_F_UFO = common dso_local global i64 0, align 8
@NETIF_F_UFO = common dso_local global i64 0, align 8
@RX_OFFLOADS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macvtap_queue*, i64)* @set_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_offload(%struct.macvtap_queue* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.macvtap_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.macvlan_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.macvtap_queue* %0, %struct.macvtap_queue** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.macvtap_queue*, %struct.macvtap_queue** %4, align 8
  %10 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.macvlan_dev* @rtnl_dereference(i32 %11)
  store %struct.macvlan_dev* %12, %struct.macvlan_dev** %6, align 8
  %13 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %14 = icmp ne %struct.macvlan_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOLINK, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %123

18:                                               ; preds = %2
  %19 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %20 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @TUN_F_CSUM, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %18
  %29 = load i64, i64* @NETIF_F_HW_CSUM, align 8
  %30 = load i64, i64* %8, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @TUN_F_TSO4, align 8
  %34 = load i64, i64* @TUN_F_TSO6, align 8
  %35 = or i64 %33, %34
  %36 = and i64 %32, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %28
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @TUN_F_TSO_ECN, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i64, i64* @NETIF_F_TSO_ECN, align 8
  %45 = load i64, i64* %8, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @TUN_F_TSO4, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i64, i64* @NETIF_F_TSO, align 8
  %54 = load i64, i64* %8, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @TUN_F_TSO6, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i64, i64* @NETIF_F_TSO6, align 8
  %63 = load i64, i64* %8, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %61, %56
  br label %66

66:                                               ; preds = %65, %28
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @TUN_F_UFO, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i64, i64* @NETIF_F_UFO, align 8
  %73 = load i64, i64* %8, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %8, align 8
  br label %75

75:                                               ; preds = %71, %66
  br label %76

76:                                               ; preds = %75, %18
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @NETIF_F_TSO, align 8
  %79 = load i64, i64* @NETIF_F_TSO6, align 8
  %80 = or i64 %78, %79
  %81 = load i64, i64* @NETIF_F_UFO, align 8
  %82 = or i64 %80, %81
  %83 = and i64 %77, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load i64, i64* @RX_OFFLOADS, align 8
  %87 = load i64, i64* %7, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %7, align 8
  br label %94

89:                                               ; preds = %76
  %90 = load i64, i64* @RX_OFFLOADS, align 8
  %91 = xor i64 %90, -1
  %92 = load i64, i64* %7, align 8
  %93 = and i64 %92, %91
  store i64 %93, i64* %7, align 8
  br label %94

94:                                               ; preds = %89, %85
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %97 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @netdev_fix_features(i64 %95, i32 %100)
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %104 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %106 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %7, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %94
  %113 = load i64, i64* %7, align 8
  %114 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %115 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i64 %113, i64* %117, align 8
  %118 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %119 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = call i32 @netdev_features_change(%struct.TYPE_2__* %120)
  br label %122

122:                                              ; preds = %112, %94
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %15
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.macvlan_dev* @rtnl_dereference(i32) #1

declare dso_local i64 @netdev_fix_features(i64, i32) #1

declare dso_local i32 @netdev_features_change(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
