; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_write_phy_reg_gg82563_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_write_phy_reg_gg82563_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4
@GG82563_MIN_ALT_REG = common dso_local global i32 0, align 4
@GG82563_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@GG82563_PHY_PAGE_SELECT_ALT = common dso_local global i32 0, align 4
@GG82563_PAGE_SHIFT = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32)* @e1000_write_phy_reg_gg82563_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_write_phy_reg_gg82563_80003es2lan(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %12 = call i64 @e1000_acquire_phy_80003es2lan(%struct.e1000_hw* %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %4, align 8
  br label %83

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @GG82563_MIN_ALT_REG, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @GG82563_PHY_PAGE_SELECT, align 4
  store i32 %24, i32* %9, align 4
  br label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @GG82563_PHY_PAGE_SELECT_ALT, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @GG82563_PAGE_SHIFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw* %31, i32 %32, i32 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %39 = call i32 @e1000_release_phy_80003es2lan(%struct.e1000_hw* %38)
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %4, align 8
  br label %83

41:                                               ; preds = %27
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %41
  %49 = call i32 @usleep_range(i32 200, i32 400)
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @e1000e_read_phy_reg_mdic(%struct.e1000_hw* %50, i32 %51, i32* %10)
  store i64 %52, i64* %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @GG82563_PAGE_SHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %60 = call i32 @e1000_release_phy_80003es2lan(%struct.e1000_hw* %59)
  %61 = load i64, i64* @E1000_ERR_PHY, align 8
  %62 = sub nsw i64 0, %61
  store i64 %62, i64* %4, align 8
  br label %83

63:                                               ; preds = %48
  %64 = call i32 @usleep_range(i32 200, i32 400)
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %66 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw* %65, i32 %68, i32 %69)
  store i64 %70, i64* %8, align 8
  %71 = call i32 @usleep_range(i32 200, i32 400)
  br label %79

72:                                               ; preds = %41
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %74 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw* %73, i32 %76, i32 %77)
  store i64 %78, i64* %8, align 8
  br label %79

79:                                               ; preds = %72, %63
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %81 = call i32 @e1000_release_phy_80003es2lan(%struct.e1000_hw* %80)
  %82 = load i64, i64* %8, align 8
  store i64 %82, i64* %4, align 8
  br label %83

83:                                               ; preds = %79, %58, %37, %15
  %84 = load i64, i64* %4, align 8
  ret i64 %84
}

declare dso_local i64 @e1000_acquire_phy_80003es2lan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_release_phy_80003es2lan(%struct.e1000_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @e1000e_read_phy_reg_mdic(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
