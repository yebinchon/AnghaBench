; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_mii_parse_lxt971_sr2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_mii_parse_lxt971_sr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32 }

@PHY_STAT_SPMASK = common dso_local global i32 0, align 4
@PHY_STAT_LINK = common dso_local global i32 0, align 4
@PHY_STAT_ANC = common dso_local global i32 0, align 4
@PHY_STAT_100FDX = common dso_local global i32 0, align 4
@PHY_STAT_100HDX = common dso_local global i32 0, align 4
@PHY_STAT_10FDX = common dso_local global i32 0, align 4
@PHY_STAT_10HDX = common dso_local global i32 0, align 4
@PHY_STAT_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.net_device*)* @mii_parse_lxt971_sr2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mii_parse_lxt971_sr2(i32 %0, %struct.net_device* %1) #0 {
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
  %15 = load volatile i32, i32* @PHY_STAT_LINK, align 4
  %16 = or i32 %14, %15
  %17 = load volatile i32, i32* @PHY_STAT_ANC, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %13, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 1024
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %26 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load volatile i32, i32* @PHY_STAT_LINK, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %32 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 128
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load volatile i32, i32* @PHY_STAT_ANC, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, 16384
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 512
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @PHY_STAT_100FDX, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @PHY_STAT_100HDX, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %49
  br label %71

58:                                               ; preds = %41
  %59 = load i32, i32* %3, align 4
  %60 = and i32 %59, 512
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @PHY_STAT_10FDX, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @PHY_STAT_10HDX, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %57
  %72 = load i32, i32* %3, align 4
  %73 = and i32 %72, 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* @PHY_STAT_FAULT, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %7, align 4
  %81 = load i32*, i32** %6, align 8
  store volatile i32 %80, i32* %81, align 4
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
