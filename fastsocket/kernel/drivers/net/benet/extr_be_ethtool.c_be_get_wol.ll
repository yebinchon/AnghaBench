; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_get_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32 }
%struct.be_adapter = type { i64 }

@WAKE_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @be_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.be_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.be_adapter* %7, %struct.be_adapter** %5, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %9 = call i64 @be_is_wol_supported(%struct.be_adapter* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load i32, i32* @WAKE_MAGIC, align 4
  %13 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load i32, i32* @WAKE_MAGIC, align 4
  %23 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %11
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %27
  %32 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %32, i32 0, i32 0
  %34 = call i32 @memset(i32* %33, i32 0, i32 4)
  ret void
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @be_is_wol_supported(%struct.be_adapter*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
