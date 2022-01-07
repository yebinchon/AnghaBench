; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_forcedeth.c_nv_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_forcedeth.c_nv_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i64, i64, i32, i8*, i64, i64, i8* }
%struct.fe_priv = type { i64, i32, i32 }

@DESC_VER_1 = common dso_local global i64 0, align 8
@RING_MAX_DESC_VER_1 = common dso_local global i8* null, align 8
@RING_MAX_DESC_VER_2_3 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @nv_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.fe_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.fe_priv* %7, %struct.fe_priv** %5, align 8
  %8 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %9 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DESC_VER_1, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i8*, i8** @RING_MAX_DESC_VER_1, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load i8*, i8** @RING_MAX_DESC_VER_2_3, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i8* [ %14, %13 ], [ %16, %15 ]
  %19 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %19, i32 0, i32 7
  store i8* %18, i8** %20, align 8
  %21 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  %23 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %26 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DESC_VER_1, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i8*, i8** @RING_MAX_DESC_VER_1, align 8
  br label %34

32:                                               ; preds = %17
  %33 = load i8*, i8** @RING_MAX_DESC_VER_2_3, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i8* [ %31, %30 ], [ %33, %32 ]
  %36 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %39 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %48 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  ret void
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
