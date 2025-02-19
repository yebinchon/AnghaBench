; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_mii_queue_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_mii_queue_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32 }

@mii_display_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.net_device*)* @mii_queue_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mii_queue_config(i32 %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fec_enet_private*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %6)
  store %struct.fec_enet_private* %7, %struct.fec_enet_private** %5, align 8
  %8 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %9 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %23

13:                                               ; preds = %2
  %14 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %15 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %17 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %16, i32 0, i32 1
  %18 = load i32, i32* @mii_display_config, align 4
  %19 = call i32 @INIT_WORK(i32* %17, i32 %18)
  %20 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %21 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %20, i32 0, i32 1
  %22 = call i32 @schedule_work(i32* %21)
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
