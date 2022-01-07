; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_ael1002.c_ael2005_intr_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_ael1002.c_ael2005_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32, i32 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@AEL2005_GPIO_STAT = common dso_local global i32 0, align 4
@AEL2005_MODDET_IRQ = common dso_local global i32 0, align 4
@AEL2005_GPIO_CTRL = common dso_local global i32 0, align 4
@phy_modtype_none = common dso_local global i32 0, align 4
@phy_modtype_twinax = common dso_local global i32 0, align 4
@phy_modtype_twinax_long = common dso_local global i32 0, align 4
@edc_twinax = common dso_local global i32 0, align 4
@edc_sr = common dso_local global i32 0, align 4
@cphy_cause_module_change = common dso_local global i32 0, align 4
@cphy_cause_link_change = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*)* @ael2005_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2005_intr_handler(%struct.cphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.cphy*, %struct.cphy** %3, align 8
  %9 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %10 = load i32, i32* @AEL2005_GPIO_STAT, align 4
  %11 = call i32 @t3_mdio_read(%struct.cphy* %8, i32 %9, i32 %10, i32* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %99

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @AEL2005_MODDET_IRQ, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %80

21:                                               ; preds = %16
  %22 = load %struct.cphy*, %struct.cphy** %3, align 8
  %23 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %24 = load i32, i32* @AEL2005_GPIO_CTRL, align 4
  %25 = call i32 @t3_mdio_write(%struct.cphy* %22, i32 %23, i32 %24, i32 3328)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %99

30:                                               ; preds = %21
  %31 = load %struct.cphy*, %struct.cphy** %3, align 8
  %32 = call i32 @ael2005_get_module_type(%struct.cphy* %31, i32 300)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %99

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.cphy*, %struct.cphy** %3, align 8
  %40 = getelementptr inbounds %struct.cphy, %struct.cphy* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @phy_modtype_none, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.cphy*, %struct.cphy** %3, align 8
  %46 = getelementptr inbounds %struct.cphy, %struct.cphy* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %6, align 4
  br label %61

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @phy_modtype_twinax, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @phy_modtype_twinax_long, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %48
  %57 = load i32, i32* @edc_twinax, align 4
  store i32 %57, i32* %6, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @edc_sr, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %56
  br label %61

61:                                               ; preds = %60, %44
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.cphy*, %struct.cphy** %3, align 8
  %64 = getelementptr inbounds %struct.cphy, %struct.cphy* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.cphy*, %struct.cphy** %3, align 8
  %69 = call i32 @ael2005_reset(%struct.cphy* %68, i32 0)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  br label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @cphy_cause_module_change, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %2, align 4
  br label %99

78:                                               ; preds = %61
  %79 = load i32, i32* @cphy_cause_module_change, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %78, %16
  %81 = load %struct.cphy*, %struct.cphy** %3, align 8
  %82 = call i32 @t3_phy_lasi_intr_handler(%struct.cphy* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %99

87:                                               ; preds = %80
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %5, align 4
  br label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @cphy_cause_link_change, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %85, %76, %35, %28, %14
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @t3_mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @t3_mdio_write(%struct.cphy*, i32, i32, i32) #1

declare dso_local i32 @ael2005_get_module_type(%struct.cphy*, i32) #1

declare dso_local i32 @ael2005_reset(%struct.cphy*, i32) #1

declare dso_local i32 @t3_phy_lasi_intr_handler(%struct.cphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
