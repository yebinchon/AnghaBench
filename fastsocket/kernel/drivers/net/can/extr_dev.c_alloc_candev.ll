; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_dev.c_alloc_candev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_dev.c_alloc_candev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_priv = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"can%d\00", align 1
@can_setup = common dso_local global i32 0, align 4
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @alloc_candev(i32 %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.can_priv*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @can_setup, align 4
  %8 = call %struct.net_device* @alloc_netdev(i32 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7)
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = icmp ne %struct.net_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.can_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.can_priv* %14, %struct.can_priv** %5, align 8
  %15 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %16 = load %struct.can_priv*, %struct.can_priv** %5, align 8
  %17 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.can_priv*, %struct.can_priv** %5, align 8
  %19 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %18, i32 0, i32 0
  %20 = call i32 @init_timer(i32* %19)
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %21, %struct.net_device** %2, align 8
  br label %22

22:                                               ; preds = %12, %11
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %23
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #1

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @init_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
