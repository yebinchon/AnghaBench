; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lib8390.c_ethdev_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lib8390.c_ethdev_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ei_device = type { i32 }

@ei_debug = common dso_local global i32 0, align 4
@version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ethdev_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ethdev_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ei_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i64 @netdev_priv(%struct.net_device* %4)
  %6 = inttoptr i64 %5 to %struct.ei_device*
  store %struct.ei_device* %6, %struct.ei_device** %3, align 8
  %7 = load i32, i32* @ei_debug, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @version, align 4
  %11 = call i32 @printk(i32 %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @ether_setup(%struct.net_device* %13)
  %15 = load %struct.ei_device*, %struct.ei_device** %3, align 8
  %16 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_init(i32* %16)
  ret void
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i32) #1

declare dso_local i32 @ether_setup(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
