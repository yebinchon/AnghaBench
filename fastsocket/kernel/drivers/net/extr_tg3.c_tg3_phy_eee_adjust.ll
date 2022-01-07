; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_eee_adjust.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_eee_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@TG3_PHYFLG_EEE_CAP = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@TG3_CPMU_EEE_CTRL_EXIT_16_5_US = common dso_local global i32 0, align 4
@TG3_CPMU_EEE_CTRL_EXIT_36_US = common dso_local global i32 0, align 4
@TG3_CPMU_EEE_CTRL = common dso_local global i32 0, align 4
@MII_TG3_DSP_TAP26 = common dso_local global i32 0, align 4
@TG3_CPMU_EEE_MODE = common dso_local global i32 0, align 4
@TG3_CPMU_EEEMD_LPI_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32)* @tg3_phy_eee_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_phy_eee_adjust(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tg3*, %struct.tg3** %3, align 8
  %8 = getelementptr inbounds %struct.tg3, %struct.tg3* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @TG3_PHYFLG_EEE_CAP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %100

14:                                               ; preds = %2
  %15 = load %struct.tg3*, %struct.tg3** %3, align 8
  %16 = getelementptr inbounds %struct.tg3, %struct.tg3* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.tg3*, %struct.tg3** %3, align 8
  %18 = getelementptr inbounds %struct.tg3, %struct.tg3* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AUTONEG_ENABLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %73

26:                                               ; preds = %23
  %27 = load %struct.tg3*, %struct.tg3** %3, align 8
  %28 = getelementptr inbounds %struct.tg3, %struct.tg3* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DUPLEX_FULL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %26
  %34 = load %struct.tg3*, %struct.tg3** %3, align 8
  %35 = getelementptr inbounds %struct.tg3, %struct.tg3* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SPEED_100, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %struct.tg3*, %struct.tg3** %3, align 8
  %42 = getelementptr inbounds %struct.tg3, %struct.tg3* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SPEED_1000, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %40, %33
  %48 = load %struct.tg3*, %struct.tg3** %3, align 8
  %49 = getelementptr inbounds %struct.tg3, %struct.tg3* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SPEED_1000, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @TG3_CPMU_EEE_CTRL_EXIT_16_5_US, align 4
  store i32 %55, i32* %6, align 4
  br label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @TG3_CPMU_EEE_CTRL_EXIT_36_US, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = load i32, i32* @TG3_CPMU_EEE_CTRL, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @tw32(i32 %59, i32 %60)
  %62 = load %struct.tg3*, %struct.tg3** %3, align 8
  %63 = call i32 @tg3_eee_pull_config(%struct.tg3* %62, i32* null)
  %64 = load %struct.tg3*, %struct.tg3** %3, align 8
  %65 = getelementptr inbounds %struct.tg3, %struct.tg3* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load %struct.tg3*, %struct.tg3** %3, align 8
  %71 = getelementptr inbounds %struct.tg3, %struct.tg3* %70, i32 0, i32 1
  store i32 2, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %58
  br label %73

73:                                               ; preds = %72, %40, %26, %23, %14
  %74 = load %struct.tg3*, %struct.tg3** %3, align 8
  %75 = getelementptr inbounds %struct.tg3, %struct.tg3* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %100, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load %struct.tg3*, %struct.tg3** %3, align 8
  %83 = call i32 @tg3_phy_toggle_auxctl_smdsp(%struct.tg3* %82, i32 1)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load %struct.tg3*, %struct.tg3** %3, align 8
  %87 = load i32, i32* @MII_TG3_DSP_TAP26, align 4
  %88 = call i32 @tg3_phydsp_write(%struct.tg3* %86, i32 %87, i32 0)
  %89 = load %struct.tg3*, %struct.tg3** %3, align 8
  %90 = call i32 @tg3_phy_toggle_auxctl_smdsp(%struct.tg3* %89, i32 0)
  br label %91

91:                                               ; preds = %85, %81, %78
  %92 = load i32, i32* @TG3_CPMU_EEE_MODE, align 4
  %93 = call i32 @tr32(i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @TG3_CPMU_EEE_MODE, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @TG3_CPMU_EEEMD_LPI_ENABLE, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = call i32 @tw32(i32 %94, i32 %98)
  br label %100

100:                                              ; preds = %13, %91, %73
  ret void
}

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @tg3_eee_pull_config(%struct.tg3*, i32*) #1

declare dso_local i32 @tg3_phy_toggle_auxctl_smdsp(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_phydsp_write(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tr32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
