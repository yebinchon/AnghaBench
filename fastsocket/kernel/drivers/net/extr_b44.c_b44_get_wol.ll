; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_get_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i8*, i8* }
%struct.b44 = type { i32 }

@WAKE_MAGIC = common dso_local global i8* null, align 8
@B44_FLAG_WOL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @b44_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.b44*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.b44* @netdev_priv(%struct.net_device* %6)
  store %struct.b44* %7, %struct.b44** %5, align 8
  %8 = load i8*, i8** @WAKE_MAGIC, align 8
  %9 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.b44*, %struct.b44** %5, align 8
  %12 = getelementptr inbounds %struct.b44, %struct.b44* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @B44_FLAG_WOL_ENABLE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i8*, i8** @WAKE_MAGIC, align 8
  %19 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %22, i32 0, i32 1
  store i8* null, i8** %23, align 8
  br label %24

24:                                               ; preds = %21, %17
  %25 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %25, i32 0, i32 0
  %27 = call i32 @memset(i32* %26, i32 0, i32 4)
  ret void
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
