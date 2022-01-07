; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_copper_link_autoneg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_copper_link_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"e1000_copper_link_autoneg\00", align 1
@AUTONEG_ADVERTISE_SPEED_DEFAULT = common dso_local global i32 0, align 4
@e1000_phy_8201 = common dso_local global i64 0, align 8
@AUTONEG_ADVERTISE_10_100_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Reconfiguring auto-neg advertisement params\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Error Setting up Auto-Negotiation\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Restarting Auto-Neg\0A\00", align 1
@PHY_CTRL = common dso_local global i32 0, align 4
@MII_CR_AUTO_NEG_EN = common dso_local global i32 0, align 4
@MII_CR_RESTART_AUTO_NEG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Error while waiting for autoneg to complete\0A\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_copper_link_autoneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_copper_link_autoneg(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = call i32 @e_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @e1000_phy_8201, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, i32* @AUTONEG_ADVERTISE_10_100_ALL, align 4
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %20
  %33 = call i32 @e_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = call i64 @e1000_phy_setup_autoneg(%struct.e1000_hw* %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = call i32 @e_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i64, i64* %4, align 8
  store i64 %40, i64* %2, align 8
  br label %82

41:                                               ; preds = %32
  %42 = call i32 @e_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = load i32, i32* @PHY_CTRL, align 4
  %45 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %43, i32 %44, i32* %5)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %2, align 8
  br label %82

50:                                               ; preds = %41
  %51 = load i32, i32* @MII_CR_AUTO_NEG_EN, align 4
  %52 = load i32, i32* @MII_CR_RESTART_AUTO_NEG, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = load i32, i32* @PHY_CTRL, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %56, i32 %57, i32 %58)
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i64, i64* %4, align 8
  store i64 %63, i64* %2, align 8
  br label %82

64:                                               ; preds = %50
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = call i64 @e1000_wait_autoneg(%struct.e1000_hw* %70)
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %4, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = call i32 @e_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i64, i64* %4, align 8
  store i64 %76, i64* %2, align 8
  br label %82

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %64
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  %81 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %81, i64* %2, align 8
  br label %82

82:                                               ; preds = %78, %74, %62, %48, %38
  %83 = load i64, i64* %2, align 8
  ret i64 %83
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_phy_setup_autoneg(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_wait_autoneg(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
