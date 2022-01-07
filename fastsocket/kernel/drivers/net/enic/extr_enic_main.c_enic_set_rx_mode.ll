; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enic = type { i32 }

@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@ENIC_UNICAST_PERFECT_FILTERS = common dso_local global i64 0, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ENIC_MULTICAST_PERFECT_FILTERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @enic_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.enic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.enic* @netdev_priv(%struct.net_device* %10)
  store %struct.enic* %11, %struct.enic** %3, align 8
  store i32 1, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_MULTICAST, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  store i32 %19, i32* %5, align 4
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_BROADCAST, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %6, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_PROMISC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %1
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = call i64 @netdev_uc_count(%struct.net_device* %35)
  %37 = load i64, i64* @ENIC_UNICAST_PERFECT_FILTERS, align 8
  %38 = icmp sgt i64 %36, %37
  br label %39

39:                                               ; preds = %34, %1
  %40 = phi i1 [ true, %1 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFF_ALLMULTI, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %39
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = call i64 @netdev_mc_count(%struct.net_device* %49)
  %51 = load i64, i64* @ENIC_MULTICAST_PERFECT_FILTERS, align 8
  %52 = icmp sgt i64 %50, %51
  br label %53

53:                                               ; preds = %48, %39
  %54 = phi i1 [ true, %39 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @IFF_ALLMULTI, align 4
  br label %64

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  %66 = or i32 %58, %65
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @IFF_PROMISC, align 4
  br label %72

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = or i32 %66, %73
  store i32 %74, i32* %9, align 4
  %75 = load %struct.enic*, %struct.enic** %3, align 8
  %76 = getelementptr inbounds %struct.enic, %struct.enic* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %72
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.enic*, %struct.enic** %3, align 8
  %83 = getelementptr inbounds %struct.enic, %struct.enic* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.enic*, %struct.enic** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @enic_dev_packet_filter(%struct.enic* %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %80, %72
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %91
  %95 = load %struct.enic*, %struct.enic** %3, align 8
  %96 = call i32 @enic_update_unicast_addr_list(%struct.enic* %95)
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load %struct.enic*, %struct.enic** %3, align 8
  %101 = call i32 @enic_update_multicast_addr_list(%struct.enic* %100)
  br label %102

102:                                              ; preds = %99, %94
  br label %103

103:                                              ; preds = %102, %91
  ret void
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netdev_uc_count(%struct.net_device*) #1

declare dso_local i64 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i32 @enic_dev_packet_filter(%struct.enic*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @enic_update_unicast_addr_list(%struct.enic*) #1

declare dso_local i32 @enic_update_multicast_addr_list(%struct.enic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
