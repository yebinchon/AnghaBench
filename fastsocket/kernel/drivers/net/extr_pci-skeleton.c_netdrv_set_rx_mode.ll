; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_netdrv_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_netdrv_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32, i64, %struct.dev_mc_list*, i32 }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }
%struct.netdrv_private = type { i64, i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"%s:   netdrv_set_rx_mode(%4.4x) done -- Rx config %8.8x.\0A\00", align 1
@RxConfig = common dso_local global i64 0, align 8
@IFF_PROMISC = common dso_local global i32 0, align 4
@AcceptBroadcast = common dso_local global i32 0, align 4
@AcceptMulticast = common dso_local global i32 0, align 4
@AcceptMyPhys = common dso_local global i32 0, align 4
@AcceptAllPhys = common dso_local global i32 0, align 4
@multicast_filter_limit = common dso_local global i64 0, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@netdrv_rx_config = common dso_local global i32 0, align 4
@rtl_chip_info = common dso_local global %struct.TYPE_2__* null, align 8
@MAR0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @netdrv_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdrv_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdrv_private*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dev_mc_list*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.netdrv_private* @netdev_priv(%struct.net_device* %11)
  store %struct.netdrv_private* %12, %struct.netdrv_private** %3, align 8
  %13 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %14 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  %16 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* @RxConfig, align 8
  %24 = call i32 @NETDRV_R32(i64 %23)
  %25 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %22, i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IFF_PROMISC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %1
  %33 = load i32, i32* @AcceptBroadcast, align 4
  %34 = load i32, i32* @AcceptMulticast, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @AcceptMyPhys, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @AcceptAllPhys, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 -1, i32* %40, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 -1, i32* %41, align 4
  br label %110

42:                                               ; preds = %1
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @multicast_filter_limit, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IFF_ALLMULTI, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48, %42
  %56 = load i32, i32* @AcceptBroadcast, align 4
  %57 = load i32, i32* @AcceptMulticast, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @AcceptMyPhys, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 -1, i32* %61, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 -1, i32* %62, align 4
  br label %109

63:                                               ; preds = %48
  %64 = load i32, i32* @AcceptBroadcast, align 4
  %65 = load i32, i32* @AcceptMulticast, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @AcceptMyPhys, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %7, align 4
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %70, align 4
  store i32 0, i32* %6, align 4
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 2
  %73 = load %struct.dev_mc_list*, %struct.dev_mc_list** %72, align 8
  store %struct.dev_mc_list* %73, %struct.dev_mc_list** %9, align 8
  br label %74

74:                                               ; preds = %102, %63
  %75 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %76 = icmp ne %struct.dev_mc_list* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.net_device*, %struct.net_device** %2, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br label %84

84:                                               ; preds = %77, %74
  %85 = phi i1 [ false, %74 ], [ %83, %77 ]
  br i1 %85, label %86, label %108

86:                                               ; preds = %84
  %87 = load i32, i32* @ETH_ALEN, align 4
  %88 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %89 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @ether_crc(i32 %87, i32 %90)
  %92 = ashr i32 %91, 26
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = and i32 %93, 31
  %95 = shl i32 1, %94
  %96 = load i32, i32* %10, align 4
  %97 = ashr i32 %96, 5
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %95
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %86
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  %105 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %106 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %105, i32 0, i32 1
  %107 = load %struct.dev_mc_list*, %struct.dev_mc_list** %106, align 8
  store %struct.dev_mc_list* %107, %struct.dev_mc_list** %9, align 8
  br label %74

108:                                              ; preds = %84
  br label %109

109:                                              ; preds = %108, %55
  br label %110

110:                                              ; preds = %109, %32
  %111 = call i32 (...) @in_irq()
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %115 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %114, i32 0, i32 1
  %116 = call i32 @spin_lock_irq(i32* %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i32, i32* @netdrv_rx_config, align 4
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %118, %119
  %121 = load i64, i64* @RxConfig, align 8
  %122 = call i32 @NETDRV_R32(i64 %121)
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtl_chip_info, align 8
  %124 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %125 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %122, %129
  %131 = or i32 %120, %130
  store i32 %131, i32* %8, align 4
  %132 = load i64, i64* @RxConfig, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @NETDRV_W32_F(i64 %132, i32 %133)
  %135 = load i64, i64* @MAR0, align 8
  %136 = add nsw i64 %135, 0
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @NETDRV_W32_F(i64 %136, i32 %138)
  %140 = load i64, i64* @MAR0, align 8
  %141 = add nsw i64 %140, 4
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @NETDRV_W32_F(i64 %141, i32 %143)
  %145 = call i32 (...) @in_irq()
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %117
  %148 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %149 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %148, i32 0, i32 1
  %150 = call i32 @spin_unlock_irq(i32* %149)
  br label %151

151:                                              ; preds = %147, %117
  %152 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.netdrv_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @NETDRV_R32(i64) #1

declare dso_local i32 @ether_crc(i32, i32) #1

declare dso_local i32 @in_irq(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @NETDRV_W32_F(i64, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
