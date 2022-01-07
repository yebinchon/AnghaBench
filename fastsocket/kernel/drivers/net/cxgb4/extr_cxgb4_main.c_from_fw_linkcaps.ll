; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_from_fw_linkcaps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_from_fw_linkcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FW_PORT_TYPE_BT_SGMII = common dso_local global i32 0, align 4
@FW_PORT_TYPE_BT_XFI = common dso_local global i32 0, align 4
@FW_PORT_TYPE_BT_XAUI = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@FW_PORT_CAP_SPEED_100M = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@FW_PORT_CAP_SPEED_1G = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@FW_PORT_CAP_SPEED_10G = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@FW_PORT_TYPE_KX4 = common dso_local global i32 0, align 4
@FW_PORT_TYPE_KX = common dso_local global i32 0, align 4
@SUPPORTED_Backplane = common dso_local global i32 0, align 4
@SUPPORTED_1000baseKX_Full = common dso_local global i32 0, align 4
@SUPPORTED_10000baseKX4_Full = common dso_local global i32 0, align 4
@FW_PORT_TYPE_KR = common dso_local global i32 0, align 4
@SUPPORTED_10000baseKR_Full = common dso_local global i32 0, align 4
@FW_PORT_TYPE_BP_AP = common dso_local global i32 0, align 4
@SUPPORTED_10000baseR_FEC = common dso_local global i32 0, align 4
@FW_PORT_TYPE_BP4_AP = common dso_local global i32 0, align 4
@FW_PORT_TYPE_FIBER_XFI = common dso_local global i32 0, align 4
@FW_PORT_TYPE_FIBER_XAUI = common dso_local global i32 0, align 4
@FW_PORT_TYPE_SFP = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@FW_PORT_CAP_ANEG = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @from_fw_linkcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @from_fw_linkcaps(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @FW_PORT_TYPE_BT_SGMII, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @FW_PORT_TYPE_BT_XFI, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @FW_PORT_TYPE_BT_XAUI, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %13, %9, %2
  %18 = load i32, i32* @SUPPORTED_TP, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @FW_PORT_CAP_SPEED_100M, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %17
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @FW_PORT_CAP_SPEED_1G, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @FW_PORT_CAP_SPEED_10G, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %38
  br label %139

48:                                               ; preds = %13
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @FW_PORT_TYPE_KX4, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @FW_PORT_TYPE_KX, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %52, %48
  %57 = load i32, i32* @SUPPORTED_Backplane, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @FW_PORT_CAP_SPEED_1G, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i32, i32* @SUPPORTED_1000baseKX_Full, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %56
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @FW_PORT_CAP_SPEED_10G, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @SUPPORTED_10000baseKX4_Full, align 4
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %68
  br label %138

78:                                               ; preds = %52
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @FW_PORT_TYPE_KR, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* @SUPPORTED_Backplane, align 4
  %84 = load i32, i32* @SUPPORTED_10000baseKR_Full, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %137

88:                                               ; preds = %78
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @FW_PORT_TYPE_BP_AP, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load i32, i32* @SUPPORTED_Backplane, align 4
  %94 = load i32, i32* @SUPPORTED_10000baseR_FEC, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @SUPPORTED_10000baseKR_Full, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @SUPPORTED_1000baseKX_Full, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %5, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %5, align 4
  br label %136

102:                                              ; preds = %88
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @FW_PORT_TYPE_BP4_AP, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load i32, i32* @SUPPORTED_Backplane, align 4
  %108 = load i32, i32* @SUPPORTED_10000baseR_FEC, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @SUPPORTED_10000baseKR_Full, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @SUPPORTED_1000baseKX_Full, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @SUPPORTED_10000baseKX4_Full, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %5, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %5, align 4
  br label %135

118:                                              ; preds = %102
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @FW_PORT_TYPE_FIBER_XFI, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %130, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @FW_PORT_TYPE_FIBER_XAUI, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @FW_PORT_TYPE_SFP, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126, %122, %118
  %131 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %132 = load i32, i32* %5, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %130, %126
  br label %135

135:                                              ; preds = %134, %106
  br label %136

136:                                              ; preds = %135, %92
  br label %137

137:                                              ; preds = %136, %82
  br label %138

138:                                              ; preds = %137, %77
  br label %139

139:                                              ; preds = %138, %47
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @FW_PORT_CAP_ANEG, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %146 = load i32, i32* %5, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %144, %139
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
