; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_w90p910_ether_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_w90p910_ether_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.w90p910_ether = type { i32, i32, i32, i32, i32, %struct.platform_device* }
%struct.platform_device = type { i32, i32 }

@w90p910_tx_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"register irq tx failed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@w90p910_rx_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"register irq rx failed\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"%s is OPENED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @w90p910_ether_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w90p910_ether_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.w90p910_ether*, align 8
  %5 = alloca %struct.platform_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.w90p910_ether* @netdev_priv(%struct.net_device* %6)
  store %struct.w90p910_ether* %7, %struct.w90p910_ether** %4, align 8
  %8 = load %struct.w90p910_ether*, %struct.w90p910_ether** %4, align 8
  %9 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %8, i32 0, i32 5
  %10 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  store %struct.platform_device* %10, %struct.platform_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 @w90p910_reset_mac(%struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @w90p910_set_fifo_threshold(%struct.net_device* %13)
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @w90p910_set_curdest(%struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @w90p910_enable_cam(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @w90p910_enable_cam_command(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @w90p910_enable_mac_interrupt(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @w90p910_set_global_maccmd(%struct.net_device* %23)
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @w90p910_enable_rx(%struct.net_device* %25, i32 1)
  %27 = load %struct.w90p910_ether*, %struct.w90p910_ether** %4, align 8
  %28 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.w90p910_ether*, %struct.w90p910_ether** %4, align 8
  %30 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.w90p910_ether*, %struct.w90p910_ether** %4, align 8
  %32 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @w90p910_tx_interrupt, align 4
  %35 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i64 @request_irq(i32 %33, i32 %34, i32 0, i32 %37, %struct.net_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %1
  %42 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %86

47:                                               ; preds = %1
  %48 = load %struct.w90p910_ether*, %struct.w90p910_ether** %4, align 8
  %49 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @w90p910_rx_interrupt, align 4
  %52 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i64 @request_irq(i32 %50, i32 %51, i32 0, i32 %54, %struct.net_device* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %47
  %59 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.w90p910_ether*, %struct.w90p910_ether** %4, align 8
  %63 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = call i32 @free_irq(i32 %64, %struct.net_device* %65)
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %86

69:                                               ; preds = %47
  %70 = load %struct.w90p910_ether*, %struct.w90p910_ether** %4, align 8
  %71 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %70, i32 0, i32 2
  %72 = load i64, i64* @jiffies, align 8
  %73 = call i64 @msecs_to_jiffies(i32 1000)
  %74 = add nsw i64 %72, %73
  %75 = call i32 @mod_timer(i32* %71, i64 %74)
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = call i32 @netif_start_queue(%struct.net_device* %76)
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = call i32 @w90p910_trigger_rx(%struct.net_device* %78)
  %80 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_info(i32* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %69, %58, %41
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.w90p910_ether* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @w90p910_reset_mac(%struct.net_device*) #1

declare dso_local i32 @w90p910_set_fifo_threshold(%struct.net_device*) #1

declare dso_local i32 @w90p910_set_curdest(%struct.net_device*) #1

declare dso_local i32 @w90p910_enable_cam(%struct.net_device*) #1

declare dso_local i32 @w90p910_enable_cam_command(%struct.net_device*) #1

declare dso_local i32 @w90p910_enable_mac_interrupt(%struct.net_device*) #1

declare dso_local i32 @w90p910_set_global_maccmd(%struct.net_device*) #1

declare dso_local i32 @w90p910_enable_rx(%struct.net_device*, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @w90p910_trigger_rx(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
