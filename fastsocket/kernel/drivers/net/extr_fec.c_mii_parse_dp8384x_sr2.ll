; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_mii_parse_dp8384x_sr2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_mii_parse_dp8384x_sr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32 }

@PHY_STAT_SPMASK = common dso_local global i32 0, align 4
@PHY_STAT_LINK = common dso_local global i32 0, align 4
@PHY_STAT_ANC = common dso_local global i32 0, align 4
@PHY_STAT_10FDX = common dso_local global i32 0, align 4
@PHY_STAT_10HDX = common dso_local global i32 0, align 4
@PHY_STAT_100FDX = common dso_local global i32 0, align 4
@PHY_STAT_100HDX = common dso_local global i32 0, align 4
@PHY_STAT_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.net_device*)* @mii_parse_dp8384x_sr2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mii_parse_dp8384x_sr2(i32 %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fec_enet_private*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fec_enet_private* %8, %struct.fec_enet_private** %5, align 8
  %9 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %10 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %9, i32 0, i32 0
  store i32* %10, i32** %6, align 8
  %11 = load volatile i32, i32* @PHY_STAT_SPMASK, align 4
  %12 = load volatile i32, i32* @PHY_STAT_LINK, align 4
  %13 = or i32 %11, %12
  %14 = load volatile i32, i32* @PHY_STAT_ANC, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32*, i32** %6, align 8
  %18 = load volatile i32, i32* %17, align 4
  %19 = and i32 %18, %16
  store volatile i32 %19, i32* %17, align 4
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %25 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load volatile i32, i32* @PHY_STAT_LINK, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load volatile i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store volatile i32 %29, i32* %27, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %32 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 16
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load volatile i32, i32* @PHY_STAT_ANC, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load volatile i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store volatile i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %33
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load volatile i32, i32* @PHY_STAT_10FDX, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load volatile i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store volatile i32 %54, i32* %52, align 4
  br label %60

55:                                               ; preds = %46
  %56 = load volatile i32, i32* @PHY_STAT_10HDX, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load volatile i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store volatile i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %50
  br label %76

61:                                               ; preds = %42
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load volatile i32, i32* @PHY_STAT_100FDX, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load volatile i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store volatile i32 %69, i32* %67, align 4
  br label %75

70:                                               ; preds = %61
  %71 = load volatile i32, i32* @PHY_STAT_100HDX, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load volatile i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store volatile i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %75, %60
  %77 = load i32, i32* %3, align 4
  %78 = and i32 %77, 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load volatile i32, i32* @PHY_STAT_FAULT, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = load volatile i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store volatile i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %80, %76
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
