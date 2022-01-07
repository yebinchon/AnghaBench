; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_eee_pull_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_eee_pull_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.ethtool_eee }
%struct.ethtool_eee = type { i32, i32, i32, i32, i8*, i8* }

@TG3_PHYFLG_EEE_CAP = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@TG3_CL45_D7_EEERES_STAT = common dso_local global i32 0, align 4
@TG3_CL45_D7_EEERES_STAT_LP_1000T = common dso_local global i32 0, align 4
@TG3_CL45_D7_EEERES_STAT_LP_100TX = common dso_local global i32 0, align 4
@MDIO_AN_EEE_LPABLE = common dso_local global i32 0, align 4
@MDIO_AN_EEE_ADV = common dso_local global i32 0, align 4
@TG3_CPMU_EEE_MODE = common dso_local global i32 0, align 4
@TG3_CPMU_EEEMD_LPI_IN_TX = common dso_local global i32 0, align 4
@TG3_CPMU_EEE_DBTMR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, %struct.ethtool_eee*)* @tg3_eee_pull_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_eee_pull_config(%struct.tg3* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca %struct.ethtool_eee*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ethtool_eee*, align 8
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %4, align 8
  %7 = load %struct.tg3*, %struct.tg3** %3, align 8
  %8 = getelementptr inbounds %struct.tg3, %struct.tg3* %7, i32 0, i32 1
  store %struct.ethtool_eee* %8, %struct.ethtool_eee** %6, align 8
  %9 = load %struct.tg3*, %struct.tg3** %3, align 8
  %10 = getelementptr inbounds %struct.tg3, %struct.tg3* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TG3_PHYFLG_EEE_CAP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %88

16:                                               ; preds = %2
  %17 = load %struct.ethtool_eee*, %struct.ethtool_eee** %4, align 8
  %18 = icmp ne %struct.ethtool_eee* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load %struct.ethtool_eee*, %struct.ethtool_eee** %4, align 8
  store %struct.ethtool_eee* %20, %struct.ethtool_eee** %6, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = load %struct.tg3*, %struct.tg3** %3, align 8
  %23 = load i32, i32* @MDIO_MMD_AN, align 4
  %24 = load i32, i32* @TG3_CL45_D7_EEERES_STAT, align 4
  %25 = call i64 @tg3_phy_cl45_read(%struct.tg3* %22, i32 %23, i32 %24, i32* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %88

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @TG3_CL45_D7_EEERES_STAT_LP_1000T, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @TG3_CL45_D7_EEERES_STAT_LP_100TX, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %28
  %37 = load %struct.ethtool_eee*, %struct.ethtool_eee** %6, align 8
  %38 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %42

39:                                               ; preds = %32
  %40 = load %struct.ethtool_eee*, %struct.ethtool_eee** %6, align 8
  %41 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.tg3*, %struct.tg3** %3, align 8
  %44 = load i32, i32* @MDIO_MMD_AN, align 4
  %45 = load i32, i32* @MDIO_AN_EEE_LPABLE, align 4
  %46 = call i64 @tg3_phy_cl45_read(%struct.tg3* %43, i32 %44, i32 %45, i32* %5)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %88

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = call i8* @mmd_eee_adv_to_ethtool_adv_t(i32 %50)
  %52 = load %struct.ethtool_eee*, %struct.ethtool_eee** %6, align 8
  %53 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load %struct.tg3*, %struct.tg3** %3, align 8
  %55 = load i32, i32* @MDIO_MMD_AN, align 4
  %56 = load i32, i32* @MDIO_AN_EEE_ADV, align 4
  %57 = call i64 @tg3_phy_cl45_read(%struct.tg3* %54, i32 %55, i32 %56, i32* %5)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %88

60:                                               ; preds = %49
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.ethtool_eee*, %struct.ethtool_eee** %6, align 8
  %67 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i8* @mmd_eee_adv_to_ethtool_adv_t(i32 %68)
  %70 = load %struct.ethtool_eee*, %struct.ethtool_eee** %6, align 8
  %71 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @TG3_CPMU_EEE_MODE, align 4
  %73 = call i32 @tr32(i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @TG3_CPMU_EEEMD_LPI_IN_TX, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load %struct.ethtool_eee*, %struct.ethtool_eee** %6, align 8
  %82 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @TG3_CPMU_EEE_DBTMR1, align 4
  %84 = call i32 @tr32(i32 %83)
  %85 = and i32 %84, 65535
  %86 = load %struct.ethtool_eee*, %struct.ethtool_eee** %6, align 8
  %87 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %60, %59, %48, %27, %15
  ret void
}

declare dso_local i64 @tg3_phy_cl45_read(%struct.tg3*, i32, i32, i32*) #1

declare dso_local i8* @mmd_eee_adv_to_ethtool_adv_t(i32) #1

declare dso_local i32 @tr32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
