; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvlan.c_macvlan_changelink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvlan.c_macvlan_changelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.macvlan_dev = type { i32 }

@IFLA_MACVLAN_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**)* @macvlan_changelink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_changelink(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.macvlan_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %8)
  store %struct.macvlan_dev* %9, %struct.macvlan_dev** %7, align 8
  %10 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %11 = icmp ne %struct.nlattr** %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %14 = load i64, i64* @IFLA_MACVLAN_MODE, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = icmp ne %struct.nlattr* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %20 = load i64, i64* @IFLA_MACVLAN_MODE, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = call i32 @nla_get_u32(%struct.nlattr* %22)
  %24 = load %struct.macvlan_dev*, %struct.macvlan_dev** %7, align 8
  %25 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %18, %12, %3
  ret i32 0
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
