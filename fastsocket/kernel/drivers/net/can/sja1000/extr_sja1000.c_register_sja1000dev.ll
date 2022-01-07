; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_register_sja1000dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_register_sja1000dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@sja1000_netdev_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_sja1000dev(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %4 = load %struct.net_device*, %struct.net_device** %3, align 8
  %5 = call i32 @sja1000_probe_chip(%struct.net_device* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %24

10:                                               ; preds = %1
  %11 = load i32, i32* @IFF_ECHO, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  store i32* @sja1000_netdev_ops, i32** %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @set_reset_mode(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @chipset_init(%struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @register_candev(%struct.net_device* %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %10, %7
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @sja1000_probe_chip(%struct.net_device*) #1

declare dso_local i32 @set_reset_mode(%struct.net_device*) #1

declare dso_local i32 @chipset_init(%struct.net_device*) #1

declare dso_local i32 @register_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
