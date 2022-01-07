; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i8*, i32, i32, i32, i32 }
%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*, i32*, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i32, i32, i32 }

@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@XCVR_EXTERNAL = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i8* null, align 8
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i8* null, align 8
@PORT_DA = common dso_local global i8* null, align 8
@PORT_NONE = common dso_local global i8* null, align 8
@PORT_OTHER = common dso_local global i8* null, align 8
@SPEED_10000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @ixgbe_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.ixgbe_adapter* %12, %struct.ixgbe_adapter** %5, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 0
  store %struct.ixgbe_hw* %14, %struct.ixgbe_hw** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32 (%struct.ixgbe_hw.1*, i32*, i32*)*, i32 (%struct.ixgbe_hw.1*, i32*, i32*)** %18, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %21 = bitcast %struct.ixgbe_hw* %20 to %struct.ixgbe_hw.1*
  %22 = call i32 %19(%struct.ixgbe_hw.1* %21, i32* %7, i32* %9)
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 159
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %28 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %2
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 158
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %38 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %32
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 160
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %48 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %42
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %54 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %98

58:                                               ; preds = %52
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 160
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %67 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %68 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %58
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %73 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, 159
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %80 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %81 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78, %71
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %86 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, 158
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %93 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %94 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %91, %84
  br label %129

98:                                               ; preds = %52
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, 159
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %104 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %105 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %102, %98
  %109 = load i32, i32* %7, align 4
  %110 = and i32 %109, 158
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %114 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %115 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %112, %108
  %119 = load i32, i32* %7, align 4
  %120 = and i32 %119, 160
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %124 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %125 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %118
  br label %129

129:                                              ; preds = %128, %97
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %129
  %133 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %134 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %135 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %139 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %140 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load i32, i32* @AUTONEG_ENABLE, align 4
  %144 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %145 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  br label %150

146:                                              ; preds = %129
  %147 = load i32, i32* @AUTONEG_DISABLE, align 4
  %148 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %149 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %146, %132
  %151 = load i32, i32* @XCVR_EXTERNAL, align 4
  %152 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %153 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 8
  %154 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %155 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  switch i32 %158, label %280 [
    i32 145, label %159
    i32 157, label %159
    i32 156, label %159
    i32 153, label %173
    i32 154, label %187
    i32 149, label %187
    i32 148, label %187
    i32 151, label %187
    i32 152, label %187
    i32 150, label %187
    i32 147, label %187
    i32 143, label %265
    i32 144, label %279
    i32 155, label %279
    i32 146, label %279
  ]

159:                                              ; preds = %150, %150, %150
  %160 = load i32, i32* @SUPPORTED_TP, align 4
  %161 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %162 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  %165 = load i32, i32* @ADVERTISED_TP, align 4
  %166 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %167 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  %170 = load i8*, i8** @PORT_TP, align 8
  %171 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %172 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %171, i32 0, i32 1
  store i8* %170, i8** %172, align 8
  br label %294

173:                                              ; preds = %150
  %174 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %175 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %176 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %180 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %181 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 8
  %184 = load i8*, i8** @PORT_FIBRE, align 8
  %185 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %186 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %185, i32 0, i32 1
  store i8* %184, i8** %186, align 8
  br label %294

187:                                              ; preds = %150, %150, %150, %150, %150, %150, %150
  %188 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %189 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  switch i32 %192, label %250 [
    i32 136, label %193
    i32 135, label %193
    i32 134, label %193
    i32 131, label %207
    i32 133, label %207
    i32 130, label %207
    i32 129, label %207
    i32 138, label %207
    i32 137, label %207
    i32 140, label %207
    i32 139, label %207
    i32 132, label %221
    i32 142, label %235
    i32 141, label %235
    i32 128, label %249
  ]

193:                                              ; preds = %187, %187, %187
  %194 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %195 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %196 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  %199 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %200 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %201 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  %204 = load i8*, i8** @PORT_DA, align 8
  %205 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %206 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %205, i32 0, i32 1
  store i8* %204, i8** %206, align 8
  br label %264

207:                                              ; preds = %187, %187, %187, %187, %187, %187, %187, %187
  %208 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %209 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %210 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  %213 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %214 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %215 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load i8*, i8** @PORT_FIBRE, align 8
  %219 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %220 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %219, i32 0, i32 1
  store i8* %218, i8** %220, align 8
  br label %264

221:                                              ; preds = %187
  %222 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %223 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %224 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 4
  %227 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %228 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %229 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  %232 = load i8*, i8** @PORT_NONE, align 8
  %233 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %234 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %233, i32 0, i32 1
  store i8* %232, i8** %234, align 8
  br label %264

235:                                              ; preds = %187, %187
  %236 = load i32, i32* @SUPPORTED_TP, align 4
  %237 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %238 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* @ADVERTISED_TP, align 4
  %242 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %243 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  %246 = load i8*, i8** @PORT_TP, align 8
  %247 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %248 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %247, i32 0, i32 1
  store i8* %246, i8** %248, align 8
  br label %264

249:                                              ; preds = %187
  br label %250

250:                                              ; preds = %187, %249
  %251 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %252 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %253 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 4
  %256 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %257 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %258 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 8
  %261 = load i8*, i8** @PORT_OTHER, align 8
  %262 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %263 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %262, i32 0, i32 1
  store i8* %261, i8** %263, align 8
  br label %264

264:                                              ; preds = %250, %235, %221, %207, %193
  br label %294

265:                                              ; preds = %150
  %266 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %267 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %268 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 4
  %271 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %272 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %273 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 8
  %276 = load i8*, i8** @PORT_NONE, align 8
  %277 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %278 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %277, i32 0, i32 1
  store i8* %276, i8** %278, align 8
  br label %294

279:                                              ; preds = %150, %150, %150
  br label %280

280:                                              ; preds = %150, %279
  %281 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %282 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %283 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 4
  %286 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %287 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %288 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 8
  %291 = load i8*, i8** @PORT_OTHER, align 8
  %292 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %293 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %292, i32 0, i32 1
  store i8* %291, i8** %293, align 8
  br label %294

294:                                              ; preds = %280, %265, %264, %173, %159
  %295 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %296 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 0
  %299 = load i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)** %298, align 8
  %300 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %301 = bitcast %struct.ixgbe_hw* %300 to %struct.ixgbe_hw.0*
  %302 = call i32 %299(%struct.ixgbe_hw.0* %301, i32* %8, i32* %10, i32 0)
  %303 = load i32, i32* %10, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %324

305:                                              ; preds = %294
  %306 = load i32, i32* %8, align 4
  switch i32 %306, label %319 [
    i32 159, label %307
    i32 158, label %311
    i32 160, label %315
  ]

307:                                              ; preds = %305
  %308 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %309 = load i32, i32* @SPEED_10000, align 4
  %310 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %308, i32 %309)
  br label %320

311:                                              ; preds = %305
  %312 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %313 = load i32, i32* @SPEED_1000, align 4
  %314 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %312, i32 %313)
  br label %320

315:                                              ; preds = %305
  %316 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %317 = load i32, i32* @SPEED_100, align 4
  %318 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %316, i32 %317)
  br label %320

319:                                              ; preds = %305
  br label %320

320:                                              ; preds = %319, %315, %311, %307
  %321 = load i32, i32* @DUPLEX_FULL, align 4
  %322 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %323 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %322, i32 0, i32 0
  store i32 %321, i32* %323, align 8
  br label %329

324:                                              ; preds = %294
  %325 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %326 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %325, i32 -1)
  %327 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %328 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %327, i32 0, i32 0
  store i32 -1, i32* %328, align 8
  br label %329

329:                                              ; preds = %324, %320
  ret i32 0
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
