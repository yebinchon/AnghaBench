; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c___cp_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c___cp_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }
%struct.cp_private = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@AcceptBroadcast = common dso_local global i32 0, align 4
@AcceptMulticast = common dso_local global i32 0, align 4
@AcceptMyPhys = common dso_local global i32 0, align 4
@AcceptAllPhys = common dso_local global i32 0, align 4
@multicast_filter_limit = common dso_local global i64 0, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@cp_rx_config = common dso_local global i32 0, align 4
@RxConfig = common dso_local global i64 0, align 8
@MAR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @__cp_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cp_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cp_private*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dev_mc_list*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.cp_private* @netdev_priv(%struct.net_device* %9)
  store %struct.cp_private* %10, %struct.cp_private** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IFF_PROMISC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load i32, i32* @AcceptBroadcast, align 4
  %19 = load i32, i32* @AcceptMulticast, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @AcceptMyPhys, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @AcceptAllPhys, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 -1, i32* %25, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 -1, i32* %26, align 4
  br label %96

27:                                               ; preds = %1
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @multicast_filter_limit, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IFF_ALLMULTI, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33, %27
  %41 = load i32, i32* @AcceptBroadcast, align 4
  %42 = load i32, i32* @AcceptMulticast, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @AcceptMyPhys, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 -1, i32* %46, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 -1, i32* %47, align 4
  br label %95

48:                                               ; preds = %33
  %49 = load i32, i32* @AcceptBroadcast, align 4
  %50 = load i32, i32* @AcceptMyPhys, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %6, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %53, align 4
  store i32 0, i32* %5, align 4
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 2
  %56 = load %struct.dev_mc_list*, %struct.dev_mc_list** %55, align 8
  store %struct.dev_mc_list* %56, %struct.dev_mc_list** %7, align 8
  br label %57

57:                                               ; preds = %88, %48
  %58 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %59 = icmp ne %struct.dev_mc_list* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br label %67

67:                                               ; preds = %60, %57
  %68 = phi i1 [ false, %57 ], [ %66, %60 ]
  br i1 %68, label %69, label %94

69:                                               ; preds = %67
  %70 = load i32, i32* @ETH_ALEN, align 4
  %71 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %72 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ether_crc(i32 %70, i32 %73)
  %75 = ashr i32 %74, 26
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 31
  %78 = shl i32 1, %77
  %79 = load i32, i32* %8, align 4
  %80 = ashr i32 %79, 5
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %78
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @AcceptMulticast, align 4
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %69
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  %91 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %92 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %91, i32 0, i32 1
  %93 = load %struct.dev_mc_list*, %struct.dev_mc_list** %92, align 8
  store %struct.dev_mc_list* %93, %struct.dev_mc_list** %7, align 8
  br label %57

94:                                               ; preds = %67
  br label %95

95:                                               ; preds = %94, %40
  br label %96

96:                                               ; preds = %95, %17
  %97 = load i32, i32* @cp_rx_config, align 4
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %101 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i64, i64* @RxConfig, align 8
  %103 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %104 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @cpw32_f(i64 %102, i32 %105)
  %107 = load i64, i64* @MAR0, align 8
  %108 = add nsw i64 %107, 0
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @cpw32_f(i64 %108, i32 %110)
  %112 = load i64, i64* @MAR0, align 8
  %113 = add nsw i64 %112, 4
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @cpw32_f(i64 %113, i32 %115)
  ret void
}

declare dso_local %struct.cp_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ether_crc(i32, i32) #1

declare dso_local i32 @cpw32_f(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
