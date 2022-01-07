; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.b44 = type { i32 }

@B44_MIN_MTU = common dso_local global i32 0, align 4
@B44_MAX_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@B44_FULL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @b44_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.b44*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.b44* @netdev_priv(%struct.net_device* %7)
  store %struct.b44* %8, %struct.b44** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @B44_MIN_MTU, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @B44_MAX_MTU, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %46

19:                                               ; preds = %12
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @netif_running(%struct.net_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %46

27:                                               ; preds = %19
  %28 = load %struct.b44*, %struct.b44** %6, align 8
  %29 = getelementptr inbounds %struct.b44, %struct.b44* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_irq(i32* %29)
  %31 = load %struct.b44*, %struct.b44** %6, align 8
  %32 = call i32 @b44_halt(%struct.b44* %31)
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.b44*, %struct.b44** %6, align 8
  %37 = call i32 @b44_init_rings(%struct.b44* %36)
  %38 = load %struct.b44*, %struct.b44** %6, align 8
  %39 = load i32, i32* @B44_FULL_RESET, align 4
  %40 = call i32 @b44_init_hw(%struct.b44* %38, i32 %39)
  %41 = load %struct.b44*, %struct.b44** %6, align 8
  %42 = getelementptr inbounds %struct.b44, %struct.b44* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_irq(i32* %42)
  %44 = load %struct.b44*, %struct.b44** %6, align 8
  %45 = call i32 @b44_enable_ints(%struct.b44* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %27, %23, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @b44_halt(%struct.b44*) #1

declare dso_local i32 @b44_init_rings(%struct.b44*) #1

declare dso_local i32 @b44_init_hw(%struct.b44*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @b44_enable_ints(%struct.b44*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
