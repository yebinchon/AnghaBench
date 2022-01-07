; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32*, %struct.dev_mc_list* }
%struct.ks_net = type { i32, i32* }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@MAX_MCAST_LST = common dso_local global i32 0, align 4
@MAC_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ks_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ks_net*, align 8
  %4 = alloca %struct.dev_mc_list*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ks_net* @netdev_priv(%struct.net_device* %6)
  store %struct.ks_net* %7, %struct.ks_net** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IFF_PROMISC, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IFF_PROMISC, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @IFF_PROMISC, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ks_set_promis(%struct.ks_net* %16, i32 %24)
  br label %49

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IFF_ALLMULTI, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @IFF_ALLMULTI, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IFF_ALLMULTI, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @IFF_ALLMULTI, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @ks_set_mcast(%struct.ks_net* %35, i32 %43)
  br label %48

45:                                               ; preds = %26
  %46 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %47 = call i32 @ks_set_promis(%struct.ks_net* %46, i32 0)
  br label %48

48:                                               ; preds = %45, %34
  br label %49

49:                                               ; preds = %48, %15
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IFF_MULTICAST, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %118

56:                                               ; preds = %49
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %118

61:                                               ; preds = %56
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MAX_MCAST_LST, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %111

67:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 2
  %70 = load %struct.dev_mc_list*, %struct.dev_mc_list** %69, align 8
  store %struct.dev_mc_list* %70, %struct.dev_mc_list** %4, align 8
  br label %71

71:                                               ; preds = %101, %67
  %72 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %73 = icmp ne %struct.dev_mc_list* %72, null
  br i1 %73, label %74, label %105

74:                                               ; preds = %71
  %75 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %76 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  br label %101

82:                                               ; preds = %74
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @MAX_MCAST_LST, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %105

87:                                               ; preds = %82
  %88 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %89 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %97 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @MAC_ADDR_LEN, align 4
  %100 = call i32 @memcpy(i32 %95, i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %87, %81
  %102 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %103 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %102, i32 0, i32 1
  %104 = load %struct.dev_mc_list*, %struct.dev_mc_list** %103, align 8
  store %struct.dev_mc_list* %104, %struct.dev_mc_list** %4, align 8
  br label %71

105:                                              ; preds = %86, %71
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %108 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %110 = call i32 @ks_set_grpaddr(%struct.ks_net* %109)
  br label %117

111:                                              ; preds = %61
  %112 = load i32, i32* @MAX_MCAST_LST, align 4
  %113 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %114 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %116 = call i32 @ks_set_mcast(%struct.ks_net* %115, i32 1)
  br label %117

117:                                              ; preds = %111, %105
  br label %123

118:                                              ; preds = %56, %49
  %119 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %120 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %122 = call i32 @ks_clear_mcast(%struct.ks_net* %121)
  br label %123

123:                                              ; preds = %118, %117
  ret void
}

declare dso_local %struct.ks_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ks_set_promis(%struct.ks_net*, i32) #1

declare dso_local i32 @ks_set_mcast(%struct.ks_net*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ks_set_grpaddr(%struct.ks_net*) #1

declare dso_local i32 @ks_clear_mcast(%struct.ks_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
