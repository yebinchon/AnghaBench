; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_alloc_sja1000dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_alloc_sja1000dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sja1000_priv = type { i8*, %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32, i32* }

@sja1000_bittiming_const = common dso_local global i32 0, align 4
@sja1000_set_bittiming = common dso_local global i32 0, align 4
@sja1000_set_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @alloc_sja1000dev(i32 %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sja1000_priv*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = add i64 32, %7
  %9 = trunc i64 %8 to i32
  %10 = call %struct.net_device* @alloc_candev(i32 %9)
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.sja1000_priv* %16, %struct.sja1000_priv** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %19 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %18, i32 0, i32 2
  store %struct.net_device* %17, %struct.net_device** %19, align 8
  %20 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %21 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32* @sja1000_bittiming_const, i32** %22, align 8
  %23 = load i32, i32* @sja1000_set_bittiming, align 4
  %24 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %25 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @sja1000_set_mode, align 4
  %28 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %29 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %14
  %34 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %35 = bitcast %struct.sja1000_priv* %34 to i8*
  %36 = getelementptr i8, i8* %35, i64 32
  %37 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %38 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %33, %14
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %40, %struct.net_device** %2, align 8
  br label %41

41:                                               ; preds = %39, %13
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %42
}

declare dso_local %struct.net_device* @alloc_candev(i32) #1

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
