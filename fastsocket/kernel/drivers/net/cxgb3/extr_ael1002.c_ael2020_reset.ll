; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_ael1002.c_ael2020_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_ael1002.c_ael2020_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i64, i32 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_CTRL = common dso_local global i32 0, align 4
@edc_none = common dso_local global i32 0, align 4
@ael2020_reset_regs = common dso_local global i32 0, align 4
@phy_modtype_twinax = common dso_local global i32 0, align 4
@phy_modtype_twinax_long = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @ael2020_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2020_reset(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cphy*, %struct.cphy** %4, align 8
  %9 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %10 = load i32, i32* @MDIO_PMA_LASI_CTRL, align 4
  %11 = call i32 @t3_mdio_read(%struct.cphy* %8, i32 %9, i32 %10, i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %76

16:                                               ; preds = %2
  %17 = load %struct.cphy*, %struct.cphy** %4, align 8
  %18 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %19 = call i32 @t3_phy_reset(%struct.cphy* %17, i32 %18, i32 125)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %76

24:                                               ; preds = %16
  %25 = call i32 @msleep(i32 100)
  %26 = load i32, i32* @edc_none, align 4
  %27 = load %struct.cphy*, %struct.cphy** %4, align 8
  %28 = getelementptr inbounds %struct.cphy, %struct.cphy* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.cphy*, %struct.cphy** %4, align 8
  %30 = load i32, i32* @ael2020_reset_regs, align 4
  %31 = call i32 @set_phy_regs(%struct.cphy* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %76

36:                                               ; preds = %24
  %37 = load %struct.cphy*, %struct.cphy** %4, align 8
  %38 = call i32 @ael2020_get_module_type(%struct.cphy* %37, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %76

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.cphy*, %struct.cphy** %4, align 8
  %47 = getelementptr inbounds %struct.cphy, %struct.cphy* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @phy_modtype_twinax, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @phy_modtype_twinax_long, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51, %43
  %56 = load %struct.cphy*, %struct.cphy** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @ael2020_setup_twinax_edc(%struct.cphy* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %62

59:                                               ; preds = %51
  %60 = load %struct.cphy*, %struct.cphy** %4, align 8
  %61 = call i32 @ael2020_setup_sr_edc(%struct.cphy* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %76

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.cphy*, %struct.cphy** %4, align 8
  %73 = call i32 @ael2005_intr_enable(%struct.cphy* %72)
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %65, %41, %34, %22, %14
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @t3_mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @t3_phy_reset(%struct.cphy*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @set_phy_regs(%struct.cphy*, i32) #1

declare dso_local i32 @ael2020_get_module_type(%struct.cphy*, i32) #1

declare dso_local i32 @ael2020_setup_twinax_edc(%struct.cphy*, i32) #1

declare dso_local i32 @ael2020_setup_sr_edc(%struct.cphy*) #1

declare dso_local i32 @ael2005_intr_enable(%struct.cphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
