; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_pegasus.c_pegasus_set_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_pegasus.c_pegasus_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@WOL_SUPPORTED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@WakeupControl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @pegasus_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pegasus_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.TYPE_4__* @netdev_priv(%struct.net_device* %8)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %6, align 8
  store i32 4, i32* %7, align 4
  %10 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @WOL_SUPPORTED, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %69

20:                                               ; preds = %2
  %21 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @WAKE_MAGIC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, 128
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @WAKE_PHY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, 64
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %30
  %41 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, 16
  store i32 %51, i32* %49, align 4
  br label %59

52:                                               ; preds = %40
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, -17
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %45
  %60 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = load i32, i32* @WakeupControl, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @set_register(%struct.TYPE_4__* %65, i32 %66, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %59, %17
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_4__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_register(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
