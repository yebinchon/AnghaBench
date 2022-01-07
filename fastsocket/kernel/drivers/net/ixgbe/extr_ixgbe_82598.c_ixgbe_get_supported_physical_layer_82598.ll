; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_get_supported_physical_layer_82598.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_get_supported_physical_layer_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.2*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque

@IXGBE_PHYSICAL_LAYER_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_10G_PMA_PMD_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_1G_PMA_PMD_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_10GBT = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_T = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_1000BT = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_T = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_100BTX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_100BASE_TX = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_1G_KX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_KX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_BX = common dso_local global i32 0, align 4
@IXGBE_AUTOC_10G_CX4 = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_CX4 = common dso_local global i32 0, align 4
@IXGBE_AUTOC_10G_KX4 = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_KX4 = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_SUPP = common dso_local global i32 0, align 4
@ixgbe_phy_nl = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_SR = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_LR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_get_supported_physical_layer_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_supported_physical_layer_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %8 = load i32, i32* @IXGBE_PHYSICAL_LAYER_UNKNOWN, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = load i32, i32* @IXGBE_AUTOC, align 4
  %11 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IXGBE_AUTOC_10G_PMA_PMD_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @IXGBE_AUTOC_1G_PMA_PMD_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %21, align 8
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %24 = bitcast %struct.ixgbe_hw* %23 to %struct.ixgbe_hw.2*
  %25 = call i32 %22(%struct.ixgbe_hw.2* %24)
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %68 [
    i32 131, label %30
    i32 132, label %30
  ]

30:                                               ; preds = %1, %1
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %34, align 8
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %37 = bitcast %struct.ixgbe_hw* %36 to %struct.ixgbe_hw.1*
  %38 = load i32, i32* @MDIO_PMA_EXTABLE, align 4
  %39 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %40 = call i32 %35(%struct.ixgbe_hw.1* %37, i32 %38, i32 %39, i32* %7)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @MDIO_PMA_EXTABLE_10GBT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %30
  %46 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_T, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %30
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @MDIO_PMA_EXTABLE_1000BT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_T, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @MDIO_PMA_EXTABLE_100BTX, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @IXGBE_PHYSICAL_LAYER_100BASE_TX, align 4
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %58
  br label %159

68:                                               ; preds = %1
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %72 = and i32 %70, %71
  switch i32 %72, label %117 [
    i32 141, label %73
    i32 140, label %73
    i32 142, label %82
    i32 139, label %98
    i32 138, label %98
  ]

73:                                               ; preds = %69, %69
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @IXGBE_AUTOC_1G_KX, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_KX, align 4
  store i32 %78, i32* %3, align 4
  br label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_BX, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %77
  br label %118

82:                                               ; preds = %69
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @IXGBE_AUTOC_10G_CX4, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_CX4, align 4
  store i32 %87, i32* %3, align 4
  br label %97

88:                                               ; preds = %82
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @IXGBE_AUTOC_10G_KX4, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KX4, align 4
  store i32 %93, i32* %3, align 4
  br label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @IXGBE_PHYSICAL_LAYER_UNKNOWN, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %92
  br label %97

97:                                               ; preds = %96, %86
  br label %118

98:                                               ; preds = %69, %69
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @IXGBE_AUTOC_KX_SUPP, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_KX, align 4
  %105 = load i32, i32* %3, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %103, %98
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @IXGBE_AUTOC_KX4_SUPP, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KX4, align 4
  %114 = load i32, i32* %3, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %107
  br label %118

117:                                              ; preds = %69
  br label %118

118:                                              ; preds = %117, %116, %97, %81
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %120 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ixgbe_phy_nl, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %147

125:                                              ; preds = %118
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %127 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %129, align 8
  %131 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %132 = bitcast %struct.ixgbe_hw* %131 to %struct.ixgbe_hw.0*
  %133 = call i32 %130(%struct.ixgbe_hw.0* %132)
  %134 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %135 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  switch i32 %137, label %144 [
    i32 130, label %138
    i32 128, label %140
    i32 129, label %142
  ]

138:                                              ; preds = %125
  %139 = load i32, i32* @IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU, align 4
  store i32 %139, i32* %3, align 4
  br label %146

140:                                              ; preds = %125
  %141 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_SR, align 4
  store i32 %141, i32* %3, align 4
  br label %146

142:                                              ; preds = %125
  %143 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_LR, align 4
  store i32 %143, i32* %3, align 4
  br label %146

144:                                              ; preds = %125
  %145 = load i32, i32* @IXGBE_PHYSICAL_LAYER_UNKNOWN, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %142, %140, %138
  br label %147

147:                                              ; preds = %146, %118
  %148 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %149 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  switch i32 %150, label %157 [
    i32 134, label %151
    i32 137, label %153
    i32 136, label %153
    i32 133, label %153
    i32 135, label %155
  ]

151:                                              ; preds = %147
  %152 = load i32, i32* @IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU, align 4
  store i32 %152, i32* %3, align 4
  br label %158

153:                                              ; preds = %147, %147, %147
  %154 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_SR, align 4
  store i32 %154, i32* %3, align 4
  br label %158

155:                                              ; preds = %147
  %156 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_LR, align 4
  store i32 %156, i32* %3, align 4
  br label %158

157:                                              ; preds = %147
  br label %158

158:                                              ; preds = %157, %155, %153, %151
  br label %159

159:                                              ; preds = %158, %67
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
