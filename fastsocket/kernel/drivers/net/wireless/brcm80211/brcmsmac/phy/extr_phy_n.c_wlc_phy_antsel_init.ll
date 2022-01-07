; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_antsel_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_antsel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { %struct.TYPE_13__*, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@NPHY_TBL_ID_ANTSWCTRLLUT = common dso_local global i32 0, align 4
@maccontrol = common dso_local global i32 0, align 4
@MCTL_GPOUT_SEL_MASK = common dso_local global i32 0, align 4
@psm_gpio_oe = common dso_local global i32 0, align 4
@psm_gpio_out = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_antsel_init(%struct.brcms_phy_pub* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy_pub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %13 = bitcast %struct.brcms_phy_pub* %12 to %struct.brcms_phy*
  store %struct.brcms_phy* %13, %struct.brcms_phy** %5, align 8
  store i32 64512, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %15 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @NREV_GE(i32 %17, i32 7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %129

21:                                               ; preds = %2
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @NREV_GE(i32 %25, i32 3)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %71

28:                                               ; preds = %21
  store i32 529, i32* %8, align 4
  store i32 546, i32* %9, align 4
  store i32 324, i32* %10, align 4
  store i32 392, i32* %11, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %129

32:                                               ; preds = %28
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %34 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %40 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %41 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %39, i32 %40, i32 1, i32 2, i32 16, i32* %8)
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %43 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %44 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %42, i32 %43, i32 1, i32 3, i32 16, i32* %9)
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %46 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %47 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %45, i32 %46, i32 1, i32 8, i32 16, i32* %10)
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %49 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %50 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %48, i32 %49, i32 1, i32 12, i32 16, i32* %11)
  br label %51

51:                                               ; preds = %38, %32
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %53 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %59 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %60 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %58, i32 %59, i32 1, i32 18, i32 16, i32* %8)
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %62 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %63 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %61, i32 %62, i32 1, i32 19, i32 16, i32* %9)
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %65 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %66 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %64, i32 %65, i32 1, i32 24, i32 16, i32* %10)
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %68 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %69 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %67, i32 %68, i32 1, i32 28, i32 16, i32* %11)
  br label %70

70:                                               ; preds = %57, %51
  br label %129

71:                                               ; preds = %21
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %73 = call i32 @write_phy_reg(%struct.brcms_phy* %72, i32 200, i32 0)
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %75 = call i32 @write_phy_reg(%struct.brcms_phy* %74, i32 201, i32 0)
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %77 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @bcma_chipco_gpio_control(i32* %81, i32 %82, i32 %83)
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %86 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %85, i32 0, i32 0
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = load i32, i32* @maccontrol, align 4
  %89 = call i32 @D11REGOFFS(i32 %88)
  %90 = call i32 @bcma_read32(%struct.TYPE_13__* %87, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* @MCTL_GPOUT_SEL_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %7, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %96 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %95, i32 0, i32 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = load i32, i32* @maccontrol, align 4
  %99 = call i32 @D11REGOFFS(i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @bcma_write32(%struct.TYPE_13__* %97, i32 %99, i32 %100)
  %102 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %103 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %102, i32 0, i32 0
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = load i32, i32* @psm_gpio_oe, align 4
  %106 = call i32 @D11REGOFFS(i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @bcma_set16(%struct.TYPE_13__* %104, i32 %106, i32 %107)
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %110 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %109, i32 0, i32 0
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = load i32, i32* @psm_gpio_out, align 4
  %113 = call i32 @D11REGOFFS(i32 %112)
  %114 = load i32, i32* %6, align 4
  %115 = xor i32 %114, -1
  %116 = call i32 @bcma_mask16(%struct.TYPE_13__* %111, i32 %113, i32 %115)
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %71
  %120 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %121 = call i32 @write_phy_reg(%struct.brcms_phy* %120, i32 248, i32 728)
  %122 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %123 = call i32 @write_phy_reg(%struct.brcms_phy* %122, i32 249, i32 769)
  %124 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %125 = call i32 @write_phy_reg(%struct.brcms_phy* %124, i32 250, i32 728)
  %126 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %127 = call i32 @write_phy_reg(%struct.brcms_phy* %126, i32 251, i32 769)
  br label %128

128:                                              ; preds = %119, %71
  br label %129

129:                                              ; preds = %20, %31, %128, %70
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @bcma_chipco_gpio_control(i32*, i32, i32) #1

declare dso_local i32 @bcma_read32(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @bcma_write32(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @bcma_set16(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @bcma_mask16(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
