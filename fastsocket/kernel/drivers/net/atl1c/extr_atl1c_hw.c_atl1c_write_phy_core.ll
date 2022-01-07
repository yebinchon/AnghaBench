; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_write_phy_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_write_phy_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i64, i64 }

@MDIO_CTRL_CLK_25_4 = common dso_local global i32 0, align 4
@athr_l2c_b2 = common dso_local global i64 0, align 8
@athr_l1d_2 = common dso_local global i64 0, align 8
@MDIO_CTRL_CLK_25_128 = common dso_local global i32 0, align 4
@MDIO_EXTN_DEVAD = common dso_local global i32 0, align 4
@MDIO_EXTN_REG = common dso_local global i32 0, align 4
@REG_MDIO_EXTN = common dso_local global i32 0, align 4
@MDIO_CTRL_SPRES_PRMBL = common dso_local global i32 0, align 4
@MDIO_CTRL_CLK_SEL = common dso_local global i32 0, align 4
@MDIO_CTRL_DATA = common dso_local global i32 0, align 4
@MDIO_CTRL_START = common dso_local global i32 0, align 4
@MDIO_CTRL_MODE_EXT = common dso_local global i32 0, align 4
@MDIO_CTRL_REG = common dso_local global i32 0, align 4
@REG_MDIO_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1c_write_phy_core(%struct.atl1c_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.atl1c_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @MDIO_CTRL_CLK_25_4, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %16 = call i32 @atl1c_stop_phy_polling(%struct.atl1c_hw* %15)
  %17 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %18 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @athr_l2c_b2, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %24 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @athr_l1d_2, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22, %5
  %29 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %30 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @MDIO_CTRL_CLK_25_128, align 4
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %33, %28, %22
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load i32, i32* @MDIO_EXTN_DEVAD, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @FIELDX(i32 %39, i32 %40)
  %42 = load i32, i32* @MDIO_EXTN_REG, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @FIELDX(i32 %42, i32 %43)
  %45 = or i32 %41, %44
  store i32 %45, i32* %12, align 4
  %46 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %47 = load i32, i32* @REG_MDIO_EXTN, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %46, i32 %47, i32 %48)
  %50 = load i32, i32* @MDIO_CTRL_SPRES_PRMBL, align 4
  %51 = load i32, i32* @MDIO_CTRL_CLK_SEL, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @FIELDX(i32 %51, i32 %52)
  %54 = or i32 %50, %53
  %55 = load i32, i32* @MDIO_CTRL_DATA, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @FIELDX(i32 %55, i32 %56)
  %58 = or i32 %54, %57
  %59 = load i32, i32* @MDIO_CTRL_START, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @MDIO_CTRL_MODE_EXT, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %12, align 4
  br label %79

63:                                               ; preds = %35
  %64 = load i32, i32* @MDIO_CTRL_SPRES_PRMBL, align 4
  %65 = load i32, i32* @MDIO_CTRL_CLK_SEL, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @FIELDX(i32 %65, i32 %66)
  %68 = or i32 %64, %67
  %69 = load i32, i32* @MDIO_CTRL_DATA, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @FIELDX(i32 %69, i32 %70)
  %72 = or i32 %68, %71
  %73 = load i32, i32* @MDIO_CTRL_REG, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @FIELDX(i32 %73, i32 %74)
  %76 = or i32 %72, %75
  %77 = load i32, i32* @MDIO_CTRL_START, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %63, %38
  %80 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %81 = load i32, i32* @REG_MDIO_CTRL, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %80, i32 %81, i32 %82)
  %84 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %85 = call i32 @atl1c_wait_mdio_idle(%struct.atl1c_hw* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  store i32 -1, i32* %6, align 4
  br label %92

88:                                               ; preds = %79
  %89 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @atl1c_start_phy_polling(%struct.atl1c_hw* %89, i32 %90)
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %88, %87
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @atl1c_stop_phy_polling(%struct.atl1c_hw*) #1

declare dso_local i32 @FIELDX(i32, i32) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i32 @atl1c_wait_mdio_idle(%struct.atl1c_hw*) #1

declare dso_local i32 @atl1c_start_phy_polling(%struct.atl1c_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
