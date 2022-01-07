; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_dev.c_open_candev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_dev.c_open_candev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.can_priv = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"bit-timing not yet defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@can_restart = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_candev(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.can_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.can_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.can_priv* %6, %struct.can_priv** %4, align 8
  %7 = load %struct.can_priv*, %struct.can_priv** %4, align 8
  %8 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %1
  %13 = load %struct.can_priv*, %struct.can_priv** %4, align 8
  %14 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %40

26:                                               ; preds = %12, %1
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @netif_carrier_ok(%struct.net_device* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @netif_carrier_on(%struct.net_device* %31)
  br label %33

33:                                               ; preds = %30, %26
  %34 = load %struct.can_priv*, %struct.can_priv** %4, align 8
  %35 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %34, i32 0, i32 0
  %36 = load i32, i32* @can_restart, align 4
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = ptrtoint %struct.net_device* %37 to i64
  %39 = call i32 @setup_timer(i32* %35, i32 %36, i64 %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %33, %18
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
