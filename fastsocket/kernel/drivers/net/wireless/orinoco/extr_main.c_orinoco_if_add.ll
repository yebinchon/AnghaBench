; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_main.c_orinoco_if_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_main.c_orinoco_if_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_ops = type { i32 }
%struct.orinoco_private = type { i32, %struct.net_device*, i32 }
%struct.net_device = type { i64, i32, i32, i32, i32, %struct.net_device_ops*, i32*, i32*, i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i32, %struct.wiphy* }
%struct.wiphy = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@orinoco_handler_def = common dso_local global i32 0, align 4
@orinoco_netdev_ops = common dso_local global %struct.net_device_ops zeroinitializer, align 4
@ENCAPS_OVERHEAD = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Registerred interface %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orinoco_if_add(%struct.orinoco_private* %0, i64 %1, i32 %2, %struct.net_device_ops* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.orinoco_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device_ops*, align 8
  %10 = alloca %struct.wiphy*, align 8
  %11 = alloca %struct.wireless_dev*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  store %struct.orinoco_private* %0, %struct.orinoco_private** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.net_device_ops* %3, %struct.net_device_ops** %9, align 8
  %14 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %15 = call %struct.wiphy* @priv_to_wiphy(%struct.orinoco_private* %14)
  store %struct.wiphy* %15, %struct.wiphy** %10, align 8
  %16 = call %struct.net_device* @alloc_etherdev(i32 16)
  store %struct.net_device* %16, %struct.net_device** %12, align 8
  %17 = load %struct.net_device*, %struct.net_device** %12, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %93

22:                                               ; preds = %4
  %23 = load %struct.net_device*, %struct.net_device** %12, align 8
  %24 = call %struct.wireless_dev* @netdev_priv(%struct.net_device* %23)
  store %struct.wireless_dev* %24, %struct.wireless_dev** %11, align 8
  %25 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %27 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %26, i32 0, i32 1
  store %struct.wiphy* %25, %struct.wiphy** %27, align 8
  %28 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %32 = load %struct.net_device*, %struct.net_device** %12, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 9
  store %struct.wireless_dev* %31, %struct.wireless_dev** %33, align 8
  %34 = load i32, i32* @HZ, align 4
  %35 = load %struct.net_device*, %struct.net_device** %12, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %12, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 7
  store i32* @orinoco_handler_def, i32** %38, align 8
  %39 = load %struct.net_device_ops*, %struct.net_device_ops** %9, align 8
  %40 = icmp ne %struct.net_device_ops* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %22
  %42 = load %struct.net_device_ops*, %struct.net_device_ops** %9, align 8
  %43 = load %struct.net_device*, %struct.net_device** %12, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 5
  store %struct.net_device_ops* %42, %struct.net_device_ops** %44, align 8
  br label %48

45:                                               ; preds = %22
  %46 = load %struct.net_device*, %struct.net_device** %12, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 5
  store %struct.net_device_ops* @orinoco_netdev_ops, %struct.net_device_ops** %47, align 8
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* @ENCAPS_OVERHEAD, align 4
  %50 = load %struct.net_device*, %struct.net_device** %12, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.net_device*, %struct.net_device** %12, align 8
  %53 = call i32 @netif_carrier_off(%struct.net_device* %52)
  %54 = load %struct.net_device*, %struct.net_device** %12, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %58 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = call i32 @memcpy(i32 %56, i32 %59, i32 %60)
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.net_device*, %struct.net_device** %12, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.net_device*, %struct.net_device** %12, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.net_device*, %struct.net_device** %12, align 8
  %69 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %70 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @SET_NETDEV_DEV(%struct.net_device* %68, i32 %71)
  %73 = load %struct.net_device*, %struct.net_device** %12, align 8
  %74 = call i32 @register_netdev(%struct.net_device* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %48
  br label %89

78:                                               ; preds = %48
  %79 = load %struct.net_device*, %struct.net_device** %12, align 8
  %80 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %81 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %80, i32 0, i32 1
  store %struct.net_device* %79, %struct.net_device** %81, align 8
  %82 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %83 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.net_device*, %struct.net_device** %12, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_dbg(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %87)
  store i32 0, i32* %5, align 4
  br label %93

89:                                               ; preds = %77
  %90 = load %struct.net_device*, %struct.net_device** %12, align 8
  %91 = call i32 @free_netdev(%struct.net_device* %90)
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %89, %78, %19
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.wiphy* @priv_to_wiphy(%struct.orinoco_private*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.wireless_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
