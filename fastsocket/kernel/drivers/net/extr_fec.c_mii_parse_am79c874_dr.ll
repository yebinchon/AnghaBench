; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_mii_parse_am79c874_dr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_mii_parse_am79c874_dr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32 }

@PHY_STAT_SPMASK = common dso_local global i32 0, align 4
@PHY_STAT_ANC = common dso_local global i32 0, align 4
@PHY_STAT_100FDX = common dso_local global i32 0, align 4
@PHY_STAT_100HDX = common dso_local global i32 0, align 4
@PHY_STAT_10FDX = common dso_local global i32 0, align 4
@PHY_STAT_10HDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.net_device*)* @mii_parse_am79c874_dr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mii_parse_am79c874_dr(i32 %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fec_enet_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %8)
  store %struct.fec_enet_private* %9, %struct.fec_enet_private** %5, align 8
  %10 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %11 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %10, i32 0, i32 0
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load volatile i32, i32* %12, align 4
  %14 = load volatile i32, i32* @PHY_STAT_SPMASK, align 4
  %15 = load volatile i32, i32* @PHY_STAT_ANC, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 128
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load volatile i32, i32* @PHY_STAT_ANC, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 1024
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 2048
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @PHY_STAT_100FDX, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @PHY_STAT_100HDX, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %54

42:                                               ; preds = %26
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 2048
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @PHY_STAT_10FDX, align 4
  br label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @PHY_STAT_10HDX, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %50, %38
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %6, align 8
  store volatile i32 %55, i32* %56, align 4
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
