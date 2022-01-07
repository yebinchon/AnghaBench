; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_get_settings_phyless.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_get_settings_phyless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@PORT_STATUS = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@ADVERTISED_MII = common dso_local global i32 0, align 4
@PORT_SPEED_MASK = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@PORT_MII = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv643xx_eth_private*, %struct.ethtool_cmd*)* @mv643xx_eth_get_settings_phyless to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_get_settings_phyless(%struct.mv643xx_eth_private* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %6 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %7 = load i32, i32* @PORT_STATUS, align 4
  %8 = call i32 @rdlp(%struct.mv643xx_eth_private* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @SUPPORTED_MII, align 4
  %10 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @ADVERTISED_MII, align 4
  %13 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PORT_SPEED_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %30 [
    i32 130, label %18
    i32 129, label %22
    i32 128, label %26
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @SPEED_10, align 4
  %20 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %33

22:                                               ; preds = %2
  %23 = load i32, i32* @SPEED_100, align 4
  %24 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %33

26:                                               ; preds = %2
  %27 = load i32, i32* @SPEED_1000, align 4
  %28 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %33

30:                                               ; preds = %2
  %31 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %26, %22, %18
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @FULL_DUPLEX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @DUPLEX_FULL, align 4
  br label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @DUPLEX_HALF, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @PORT_MII, align 4
  %47 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @XCVR_INTERNAL, align 4
  %52 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @AUTONEG_DISABLE, align 4
  %55 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %58 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %59, i32 0, i32 2
  store i32 1, i32* %60, align 8
  ret i32 0
}

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
