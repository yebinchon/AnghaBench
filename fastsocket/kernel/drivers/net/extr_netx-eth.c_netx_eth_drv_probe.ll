; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_netx-eth.c_netx_eth_drv_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_netx-eth.c_netx_eth_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.netx_eth_priv = type { %struct.TYPE_6__*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.netxeth_platform_data = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"%s: could not allocate device.\0A\00", align 1
@CARDNAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to request xc engine\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unable to request PFIFO\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @netx_eth_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netx_eth_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.netx_eth_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netxeth_platform_data*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = call %struct.net_device* @alloc_etherdev(i32 32)
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = icmp ne %struct.net_device* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @CARDNAME, align 4
  %13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  br label %118

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 1
  %20 = call i32 @SET_NETDEV_DEV(%struct.net_device* %17, %struct.TYPE_7__* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @platform_set_drvdata(%struct.platform_device* %21, %struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call %struct.netx_eth_priv* @netdev_priv(%struct.net_device* %24)
  store %struct.netx_eth_priv* %25, %struct.netx_eth_priv** %4, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.netxeth_platform_data*
  store %struct.netxeth_platform_data* %30, %struct.netxeth_platform_data** %6, align 8
  %31 = load %struct.netxeth_platform_data*, %struct.netxeth_platform_data** %6, align 8
  %32 = getelementptr inbounds %struct.netxeth_platform_data, %struct.netxeth_platform_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 1
  %36 = call %struct.TYPE_6__* @request_xc(i32 %33, %struct.TYPE_7__* %35)
  %37 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %38 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %37, i32 0, i32 0
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %38, align 8
  %39 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %40 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %16
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 1
  %46 = call i32 @dev_err(%struct.TYPE_7__* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %113

49:                                               ; preds = %16
  %50 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %51 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %61 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %63 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %68 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %70 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %75 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %77 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %82 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %84 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %83, i32 0, i32 2
  %85 = call i32 @spin_lock_init(i32* %84)
  %86 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %87 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @PFIFO_MASK(i32 %88)
  %90 = call i32 @pfifo_request(i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %49
  %94 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %108

95:                                               ; preds = %49
  %96 = load %struct.net_device*, %struct.net_device** %5, align 8
  %97 = call i32 @netx_eth_enable(%struct.net_device* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %102

101:                                              ; preds = %95
  store i32 0, i32* %2, align 4
  br label %120

102:                                              ; preds = %100
  %103 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %104 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @PFIFO_MASK(i32 %105)
  %107 = call i32 @pfifo_free(i32 %106)
  br label %108

108:                                              ; preds = %102, %93
  %109 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %110 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = call i32 @free_xc(%struct.TYPE_6__* %111)
  br label %113

113:                                              ; preds = %108, %43
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = call i32 @platform_set_drvdata(%struct.platform_device* %114, %struct.net_device* null)
  %116 = load %struct.net_device*, %struct.net_device** %5, align 8
  %117 = call i32 @free_netdev(%struct.net_device* %116)
  br label %118

118:                                              ; preds = %113, %11
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %101
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local %struct.netx_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_6__* @request_xc(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pfifo_request(i32) #1

declare dso_local i32 @PFIFO_MASK(i32) #1

declare dso_local i32 @netx_eth_enable(%struct.net_device*) #1

declare dso_local i32 @pfifo_free(i32) #1

declare dso_local i32 @free_xc(%struct.TYPE_6__*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
