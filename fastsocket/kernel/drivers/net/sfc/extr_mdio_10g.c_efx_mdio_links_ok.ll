; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mdio_10g.c_efx_mdio_links_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mdio_10g.c_efx_mdio_links_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, i32, i32 }

@LOOPBACKS_WS = common dso_local global i32 0, align 4
@LOOPBACK_PHYXS = common dso_local global i64 0, align 8
@MDIO_DEVS_PHYXS = common dso_local global i32 0, align 4
@MDIO_DEVS_PCS = common dso_local global i32 0, align 4
@MDIO_DEVS_PMAPMD = common dso_local global i32 0, align 4
@MDIO_DEVS_AN = common dso_local global i32 0, align 4
@LOOPBACK_PCS = common dso_local global i64 0, align 8
@LOOPBACK_PMAPMD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_mdio_links_ok(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %7 = call i64 @LOOPBACK_INTERNAL(%struct.efx_nic* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %79

10:                                               ; preds = %2
  %11 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %12 = call i32 @LOOPBACK_MASK(%struct.efx_nic* %11)
  %13 = load i32, i32* @LOOPBACKS_WS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %79

17:                                               ; preds = %10
  %18 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @efx_phy_mode_disabled(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %79

24:                                               ; preds = %17
  %25 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %26 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LOOPBACK_PHYXS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load i32, i32* @MDIO_DEVS_PHYXS, align 4
  %32 = load i32, i32* @MDIO_DEVS_PCS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MDIO_DEVS_PMAPMD, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MDIO_DEVS_AN, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %71

41:                                               ; preds = %24
  %42 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %43 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LOOPBACK_PCS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i32, i32* @MDIO_DEVS_PCS, align 4
  %49 = load i32, i32* @MDIO_DEVS_PMAPMD, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MDIO_DEVS_AN, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %70

56:                                               ; preds = %41
  %57 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %58 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @LOOPBACK_PMAPMD, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i32, i32* @MDIO_DEVS_PMAPMD, align 4
  %64 = load i32, i32* @MDIO_DEVS_AN, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %62, %56
  br label %70

70:                                               ; preds = %69, %47
  br label %71

71:                                               ; preds = %70, %30
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %76 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %75, i32 0, i32 1
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @mdio45_links_ok(i32* %76, i32 %77)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %23, %16, %9
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @LOOPBACK_INTERNAL(%struct.efx_nic*) #1

declare dso_local i32 @LOOPBACK_MASK(%struct.efx_nic*) #1

declare dso_local i64 @efx_phy_mode_disabled(i32) #1

declare dso_local i32 @mdio45_links_ok(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
