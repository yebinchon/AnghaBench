; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_hw.c_atl1e_restart_autoneg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_hw.c_atl1e_restart_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_hw = type { i32, i64, i32 }

@MII_ADVERTISE = common dso_local global i32 0, align 4
@athr_l1e = common dso_local global i64 0, align 8
@athr_l2e_revA = common dso_local global i64 0, align 8
@MII_AT001_CR = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@MII_CR_RESET = common dso_local global i32 0, align 4
@MII_CR_AUTO_NEG_EN = common dso_local global i32 0, align 4
@MII_CR_RESTART_AUTO_NEG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1e_restart_autoneg(%struct.atl1e_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1e_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.atl1e_hw* %0, %struct.atl1e_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %6 = load i32, i32* @MII_ADVERTISE, align 4
  %7 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %8 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %5, i32 %6, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %17 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @athr_l1e, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %23 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @athr_l2e_revA, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21, %15
  %28 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %29 = load i32, i32* @MII_AT001_CR, align 4
  %30 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %31 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %28, i32 %29, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %49

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %21
  %40 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %41 = load i32, i32* @MII_BMCR, align 4
  %42 = load i32, i32* @MII_CR_RESET, align 4
  %43 = load i32, i32* @MII_CR_AUTO_NEG_EN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MII_CR_RESTART_AUTO_NEG, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %40, i32 %41, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %39, %36, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @atl1e_write_phy_reg(%struct.atl1e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
