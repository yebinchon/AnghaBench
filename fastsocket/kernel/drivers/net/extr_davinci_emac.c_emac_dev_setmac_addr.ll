; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_dev_setmac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_dev_setmac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.emac_priv = type { i32, %struct.TYPE_2__*, %struct.emac_rxch** }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.emac_rxch = type { i32 }
%struct.sockaddr = type { i32 }

@EMAC_DEF_RX_CH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"DaVinci EMAC: emac_dev_setmac_addr %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @emac_dev_setmac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_dev_setmac_addr(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.emac_priv*, align 8
  %7 = alloca %struct.emac_rxch*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.emac_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.emac_priv* %11, %struct.emac_priv** %6, align 8
  %12 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %13 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %12, i32 0, i32 2
  %14 = load %struct.emac_rxch**, %struct.emac_rxch*** %13, align 8
  %15 = load i64, i64* @EMAC_DEF_RX_CH, align 8
  %16 = getelementptr inbounds %struct.emac_rxch*, %struct.emac_rxch** %14, i64 %15
  %17 = load %struct.emac_rxch*, %struct.emac_rxch** %16, align 8
  store %struct.emac_rxch* %17, %struct.emac_rxch** %7, align 8
  %18 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %19 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %8, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.sockaddr*
  store %struct.sockaddr* %23, %struct.sockaddr** %9, align 8
  %24 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @is_valid_ether_addr(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %84

32:                                               ; preds = %2
  %33 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %34 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i32 %35, i32 %38, i32 %41)
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %47 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32 %45, i32 %48, i32 %51)
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = call i64 @netif_running(%struct.net_device* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %32
  %57 = load %struct.emac_rxch*, %struct.emac_rxch** %7, align 8
  %58 = getelementptr inbounds %struct.emac_rxch, %struct.emac_rxch* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %61 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(i32 %59, i32 %62, i32 %65)
  %67 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %68 = load i64, i64* @EMAC_DEF_RX_CH, align 8
  %69 = load %struct.emac_rxch*, %struct.emac_rxch** %7, align 8
  %70 = getelementptr inbounds %struct.emac_rxch, %struct.emac_rxch* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @emac_setmac(%struct.emac_priv* %67, i64 %68, i32 %71)
  br label %73

73:                                               ; preds = %56, %32
  %74 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %75 = call i64 @netif_msg_drv(%struct.emac_priv* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load %struct.device*, %struct.device** %8, align 8
  %79 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %80 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_notice(%struct.device* %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %77, %73
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %29
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @emac_setmac(%struct.emac_priv*, i64, i32) #1

declare dso_local i64 @netif_msg_drv(%struct.emac_priv*) #1

declare dso_local i32 @dev_notice(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
