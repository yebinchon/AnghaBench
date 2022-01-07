; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.be_adapter = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BEACON_STATE_ENABLED = common dso_local global i32 0, align 4
@BEACON_STATE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @be_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.be_adapter* %8, %struct.be_adapter** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %43 [
    i32 131, label %10
    i32 128, label %20
    i32 129, label %27
    i32 130, label %34
  ]

10:                                               ; preds = %2
  %11 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %12 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %15, i32 0, i32 0
  %17 = call i32 @be_cmd_get_beacon_state(%struct.be_adapter* %11, i32 %14, i32* %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %2
  %21 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %22 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BEACON_STATE_ENABLED, align 4
  %26 = call i32 @be_cmd_set_beacon_state(%struct.be_adapter* %21, i32 %24, i32 0, i32 0, i32 %25)
  br label %43

27:                                               ; preds = %2
  %28 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %29 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BEACON_STATE_DISABLED, align 4
  %33 = call i32 @be_cmd_set_beacon_state(%struct.be_adapter* %28, i32 %31, i32 0, i32 0, i32 %32)
  br label %43

34:                                               ; preds = %2
  %35 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %36 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %40 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be_cmd_set_beacon_state(%struct.be_adapter* %35, i32 %38, i32 0, i32 0, i32 %41)
  br label %43

43:                                               ; preds = %34, %2, %27, %20
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %10
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @be_cmd_get_beacon_state(%struct.be_adapter*, i32, i32*) #1

declare dso_local i32 @be_cmd_set_beacon_state(%struct.be_adapter*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
