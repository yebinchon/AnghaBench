; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_phy.c_mcdi_to_ethtool_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_phy.c_mcdi_to_ethtool_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUPPORTED_Backplane = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_1000FDX_LBN = common dso_local global i32 0, align 4
@SUPPORTED_1000baseKX_Full = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_10000FDX_LBN = common dso_local global i32 0, align 4
@SUPPORTED_10000baseKX4_Full = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_10HDX_LBN = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_10FDX_LBN = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_100HDX_LBN = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_100FDX_LBN = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_1000HDX_LBN = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_PAUSE_LBN = common dso_local global i32 0, align 4
@SUPPORTED_Pause = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_ASYM_LBN = common dso_local global i32 0, align 4
@SUPPORTED_Asym_Pause = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_AN_LBN = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mcdi_to_ethtool_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcdi_to_ethtool_cap(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %109 [
    i32 130, label %7
    i32 128, label %31
    i32 129, label %31
    i32 131, label %35
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @SUPPORTED_Backplane, align 4
  %9 = load i32, i32* %5, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MC_CMD_PHY_CAP_1000FDX_LBN, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = load i32, i32* @SUPPORTED_1000baseKX_Full, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %7
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MC_CMD_PHY_CAP_10000FDX_LBN, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @SUPPORTED_10000baseKX4_Full, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %20
  br label %109

31:                                               ; preds = %2, %2
  %32 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %109

35:                                               ; preds = %2
  %36 = load i32, i32* @SUPPORTED_TP, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MC_CMD_PHY_CAP_10HDX_LBN, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %35
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @MC_CMD_PHY_CAP_10FDX_LBN, align 4
  %51 = shl i32 1, %50
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @MC_CMD_PHY_CAP_100HDX_LBN, align 4
  %61 = shl i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %58
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @MC_CMD_PHY_CAP_100FDX_LBN, align 4
  %71 = shl i32 1, %70
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %68
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @MC_CMD_PHY_CAP_1000HDX_LBN, align 4
  %81 = shl i32 1, %80
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %78
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @MC_CMD_PHY_CAP_1000FDX_LBN, align 4
  %91 = shl i32 1, %90
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %88
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @MC_CMD_PHY_CAP_10000FDX_LBN, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %104, %98
  br label %109

109:                                              ; preds = %2, %108, %31, %30
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @MC_CMD_PHY_CAP_PAUSE_LBN, align 4
  %112 = shl i32 1, %111
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i32, i32* @SUPPORTED_Pause, align 4
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %115, %109
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @MC_CMD_PHY_CAP_ASYM_LBN, align 4
  %122 = shl i32 1, %121
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load i32, i32* @SUPPORTED_Asym_Pause, align 4
  %127 = load i32, i32* %5, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %125, %119
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @MC_CMD_PHY_CAP_AN_LBN, align 4
  %132 = shl i32 1, %131
  %133 = and i32 %130, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %137 = load i32, i32* %5, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %135, %129
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
