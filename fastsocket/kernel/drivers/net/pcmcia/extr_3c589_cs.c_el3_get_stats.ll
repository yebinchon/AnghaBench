; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_3c589_cs.c_el3_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_3c589_cs.c_el3_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.el3_private = type { i32, %struct.pcmcia_device* }
%struct.pcmcia_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @el3_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @el3_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.el3_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pcmcia_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.el3_private* @netdev_priv(%struct.net_device* %6)
  store %struct.el3_private* %7, %struct.el3_private** %3, align 8
  %8 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %9 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %8, i32 0, i32 1
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  store %struct.pcmcia_device* %10, %struct.pcmcia_device** %5, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %12 = call i64 @pcmcia_dev_present(%struct.pcmcia_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %16 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %15, i32 0, i32 0
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @update_stats(%struct.net_device* %19)
  %21 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %22 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %21, i32 0, i32 0
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  br label %25

25:                                               ; preds = %14, %1
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  ret %struct.net_device_stats* %27
}

declare dso_local %struct.el3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @pcmcia_dev_present(%struct.pcmcia_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_stats(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
