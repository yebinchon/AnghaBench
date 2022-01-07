; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pcnet32.c_pcnet32_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pcnet32.c_pcnet32_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32 }
%struct.pcnet32_private = type { i32, i32, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @pcnet32_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet32_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.pcnet32_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %8)
  store %struct.pcnet32_private* %9, %struct.pcnet32_private** %5, align 8
  %10 = load i32, i32* @EOPNOTSUPP, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %13 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %18 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %17, i32 0, i32 0
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %22 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %21, i32 0, i32 1
  %23 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %24 = call i32 @mii_ethtool_gset(i32* %22, %struct.ethtool_cmd* %23)
  %25 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %26 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %16, %2
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mii_ethtool_gset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
