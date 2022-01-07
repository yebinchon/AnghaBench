; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ehea_port = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"enabling port %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ehea_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehea_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %5)
  store %struct.ehea_port* %6, %struct.ehea_port** %4, align 8
  %7 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %8 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %11 = call i64 @netif_msg_ifup(%struct.ehea_port* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ehea_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @ehea_up(%struct.net_device* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %25 = call i32 @port_napi_enable(%struct.ehea_port* %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @netif_tx_start_all_queues(%struct.net_device* %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %30 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %33 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %32, i32 0, i32 0
  %34 = call i32 @msecs_to_jiffies(i32 1000)
  %35 = call i32 @round_jiffies_relative(i32 %34)
  %36 = call i32 @schedule_delayed_work(i32* %33, i32 %35)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @netif_msg_ifup(%struct.ehea_port*) #1

declare dso_local i32 @ehea_info(i8*, i32) #1

declare dso_local i32 @ehea_up(%struct.net_device*) #1

declare dso_local i32 @port_napi_enable(%struct.ehea_port*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
