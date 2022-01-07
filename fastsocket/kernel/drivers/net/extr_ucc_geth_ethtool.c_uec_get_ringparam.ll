; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth_ethtool.c_uec_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth_ethtool.c_uec_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.ucc_geth_private = type { %struct.ucc_geth_info* }
%struct.ucc_geth_info = type { i32*, i32* }

@UCC_GETH_BD_RING_SIZE_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @uec_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uec_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.ucc_geth_private*, align 8
  %6 = alloca %struct.ucc_geth_info*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ucc_geth_private* @netdev_priv(%struct.net_device* %8)
  store %struct.ucc_geth_private* %9, %struct.ucc_geth_private** %5, align 8
  %10 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %5, align 8
  %11 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %10, i32 0, i32 0
  %12 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %11, align 8
  store %struct.ucc_geth_info* %12, %struct.ucc_geth_info** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** @UCC_GETH_BD_RING_SIZE_MAX, align 8
  %14 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %14, i32 0, i32 7
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @UCC_GETH_BD_RING_SIZE_MAX, align 8
  %17 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %17, i32 0, i32 6
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @UCC_GETH_BD_RING_SIZE_MAX, align 8
  %20 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %20, i32 0, i32 5
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @UCC_GETH_BD_RING_SIZE_MAX, align 8
  %23 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %6, align 8
  %26 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %6, align 8
  %35 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %6, align 8
  %44 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %6, align 8
  %53 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  ret void
}

declare dso_local %struct.ucc_geth_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
