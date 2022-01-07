; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@QLCNIC_GBE = common dso_local global i64 0, align 8
@QLCNIC_NIU_MAX_GBE_PORTS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@QLCNIC_NIU_GB_PAUSE_CTL = common dso_local global i32 0, align 4
@QLCNIC_XGBE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@QLCNIC_NIU_MAX_XG_PORTS = common dso_local global i32 0, align 4
@QLCNIC_NIU_XG_PAUSE_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown board type: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @qlcnic_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.qlcnic_adapter* %10, %struct.qlcnic_adapter** %6, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %17 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %21 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %22 = call i32 @qlcnic_83xx_set_pauseparam(%struct.qlcnic_adapter* %20, %struct.ethtool_pauseparam* %21)
  store i32 %22, i32* %3, align 4
  br label %202

23:                                               ; preds = %2
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @QLCNIC_GBE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %125

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @QLCNIC_NIU_MAX_GBE_PORTS, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %31
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %202

41:                                               ; preds = %34
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @QLCNIC_NIU_GB_MAC_CONFIG_0(i32 %43)
  %45 = call i32 @QLCRD32(%struct.qlcnic_adapter* %42, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @qlcnic_gb_rx_flowctl(i32 %51)
  br label %56

53:                                               ; preds = %41
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @qlcnic_gb_unset_rx_flowctl(i32 %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @QLCNIC_NIU_GB_MAC_CONFIG_0(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @QLCWR32(%struct.qlcnic_adapter* %57, i32 %59, i32 %60)
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @QLCNIC_NIU_GB_MAC_CONFIG_0(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @QLCWR32(%struct.qlcnic_adapter* %62, i32 %64, i32 %65)
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %68 = load i32, i32* @QLCNIC_NIU_GB_PAUSE_CTL, align 4
  %69 = call i32 @QLCRD32(%struct.qlcnic_adapter* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  switch i32 %70, label %108 [
    i32 0, label %71
    i32 1, label %83
    i32 2, label %95
    i32 3, label %107
  ]

71:                                               ; preds = %56
  %72 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @qlcnic_gb_unset_gb0_mask(i32 %77)
  br label %82

79:                                               ; preds = %71
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @qlcnic_gb_set_gb0_mask(i32 %80)
  br label %82

82:                                               ; preds = %79, %76
  br label %120

83:                                               ; preds = %56
  %84 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @qlcnic_gb_unset_gb1_mask(i32 %89)
  br label %94

91:                                               ; preds = %83
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @qlcnic_gb_set_gb1_mask(i32 %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %120

95:                                               ; preds = %56
  %96 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @qlcnic_gb_unset_gb2_mask(i32 %101)
  br label %106

103:                                              ; preds = %95
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @qlcnic_gb_set_gb2_mask(i32 %104)
  br label %106

106:                                              ; preds = %103, %100
  br label %120

107:                                              ; preds = %56
  br label %108

108:                                              ; preds = %56, %107
  %109 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %110 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @qlcnic_gb_unset_gb3_mask(i32 %114)
  br label %119

116:                                              ; preds = %108
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @qlcnic_gb_set_gb3_mask(i32 %117)
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %106, %94, %82
  %121 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %122 = load i32, i32* @QLCNIC_NIU_GB_PAUSE_CTL, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @QLCWR32(%struct.qlcnic_adapter* %121, i32 %122, i32 %123)
  br label %201

125:                                              ; preds = %23
  %126 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %127 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @QLCNIC_XGBE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %191

133:                                              ; preds = %125
  %134 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %135 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %140 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138, %133
  %144 = load i32, i32* @EOPNOTSUPP, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %202

146:                                              ; preds = %138
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @QLCNIC_NIU_MAX_XG_PORTS, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149, %146
  %154 = load i32, i32* @EIO, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %202

156:                                              ; preds = %149
  %157 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %158 = load i32, i32* @QLCNIC_NIU_XG_PAUSE_CTL, align 4
  %159 = call i32 @QLCRD32(%struct.qlcnic_adapter* %157, i32 %158)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %156
  %163 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %164 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @qlcnic_xg_unset_xg0_mask(i32 %168)
  br label %173

170:                                              ; preds = %162
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @qlcnic_xg_set_xg0_mask(i32 %171)
  br label %173

173:                                              ; preds = %170, %167
  br label %186

174:                                              ; preds = %156
  %175 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %176 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @qlcnic_xg_unset_xg1_mask(i32 %180)
  br label %185

182:                                              ; preds = %174
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @qlcnic_xg_set_xg1_mask(i32 %183)
  br label %185

185:                                              ; preds = %182, %179
  br label %186

186:                                              ; preds = %185, %173
  %187 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %188 = load i32, i32* @QLCNIC_NIU_XG_PAUSE_CTL, align 4
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @QLCWR32(%struct.qlcnic_adapter* %187, i32 %188, i32 %189)
  br label %200

191:                                              ; preds = %125
  %192 = load %struct.net_device*, %struct.net_device** %4, align 8
  %193 = getelementptr inbounds %struct.net_device, %struct.net_device* %192, i32 0, i32 0
  %194 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %195 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %194, i32 0, i32 0
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @dev_err(i32* %193, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %198)
  br label %200

200:                                              ; preds = %191, %186
  br label %201

201:                                              ; preds = %200, %120
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %201, %153, %143, %38, %19
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_set_pauseparam(%struct.qlcnic_adapter*, %struct.ethtool_pauseparam*) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @QLCNIC_NIU_GB_MAC_CONFIG_0(i32) #1

declare dso_local i32 @qlcnic_gb_rx_flowctl(i32) #1

declare dso_local i32 @qlcnic_gb_unset_rx_flowctl(i32) #1

declare dso_local i32 @QLCWR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_gb_unset_gb0_mask(i32) #1

declare dso_local i32 @qlcnic_gb_set_gb0_mask(i32) #1

declare dso_local i32 @qlcnic_gb_unset_gb1_mask(i32) #1

declare dso_local i32 @qlcnic_gb_set_gb1_mask(i32) #1

declare dso_local i32 @qlcnic_gb_unset_gb2_mask(i32) #1

declare dso_local i32 @qlcnic_gb_set_gb2_mask(i32) #1

declare dso_local i32 @qlcnic_gb_unset_gb3_mask(i32) #1

declare dso_local i32 @qlcnic_gb_set_gb3_mask(i32) #1

declare dso_local i32 @qlcnic_xg_unset_xg0_mask(i32) #1

declare dso_local i32 @qlcnic_xg_set_xg0_mask(i32) #1

declare dso_local i32 @qlcnic_xg_unset_xg1_mask(i32) #1

declare dso_local i32 @qlcnic_xg_set_xg1_mask(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
